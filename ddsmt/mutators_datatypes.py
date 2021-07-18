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

from .smtlib import *
from .mutator_utils import Simplification


class RemoveConstructor:
    """Remove a single datatype constructor."""
    def filter(self, node):
        return is_operator_app(node, 'declare-datatype') or is_operator_app(
            node, 'declare-datatypes')

    def mutations(self, node):
        if is_operator_app(node, 'declare-datatype'):
            if len(node) != 3:
                return
            for cons in node[2]:
                yield Simplification({cons.id: None}, [])
        elif is_operator_app(node, 'declare-datatypes'):
            if len(node) != 3:
                return
            for type in node[2]:
                for cons in type:
                    yield Simplification({cons.id: None}, [])

    def __str__(self):
        return 'remove datatype constructor'


class RemoveDatatype:
    """Remove a datatype from a recursive datatype declaration."""
    def filter(self, node):
        return is_operator_app(node, 'declare-datatypes')

    def mutations(self, node):
        if len(node) != 3 or len(node[1]) != len(node[2]):
            return
        for i in range(len(node[1])):
            yield Simplification({
                node[1][i].id: None,
                node[2][i].id: None
            }, [])

    def __str__(self):
        return 'remove datatype'


class RemoveDatatypeIdentity:
    """Remove a datatype constructor and selector that are nested to function
    as the identify. For ``(declare-datatype (A 0) ((C (s A))))`` we have the
    datatype ``A`` with a constructor ``C`` that has the selector ``s``.
    Nesting ``C`` and ``s`` like ``(s (C x))`` returns ``x`` unchanged and we
    can thus usually replace this expression by ``x``.
    """
    def filter(self, node):
        return len(node) == 2 and is_dt_selector(node) and is_dt_constructor(
            node[1]) and get_dt_selector(node)[0] == node[1].get_ident()

    def mutations(self, node):
        selid = get_dt_selector(node)[1]
        if len(node[1]) <= selid + 1:
            return
        yield Simplification({node.id: node[1][selid + 1]}, [])

    def __str__(self):
        return 'remove datatype identity'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'RemoveConstructor': 'dt-rm-constructor',
        'RemoveDatatype': 'dt-rm-datatype',
        'RemoveDatatypeIdentity': 'dt-rm-identity',
    }

def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        return node.get_ident() in ['declare-datatypes', 'declare-datatype']
    return False
