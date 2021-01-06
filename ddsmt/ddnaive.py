import collections
import logging
from multiprocessing import Pool
import sys

from . import checker
from . import options
from . import parser
from . import subst
from . import smtlib
from . import mutators
from . import progress

Mutation = collections.namedtuple('Mutation', ['nodeid', 'name', 'exprs'])


def ddnaive_passes():
    return mutators.collect_mutators(options.args())


class MutationGenerator:
    def __init__(self, skip, mutators):
        self.__node_count = 0
        self.__node_skip = skip
        self.__mutators = mutators

    def __mutate_node(self, linput, ginput):
        """Apply all active mutators to the given node.

        Returns a list of all possible mutations as tuples :code:`(name,
        local, global)` where :code:`local` is a modification of the
        current node and :code:`global` is a modification of the whole
        input and one of those is always :code:`None`.
        """
        for m in self.__mutators:
            try:
                if hasattr(m, 'filter') and not m.filter(linput):
                    continue
                if hasattr(m, 'mutations'):
                    yield from list(
                        map(
                            lambda x: Mutation(
                                self.__node_count, str(m),
                                subst.subs_local(ginput, linput, x)),
                            m.mutations(linput)))
                if hasattr(m, 'global_mutations'):
                    yield from list(
                        map(
                            lambda x: Mutation(
                                self.__node_count, "(global) " + str(m),
                                subst.subs_global(ginput, {linput: x})),
                            m.global_mutations(linput, ginput)))
            except Exception as e:
                print("Exception: {}".format(e))
                pass

    def generate_mutations(self, original, skip):
        """A generator that produces all possible mutations from the given
        original."""
        for node in smtlib.dfs(original):
            self.__node_count += 1
            if skip < self.__node_count:
                for task in self.__mutate_node(node, original):
                    yield original, task


def _check(task):
    return *checker.check_exprs(task[1].exprs), task[1]


def reduce(exprs):
    passes = ddnaive_passes()
    smtlib.collect_information(exprs)

    nchecks = 0
    skip = 0
    fresh_run = True

    while True:
        reduction = False
        cnt = smtlib.node_count(exprs)
        progress.start(cnt)
        progress.update(min(cnt, skip))
        with Pool(options.args().max_threads) as pool:
            mg = MutationGenerator(skip, passes)
            for result in pool.imap(_check, mg.generate_mutations(exprs,
                                                                  skip)):
                nchecks += 1
                success, runtime, task = result
                progress.update(task.nodeid)
                if success:
                    sys.stdout.write('\n')
                    logging.info('Found simplification: {} ({:.2f}s)'.format(
                        task.name, runtime))
                    reduction = True
                    exprs = task.exprs
                    skip = task.nodeid - 1
                    fresh_run = False
                    parser.write_smtlib_to_file(options.args().outfile, exprs)
                    pool.close()
                    break
        pool.join()
        if not reduction:
            sys.stdout.write('\n')
            logging.info('No further simplification found')
            if fresh_run:
                break
            logging.info('Starting over')
            skip = 0
            fresh_run = True

    return exprs, nchecks
