import logging
from multiprocessing import Pool
import sys
import time

from . import checker
from . import options
from . import parser
from .subst import Substitution
from . import mutators
from . import smtlib
from . import nodes


def ddmin_passes():
    return mutators.collect_mutators(options.args())


def _subst(exprs, subset, mutator):

    substs = dict()
    # TODO: if subset size is 1 try all mutations?
    for node in subset:
        mutations = mutator.mutations(node)
        substs[node.id] = mutations[0] if mutations else None

    return nodes.substitute(exprs, substs)


def _worker(task):
    task_id, exprs, subset, mutator = task

    reduced_exprs = _subst(exprs, subset, mutator)
    if checker.check_exprs(reduced_exprs):
        nreduced = smtlib.count_exprs(exprs) - smtlib.count_exprs(
            reduced_exprs)
        return task_id, nreduced, reduced_exprs
    return task_id, 0, []


def _partition(exprs, gran):
    subsets = [exprs[s:s + gran] for s in range(0, len(exprs), gran)]
    return subsets


def _clear_msg(nchars):
    sys.stdout.write('{}\r'.format(' ' * nchars))


def _apply_mutator(mutator, exprs):

    nexprs = smtlib.count_exprs(exprs)
    max_depth = mutator.max_depth() if hasattr(mutator, 'max_depth') else -1
    exprs_filtered = list(smtlib.filter_exprs(exprs, mutator.filter,
                                              max_depth))

    start_time = time.time()
    ntests = 0
    nreduced_total = 0

    msg = ""
    gran = len(exprs_filtered)
    while gran > 0:

        # Partition superset into lists of size gran
        subsets = _partition(exprs_filtered, gran)

        # Note: As soon as one of the processed was able to reduce the input
        # file we recompute the task_list with the updated expressions and same
        # granularity.
        restart = True
        while restart:
            restart = False
            subsets = [x for x in subsets if x]
            if not subsets:
                break
            task_list = [(i, exprs, x, mutator) for i, x in enumerate(subsets)]

            nprocs = min(options.args().max_threads, len(task_list))
            with Pool(nprocs) as pool:

                for result in pool.imap(_worker, task_list):
                    task_id, nreduced, reduced_exprs = result
                    ntests += 1

                    if nreduced:
                        pool.close()
                        exprs = reduced_exprs
                        nreduced_total += nreduced
                        restart = True

                        # Print current working set to file
                        nodes.write_smtlib_to_file(options.args().outfile,
                                                   exprs)

                    # Remove already substituted expressions
                    subsets[task_id] = None

                    if options.args().verbosity >= 2:
                        _clear_msg(len(msg))
                        msg ="[ddSMT INFO] {}: granularity: {}, subset {} of {}, " \
                                "expressions: {}/{}\r".format(
                                        mutator, gran, task_id, len(subsets),
                                        nexprs - nreduced_total, nexprs)
                        sys.stdout.write(msg)

                    if restart:
                        break

        gran = gran // 2

    if options.args().verbosity >= 2:
        _clear_msg(len(msg))
        logging.info("[ddSMT INFO] {}: diff {:+} expressions, {} tests, " \
                "{:.1f}s".format(mutator, -nreduced_total, ntests,
                                 time.time() - start_time))

    return exprs, ntests, nreduced_total


# TODO: move to core mutators
class RemoveCommand:
    def filter(self, node):
        return True

    def mutations(self, node):
        return None

    def max_depth(self):
        return 1

    def __str__(self):
        return "remove command"


def reduce(exprs):

    ntests_total = 0

    passes = [RemoveCommand()]
    #passes.extend(ddmin_passes())

    for mut in passes:
        while True:
            exprs, ntests, nreduced = _apply_mutator(mut, exprs)
            ntests_total += ntests

            if nreduced == 0:
                break

    #for mut in ddmin_passes():
    #    if not hasattr(mut, 'filter'):
    #        continue
    #    if not hasattr(mut, 'mutations'):
    #        continue
    #    exprs, nt = _apply_mutator(mut, exprs)
    #    ntests += nt

    return exprs, ntests_total
