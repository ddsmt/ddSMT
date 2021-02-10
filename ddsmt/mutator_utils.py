#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in AUTHORS file.
#
# ddSMT is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ddSMT is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ddSMT.  If not, see <https://www.gnu.org/licenses/>.

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
