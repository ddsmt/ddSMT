import collections
from . import smtlib
from . import nodes

Simplification = collections.namedtuple('Simplification',
                                        ['substs', 'fresh_vars'])


def apply_simp(exprs, simp):
    assert isinstance(simp, Simplification)
    mexprs = nodes.substitute(exprs, simp.substs)
    if mexprs is not exprs and simp.fresh_vars:
        assert isinstance(mexprs, list)
        mexprs = smtlib.introduce_variables(mexprs, simp.fresh_vars)
    return mexprs
