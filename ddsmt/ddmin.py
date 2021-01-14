from multiprocessing import Pool
import logging
import time

from . import checker
from . import mutators
from . import nodes
from . import options
from . import smtlib


def ddmin_passes():
    """Return list of ddmin passes.

    Mutators that apply global_mutations only are disabled since this is
    not supported by ddmin.
    """
    return [
        # Passes applied to top-level nodes (DFS max-depth 1)
        mutators.get_mutators([
            'EraseNode',
            'CheckSatAssuming',
        ]),

        # Passes applied to all nodes
        mutators.get_mutators([
            'Constants',
            'SubstituteChildren',
            #        'TopLevelBinaryReduction',
            'LetElimination',
            'LetSubstitution',
            #        'PushPopRemoval',
            'ArithmeticSimplifyConstant',
            'ArithmeticNegateRelation',
            'ArithmeticSplitNaryRelation',
            'ArithmeticStrengthenRelation',
            'BVConcatToZeroExtend',
            'BVDoubleNegation',
            'BVElimBVComp',
            'BVEvalExtend',
            'BVExtractConstants',
            'BVOneZeroITE',
            'BVReflexiveNand',
            'BVSimplifyConstant',
            'BVTransformToBool',
            #        'BVReduceBW',
            'BVMergeReducedBW',
            'DeMorgan',
            'DoubleNegation',
            'EliminateFalseEquality',
            'EliminateImplications',
            'XORRemoveConstants',
            'XOREliminateBinary',
            'MergeWithChildren',
            'ReplaceByVariable',
            'SortChildren',
            'EliminateDistinct',
            'InlineDefinedFuns',
            'SimplifyLogic',
            'StringSimplifyConstant',
            #        'SimplifyQuotedSymbols',
            #        'SimplifySymbolNames',
        ])
    ]


def _subst(exprs, subset, mutator):
    """Return list of mutated formulas.

    Apply :code:`mutator` to nodes in :code:`subset` and substitute the
    nodes in :code:`exprs`. At granularity 1 try all mutations returned
    by :code:`mutator`, for all other granularities pick the first
    mutation.
    """

    res = []
    # Granularity 1: Try all mutations separately.
    if len(subset) == 1:
        node = subset[0]
        mutations = mutator.mutations(node)
        res.extend(nodes.substitute(exprs, {node.id: x}) for x in mutations)
    # Granularity > 1: Pick first mutation and perform parallel substitution of
    # nodes in `subset`.
    else:
        substs = dict()
        for node in subset:
            mutations = mutator.mutations(node)
            substs[node.id] = mutations[0] if mutations else None
        res.append(nodes.substitute(exprs, substs))

    return res


def _worker(task):
    """Perform mutations on given :code:`subset` and check mutated input.

    A worker process takes a task and performs mutations on the input
    and checks whether the input fails.
    """
    task_id, exprs, subset, mutator = task

    mutated_exprs = _subst(exprs, subset, mutator)

    ntests = 0
    for mexprs in mutated_exprs:
        ntests += 1
        if checker.check_exprs(mexprs):
            nreduced = nodes.count_exprs(exprs) - nodes.count_exprs(mexprs)
            return task_id, nreduced, mexprs, ntests
    return task_id, 0, [], ntests


def _partition(exprs, gran):
    """Partition :code:`exprs` into a list of subsets of size :code:`gran`."""
    return [exprs[s:s + gran] for s in range(0, len(exprs), gran)]


__last_msg = ""


def _print_progress(msg, update=True):
    """Print progress :code:`msg`.

    If :code:`update` is True the previous line will be overwritten.
    """
    global __last_msg

    if options.args().verbosity < 1:
        return

    print(' ' * len(__last_msg), end='\r', flush=True)
    if update:
        print(msg, end='\r', flush=True)
    else:
        logging.info(msg)
    __last_msg = msg


def _check_seq(gran, subsets, exprs, nexprs, mutator, stats):
    """Sequentially check :code:`subsets` and update :code:`stats`."""

    outfile = options.args().outfile

    for i, subset in enumerate(subsets):
        task = (i, exprs, subset, mutator)
        task_id, nreduced, reduced_exprs, ntests = _worker(task)
        stats['tests'] += ntests

        if nreduced:
            stats['tests_success'] += 1
            stats['reduced'] += nreduced
            exprs = reduced_exprs
            nodes.write_smtlib_to_file(outfile, exprs)
            smtlib.collect_information(exprs)

        _print_progress(
            f"[ddSMT INFO] {mutator}: granularity: {gran}, " \
            f"subset {task_id} of {len(subsets)}, " \
            f"expressions: {nexprs - stats['reduced']}/{nexprs}")

    return exprs, gran


def _check_par(gran, subsets, exprs, nexprs, mutator, stats):
    """Perform :code:`subsets` checks in parallel.

    If multiple workers report failed subsets there is currently no good
    solution for merging/combining the resulting input. Instead, we remove
    non-failing subsets from :code:`subsets` and check the remaining
    (failed) subsets on the updated input :code:`exprs`.
    :code:`exprs` gets updated with the first failing input reported by a
    worker.
    """
    outfile = options.args().outfile

    while subsets:
        tasks = [(i, exprs, x, mutator) for i, x in enumerate(subsets)]
        nsuccess = 0
        with Pool(options.args().jobs) as pool:
            for result in pool.imap_unordered(_worker, tasks):
                task_id, nreduced, reduced_exprs, ntests = result
                stats['tests'] += ntests

                if nreduced:
                    if nsuccess == 0:
                        stats['tests_success'] += 1
                        stats['reduced'] += nreduced
                        exprs = reduced_exprs
                        nodes.write_smtlib_to_file(outfile, exprs)
                        smtlib.collect_information(exprs)
                        subsets[task_id] = None
                    nsuccess += 1
                else:
                    subsets[task_id] = None

                _print_progress(
                    f"[ddSMT INFO] {mutator}: granularity: {gran}, " \
                    f"subset {task_id} of {len(subsets)}, " \
                    f"expressions: {nexprs - stats['reduced']}/{nexprs}")

        # Remove empty subsets
        subsets = [x for x in subsets if x]

        # Heuristic: Try to avoid too many checks for lower granularity,
        # instead try to increase granularity again.
        if gran <= 2 and nsuccess > gran:
            gran = gran * 4
            break

    return exprs, gran


def _apply_mutator(mutator, exprs, max_depth=None):
    """Apply :code:`mutator` with strategy ddmin on input :code:`exprs`.

    :code:`max_depth` limits the DFS traversal when filtering nodes in
    :code:`exprs`.

    The general workflow steps are as follows:

    Nodes in :code:`exprs` are filtered based on :code:`mutator`. The
    resulting list of nodes is partitioned into subsets of size
    :code:`gran`, which are then checked via :code:`check_func`.
    """
    start_time = time.time()
    nexprs = nodes.count_exprs(exprs)
    filter_func = getattr(mutator, 'filter', lambda x: True)
    filtered = list(nodes.filter_nodes(exprs, filter_func, max_depth))
    check_func = _check_seq if options.args().jobs == 1 else _check_par

    stats = {'tests': 0, 'tests_success': 0, 'reduced': 0}

    gran = len(filtered)
    while gran > 0:
        subsets = _partition(filtered, gran)
        exprs, gran = check_func(gran, subsets, exprs, nexprs, mutator, stats)
        filtered = list(nodes.filter_nodes(exprs, filter_func, max_depth))
        gran = gran // 2

    _print_progress(f"{mutator}: diff {-stats['reduced']:+} expressions, " \
                    f"{stats['tests']} tests ({stats['tests_success']}), " \
                    f"{time.time() - start_time:.1f}s", False)

    return exprs, stats['tests'], stats['reduced']


def reduce(exprs):
    """Reduce given :code:`exprs` until fixed-point with ddmin strategy."""

    smtlib.collect_information(exprs)

    passes = ddmin_passes()

    ntests_total = 0
    while True:
        nreduced_round = 0

        # Apply top-level passes until fixed-point.
        for mut in passes[0]:
            assert hasattr(mut, 'mutations')
            while True:
                exprs, ntests, nreduced = _apply_mutator(mut, exprs, 1)
                ntests_total += ntests
                nreduced_round += nreduced

                if nreduced == 0:
                    break

        for mut in passes[1]:
            assert hasattr(mut, 'mutations')
            exprs, ntests, nreduced = _apply_mutator(mut, exprs)
            ntests_total += ntests
            nreduced_round += nreduced

        if nreduced_round == 0:
            break

    return exprs, ntests_total
