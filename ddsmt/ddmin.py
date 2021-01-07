from multiprocessing import Pool
import sys
import time

from . import checker
from . import options
from . import parser
from .subst import Substitution
from . import mutators
from . import smtlib


def ddmin_passes():
    return mutators.collect_mutators(options.args())


def _worker(tup):
    exprs, subset, mutator = tup

    subst = Substitution()
    # TODO: if subset size is 1 try all mutations?
    for x in subset:
        mutations = mutator.mutations(x)
        subst.add_local(x, mutations[0] if mutations else None)

    reduced_exprs = checker.check_substitution(exprs, subst)
    nreduced = 0
    if reduced_exprs:
        nreduced = smtlib.count_exprs(exprs) - smtlib.count_exprs(
            reduced_exprs)
    return nreduced, reduced_exprs


def _apply_mutator(pool, mutator, exprs):

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
        subsets = [
            exprs_filtered[s:s + gran]
            for s in range(0, len(exprs_filtered), gran)
        ]

        # Note: As soon as one of the processed was able to reduce the input
        # file we recompute the work_list with the updated expressions and same
        # granularity.
        restart = True
        while restart:
            restart = False
            subsets = [x for x in subsets if x]
            work_list = [(exprs, x, mutator) for x in subsets]
            for i, result in enumerate(pool.imap(_worker, work_list, 1)):
                nreduced, reduced_exprs = result
                ntests += 1

                # Remove already substituted expressions
                subsets[i] = None

                if nreduced:
                    exprs = reduced_exprs
                    exprs_filtered = list(
                        smtlib.filter_exprs(exprs, mutator.filter, max_depth))
                    nreduced_total += nreduced

                    # Print current working set to file
                    parser.write_smtlib_to_file(options.args().outfile, exprs)

                    restart = True
                    break

                if options.args().verbosity >= 2:
                    sys.stdout.write('{}\r'.format(' ' * len(msg)))
                    msg ="[ddSMT INFO] {}: granularity: {}, subset {} of {}, " \
                            "expressions: {}/{}\r".format(
                                    mutator, gran, i, len(subsets),
                                    nexprs - nreduced_total, nexprs)
                    sys.stdout.write(msg)

        gran = gran // 2

    if options.args().verbosity >= 2:
        sys.stdout.write('{}\r'.format(' ' * len(msg)))
        print("[ddSMT INFO] {}: diff {:+} expressions, {} tests, " \
                "{:.1f}s".format(mutator, -nreduced_total, ntests,
                                 time.time() - start_time))

    return exprs, ntests


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

    ntests = 0
    with Pool(options.args().max_threads) as pool:

        exprs, nt = _apply_mutator(pool, RemoveCommand(), exprs)

        for mut in ddmin_passes():
            if not hasattr(mut, 'filter'):
                continue
            if not hasattr(mut, 'mutations'):
                continue
            exprs, nt = _apply_mutator(pool, mut, exprs)
            ntests += nt

    return exprs, ntests
