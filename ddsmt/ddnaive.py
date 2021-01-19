import collections
import logging
import multiprocessing
import pickle
import sys
import time
import traceback

from . import checker
from . import mutators
from . import nodes
from . import options
from . import progress
from . import smtlib


def ddnaive_passes():
    """Returns a list of passes, each pass being a list of mutators.

    The list is ordered so that earlier passes are more promising for a
    quick reduction.
    """
    prelude = [
        (mutators.get_initialized_mutator('TopLevelBinaryReduction',
                                          {'ident': 'assert'}), {
                                              'max_depth': 1
                                          }),
        (mutators.get_mutators(['TopLevelBinaryReduction']), {
            'max_depth': 1
        }),
        mutators.get_mutators([
            'EraseNode',
            'ReplaceByChild',
            'TopLevelBinaryReduction',
            'CheckSatAssuming',
            'LetElimination',
            'LetSubstitution',
            'PushPopRemoval',
        ]),
    ]

    late = [  # Usually only have cosmetic impact
        'SimplifyQuotedSymbols',
        'SimplifySymbolNames',
        'StringSimplifyConstant',
    ]
    main = []
    for _, theory in mutators.get_all_mutators().items():
        for mname in theory[1]:
            if mname not in late:
                main.append(mname)

    return prelude + [
        mutators.get_mutators(main),
        mutators.get_mutators(late + main),
    ]


# nodeid: id of the mutated node in dfs order. Only used for progress indication
# name: name of the mutator
# if we have a global mutation:
#   exprs: None
#   repl: the new input to check
# if we have a local mutation:
#   exprs: the current input
#   repl: the substitution to be checked
# runtime: time needed to check this task
Task = collections.namedtuple(
    'Task', ['nodeid', 'name', 'local', 'exprs', 'repl', 'runtime'])


class Producer:
    """Manages the generation of candidates that shall be checked.

    Performs a walk through the current input and applies the
    :code:`mutators` to every node. Supports skipping the first
    :code:`skip` nodes. As soon as :code:`abort_flag` is triggered,
    stops generation as soon as possible.
    """
    def __init__(self, skip, mutators, abort_flag):
        self.__node_count = 0
        self.__node_skip = skip
        self.__mutators = mutators
        self.__abort = abort_flag

    def __mutate_node(self, linput, ginput, gpickled):
        """Apply all mutators to the given node.

        Returns a list of all possible mutations as :code:`Task`
        objects.
        """
        for m in self.__mutators:
            if self.__abort.is_set():
                break
            try:
                if hasattr(m, 'filter') and not m.filter(linput):
                    continue
                if hasattr(m, 'mutations'):
                    for x in m.mutations(linput):
                        if self.__abort.is_set():
                            break
                        yield Task(self.__node_count, str(m), True, gpickled,
                                   pickle.dumps({linput.id: x}), None)
                if hasattr(m, 'global_mutations'):
                    for x in m.global_mutations(linput, ginput):
                        if self.__abort.is_set():
                            break
                        if isinstance(x, dict):
                            # is a substitution
                            yield Task(self.__node_count, f'(global) {m}',
                                       False, gpickled, pickle.dumps(x), None)
                        else:
                            yield Task(self.__node_count, f'(global) {m}',
                                       False, None, pickle.dumps(x), None)
            except Exception as e:
                logging.info(f'{type(e)} in application of {m}: {e}')
                exc_type, exc_value, exc_traceback = sys.exc_info()
                traceback.print_tb(exc_traceback, limit=10, file=sys.stderr)

    def generate(self, original, params):
        """A generator that produces all possible mutations as :code:`Task`
        from the given original."""
        pickled = pickle.dumps(original)
        for node in nodes.dfs(original, params.get('max_depth', None)):
            self.__node_count += 1
            if self.__node_skip < self.__node_count:
                yield from self.__mutate_node(node, original, pickled)
            if self.__abort.is_set():
                break


class Consumer:
    """Calls the :code:`checker` on individual tasks to figure out whether they
    are valid simplifications.

    Uses the :code:`abort_flag` to stop as soon as a valid
    simplification has been found.
    """
    def __init__(self, abort_flag):
        self.__abort = abort_flag

    def check(self, task):
        abortres = pickle.dumps(
            (False, Task(task.nodeid, task.name, task.local, None, None,
                         None)))
        if self.__abort.is_set():
            return abortres
        try:
            start = time.time()
            if task.local:
                # local
                exprs = nodes.substitute(pickle.loads(task.exprs),
                                         pickle.loads(task.repl))
            else:
                # global
                exprs = pickle.loads(task.repl)
                if isinstance(exprs, dict):
                    original = pickle.loads(task.exprs)
                    if self.__abort.is_set():
                        return abortres
                    exprs = nodes.substitute(original, exprs)
            if self.__abort.is_set():
                return abortres
            res = checker.check_exprs(exprs)
            runtime = time.time() - start
            if self.__abort.is_set():
                return abortres
            if res:
                return pickle.dumps((True,
                                     Task(task.nodeid, task.name, task.local,
                                          exprs, None, runtime)))
            return pickle.dumps((False,
                                 Task(task.nodeid, task.name, task.local, None,
                                      None, runtime)))
        except Exception as e:
            logging.info(f'{type(e)} in check of {task.name}: {e}')
            exc_type, exc_value, exc_traceback = sys.exc_info()
            traceback.print_tb(exc_traceback, limit=10, file=sys.stderr)
        return abortres


class MutatorStats:
    """Gather information about the performance of the individual mutators."""
    def __init__(self):
        self.data = {}
        self.__enabled = logging.getLogger().isEnabledFor(logging.INFO)

    def add(self, success, task, original):
        """Add results from one check."""
        if task.runtime is None or not self.__enabled:
            return
        d = self.data.setdefault(task.name, {
            'tests': 0,
            'success': 0,
            'diff': 0,
            'runtime': 0
        })
        d['tests'] += 1
        if success:
            d['success'] += 1
            d['diff'] += nodes.count_exprs(
                task.exprs) - nodes.count_exprs(original)
        d['runtime'] += task.runtime

    def print(self):
        """Print cumulative results."""
        if self.__enabled:
            for name, data in sorted(self.data.items()):
                logging.info(
                    f'{name}: diff {data["diff"]:+} expressions, {data["tests"]} tests ({data["success"]}), {data["runtime"]:.1f}s'
                )


def reduce(exprs):
    """Reduces the input given in :code:`exprs` as good as possible in a fixed-
    point loop."""
    passes = ddnaive_passes()
    cur_pool = 0

    nchecks = 0
    stats = MutatorStats()

    while cur_pool < len(passes):
        cur_passes = passes[cur_pool]
        params = {}
        if isinstance(cur_passes, tuple):
            cur_passes, params = cur_passes
        cur_pool += 1
        logging.info(f'stage {cur_pool} / {len(passes)}')
        skip = 0
        fresh_run = True
        while True:
            start = time.time()
            smtlib.collect_information(exprs)
            reduction = False
            cnt = nodes.count_nodes(exprs)
            progress.start(cnt)
            progress.update(min(cnt, skip))

            with multiprocessing.Pool(options.args().jobs) as pool:
                # multiprocessing: abort flag is passed to both producer and consumer
                abort_flag = multiprocessing.Manager().Event()
                prod = Producer(skip, cur_passes, abort_flag)
                cons = Consumer(abort_flag)
                for result in pool.imap_unordered(cons.check,
                                                  prod.generate(exprs,
                                                                params)):
                    nchecks += 1
                    success, task = pickle.loads(result)
                    progress.update(task.nodeid)
                    stats.add(success, task, exprs)
                    if success:
                        # trigger abort and close the pool, then process the result
                        abort_flag.set()
                        pool.close()
                        progress.finish()
                        runtime = time.time() - start
                        logging.info(
                            'Found simplification: {} ({:.2f}s)'.format(
                                task.name, runtime))
                        reduction = True
                        exprs = task.exprs
                        skip = task.nodeid - 1
                        fresh_run = False
                        nodes.write_smtlib_to_file(options.args().outfile,
                                                   exprs)
                        # and finally join
                        pool.join()
                        break
            if not reduction:
                sys.stdout.write('\n')
                logging.info('No further simplification found')
                if fresh_run:
                    break
                logging.info('Starting over')
                skip = 0
                fresh_run = True

    stats.print()

    return exprs, nchecks
