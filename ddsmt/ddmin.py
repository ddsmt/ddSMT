from multiprocessing import Pool
import sys

from . import checker
from . import options
from . import parser
from .subst import Substitution
from . import mutators
from . import smtlib


def ddmin_passes():
    return mutators.collect_mutators(options.args())


def _process_substitution(tup):
    exprs, subset, substs = tup

    subst = Substitution()
    for x, y in zip(subset, substs):
        subst.add_local(x, y)

    return checker.check_substitution(exprs, subst)


def _process_substitutions(pool, exprs, superset, superset_substs):
    assert len(superset) == len(superset_substs)

    ntests = 0
    nreduced_total = 0
    nexprs = smtlib.node_count(exprs)

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
            work_list = [(exprs, x, y)
                         for x, y in zip(subsets, subsets_substs)]
            for i, result in enumerate(
                    pool.imap(_process_substitution, work_list, 1)):

                nreduced, reduced_exprs, runtime = result

                ntests += 1

                if nreduced:
                    exprs = reduced_exprs

                    nreduced_total += nreduced

                    # Print current working set to file
                    parser.write_smtlib_to_file(options.args().outfile, exprs)

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

    return exprs, ntests


def reduce(exprs):

    passes = ddmin_passes()

    ntests = 0
    with Pool(options.args().max_threads) as pool:

        for p in passes:
            if not hasattr(p, 'filter'):
                continue
            if not hasattr(p, 'mutations'):
                continue
            exprs_filtered = list(smtlib.filter_exprs(exprs, p.filter))
            exprs_substs = list(
                map(lambda x: None if x == [] else x[0],
                    map(p.mutations, exprs_filtered)))
            exprs, nt = _process_substitutions(pool, exprs, exprs_filtered,
                                               exprs_substs)
            ntests += nt

    return exprs, ntests
