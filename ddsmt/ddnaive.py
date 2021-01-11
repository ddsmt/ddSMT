import collections
import logging
from multiprocessing import Pool
import sys
import time

from . import checker
from . import mutators_arithmetic
from . import mutators_bitvectors
from . import mutators_boolean
from . import mutators_core
from . import mutators_smtlib
from . import mutators_strings
from . import nodes
from . import options
from . import parser
from . import subst
from . import smtlib
from . import mutators
from . import progress

# nodeid: id of the mutated node in dfs order. Only used for progress indication
# name: name of the mutator
# if we have a global mutation:
#   exprs: None
#   repl: the new input to check
# if we have a local mutation:
#   exprs: the current input
#   repl: the substitution to be checked
Task = collections.namedtuple('Task', ['nodeid', 'name', 'exprs', 'repl'])


def ddnaive_passes():
    """Returns a list of passes, each pass being a list of mutators.

    The list is ordered so that earlier passes are more promising for a
    quick reduction.
    """
    return [
        [  # Usually yield strong reduction / need to be done early on
            mutators_core.Constants(),
            mutators_core.EraseNode(),
            mutators_core.SubstituteChildren(),
            mutators_core.TopLevelBinaryReduction(),
            mutators_smtlib.CheckSatAssuming(),
            mutators_smtlib.LetElimination(),
            mutators_smtlib.LetSubstitution(),
            mutators_smtlib.PushPopRemoval(),
        ],
        [  # Regular mutators
            mutators_arithmetic.ArithmeticSimplifyConstant(),
            mutators_arithmetic.ArithmeticNegateRelations(),
            mutators_arithmetic.ArithmeticSplitNaryRelations(),
            mutators_arithmetic.ArithmeticStrengthenRelations(),
            mutators_bitvectors.BVConcatToZeroExtend(),
            mutators_bitvectors.BVDoubleNegation(),
            mutators_bitvectors.BVElimBVComp(),
            mutators_bitvectors.BVEvalExtend(),
            mutators_bitvectors.BVExtractConstants(),
            mutators_bitvectors.BVOneZeroITE(),
            mutators_bitvectors.BVReflexiveNand(),
            mutators_bitvectors.BVSimplifyConstant(),
            mutators_bitvectors.BVTransformToBool(),
            mutators_bitvectors.BVReduceBW(),
            mutators_bitvectors.BVMergeReducedBW(),
            mutators_boolean.DeMorgan(),
            mutators_boolean.DoubleNegation(),
            mutators_boolean.EliminateFalseEquality(),
            mutators_boolean.EliminateImplications(),
            mutators_boolean.XORRemoveConstants(),
            mutators_boolean.XOREliminateBinary(),
            mutators_core.MergeWithChildren(),
            mutators_core.ReplaceByVariable(),
            mutators_core.SortChildren(),
            mutators_smtlib.EliminateDistinct(),
            mutators_smtlib.InlineDefinedFuns(),
            mutators_smtlib.SimplifyLogic(),
            mutators_strings.StringSimplifyConstant(),
        ],
        [  # Usually only have cosmetic impact
            mutators_smtlib.SimplifyQuotedSymbols(),
            mutators_smtlib.SimplifySymbolNames(),
        ]
    ]


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
                            lambda x: Task(self.__node_count, str(m),
                                           ginput, {linput.id: x}),
                            m.mutations(linput)))
                if hasattr(m, 'global_mutations'):
                    yield from list(
                        map(
                            lambda x: Task(self.__node_count, "(global) " +
                                           str(m), None, x),
                            m.global_mutations(linput, ginput)))
            except Exception as e:
                print("Exception: {}".format(e))
                pass

    def generate_mutations(self, original):
        """A generator that produces all possible mutations from the given
        original."""
        for node in nodes.dfs(original):
            self.__node_count += 1
            if self.__node_skip < self.__node_count:
                yield from self.__mutate_node(node, original)


def _check(task):
    try:
        if task.exprs is None:
            # global
            exprs = task.repl
        else:
            # local
            exprs = nodes.substitute(task.exprs, task.repl)
        if checker.check_exprs(exprs):
            return True, Task(task.nodeid, task.name, exprs, None)
        return False, Task(task.nodeid, task.name, None, None)
    except Exception as e:
        logging.info(f'{type(e)} in check: {e}')


def reduce(exprs):
    passes = ddnaive_passes()
    cur_pool = 1
    cur_passes = passes[0]

    nchecks = 0

    while True:
        skip = 0
        fresh_run = True
        while True:
            start = time.time()
            smtlib.collect_information(exprs)
            reduction = False
            cnt = smtlib.count_nodes(exprs)
            progress.start(cnt)
            progress.update(min(cnt, skip))
            with Pool(options.args().max_threads) as pool:
                mg = MutationGenerator(skip, cur_passes)
                for result in pool.imap_unordered(
                        _check, mg.generate_mutations(exprs)):
                    nchecks += 1
                    success, task = result
                    progress.update(task.nodeid)
                    if success:
                        sys.stdout.write('\n')
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

        if cur_pool < len(passes):
            cur_passes.extend(passes[cur_pool])
            cur_pool += 1
            logging.info(
                f'Adding additional mutators (pass {cur_pool} / {len(passes)})'
            )
        else:
            break

    return exprs, nchecks
