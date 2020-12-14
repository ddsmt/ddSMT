from multiprocessing import Pool
import sys
import time

from utils import checker
from utils import iter as iters
from utils import options
from utils.subst import Substitution
from utils import smtlib
from utils import tmpfiles

from utils.mutators import *

def ddmin_passes():
    return [PassDeleteAssert()]


def _process_substitution(tup):
    exprs, subset, substs = tup

    subst = Substitution()
    for x, y in zip(subset, substs):
        subst.add(x, y)

    tmpfile = tmpfiles.get_tmp_filename()
    test_exprs = subst.apply(exprs)
    smtlib.print_exprs(tmpfile, test_exprs)

    nreduced = 0
    runtime = 0
    start = time.time()
    if checker.check(tmpfile):
        runtime = time.time() - start
        nreduced = iters.count_exprs(exprs) - iters.count_exprs(test_exprs)
        exprs = test_exprs

    return exprs, nreduced, runtime


def _process_substitutions(pool, exprs, superset, superset_substs):
    assert len(superset) == len(superset_substs)

    ntests = 0
    nreduced_total = 0
    nexprs = iters.count_exprs(exprs)

    gran = len(superset)
    while gran > 0:

        # Partition superset and superset_substs into lists of size gran
        subsets = [superset[s:s + gran] for s in range(0, len(superset), gran)]
        subsets_substs = [
            superset_substs[s:s + gran] for s in range(0, len(superset), gran)
        ]

        # Note: As soon as one of the processed was able to reduce the input
        # file we recompute the work_list with the updated expressions and same
        # granularity.
        restart = True
        while restart:
            restart = False
            work_list = [(exprs, x, y) for x, y in zip(subsets, subsets_substs)]
            for i, result in enumerate(
                    pool.imap(_process_substitution, work_list, 1)):

                reduced_exprs, nreduced, runtime = result

                ntests += 1

                if nreduced:
                    exprs = reduced_exprs

                    # Print current working set to file
                    smtlib.print_exprs(options.args().outfile, exprs)

                    nreduced_total += nreduced

                    # Remove already substituted expressions
                    subsets.pop(i)
                    subsets_substs.pop(i)

                    restart = True
                    break

                if options.args().verbosity >= 2:
                    sys.stdout.write(
                        "[ddSMT] granularity: {}, subset {} of {}, s-expressions: {}/{}\r"
                        .format(gran, i, len(subsets), nexprs - nreduced_total,
                                nexprs))

        # Update superset and remove already substituted expressions
        superset = [x for subset in subsets for x in subset]
        superset_substs = [x for subset in subsets_substs for x in subset]
        assert len(superset) == len(superset_substs)

        gran = gran // 2

    return exprs, nreduced_total, ntests


def reduce(exprs):

    passes = ddmin_passes()

    nreduced = 0
    ntests = 0 
    with Pool(options.args().nprocs) as pool:

        # Delete commands
        #exprs_filtered = exprs[:]
        #exprs_substs = [None for x in exprs_filtered]
        #exprs, nreduced = _process_substitutions(pool,exprs, exprs_filtered,
        #                                         exprs_substs)
        #nreduced_total += nreduced

        for p in passes:
            exprs_filtered = iters.filter_exprs(exprs, p.filter)
            exprs_substs = list(map(p.subst, exprs_filtered))
            exprs, nr, nt = _process_substitutions(pool, exprs,
                                                     exprs_filtered,
                                                     exprs_substs)
            nreduced += nr
            ntests += nt

    return exprs, nreduced, ntests
