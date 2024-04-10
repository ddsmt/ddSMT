#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2024 by the authors listed in the AUTHORS file
# at https://github.com/ddsmt/ddSMT/blob/master/AUTHORS.
#
# This file is part of ddSMT under the MIT license. See LICENSE for more
# information at https://github.com/ddsmt/ddSMT/blob/master/LICENSE.

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
