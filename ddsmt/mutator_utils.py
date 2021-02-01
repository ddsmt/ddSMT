import collections
from . import smtlib
from . import nodes

Simplification = collections.namedtuple('Simplification',
                                        ['substs', 'fresh_vars'])


def apply_simp(exprs, simp):
    mexprs = nodes.substitute(exprs, simp.substs)
    if mexprs is exprs:
        return None
    if simp.fresh_vars:
        mexprs = smtlib.introduce_variables(mexprs, simp.fresh_vars)
    return mexprs
