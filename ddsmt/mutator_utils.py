import collections
import copy
from . import smtlib
from . import nodes

Simplification = collections.namedtuple('Simplification',
                                        ['substs', 'fresh_vars'])


def apply_simp(exprs, simp):
    assert isinstance(simp, Simplification)
    mexprs = nodes.substitute(exprs, simp.substs)
    if mexprs is not exprs and simp.fresh_vars:
        assert isinstance(mexprs, list)
        vars = copy.deepcopy(simp.fresh_vars)
        mexprs = smtlib.introduce_variables(mexprs, vars)
    return mexprs
