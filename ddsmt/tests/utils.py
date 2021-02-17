from .. import mutator_utils


def check_mutations(mut, node, expected):
    assert hasattr(mut, 'mutations')

    mutations = list(mut.mutations(node))
    assert len(mutations) == len(expected)

    for res, exp in zip(mutations, expected):
        simp = mutator_utils.apply_simp(node, res)
        if simp != exp:
            return False

    return True


def check_global_mutations(mut, node, exprs, expected):
    assert hasattr(mut, 'global_mutations')

    mutations = list(mut.global_mutations(node, exprs))
    assert len(mutations) == len(expected)

    for res, exp in zip(mutations, expected):
        simp = mutator_utils.apply_simp(exprs, res)
        if simp != exp:
            return False

    return True
