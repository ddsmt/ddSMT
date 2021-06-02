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

from . import nodes
from .smtlib import *
from .mutator_utils import Simplification


def is_arithmetic_relation(node):
    if not node.has_ident():
        return False
    return node.get_ident() in [
        '=', '<', '>', '>=', '<=', '!=', '<>', 'distinct'
    ]


class ArithmeticNegateRelation:
    """Replace a negated relation by the corresponding inverse relation.

    For example, ``(not (< a b))`` is replaced with ``(>= a b)``.
    """
    def filter(self, node):
        return is_operator_app(
            node, 'not') and len(node) > 1 and is_arithmetic_relation(node[1])

    def mutations(self, node):
        negator = {
            '=': 'distinct',
            '<': '>=',
            '>': '<=',
            '>=': '<',
            '<=': '>',
            '!=': '=',
            '<>': '=',
            'distinct': '='
        }
        assert node[1][0] in negator
        return [
            Simplification({node.id: Node(negator[node[1][0]], *node[1][1:])},
                           [])
        ]

    def __str__(self):
        return 'push negation into arithmetic relation'


class ArithmeticSimplifyConstant:
    """Replace a constant with a simpler constant.

    We consider constants that are smaller (in value) or with fewer decimal
    places as `simpler`.
    """
    def filter(self, node):
        return is_arith_const(node) and get_arith_const(node) not in [0, 1]

    def mutations(self, node):
        f = get_arith_const(node)
        if int(f) == f:
            i = int(f)
            yield from [
                Simplification({node.id: Node(str(i // 2))}, []),
                Simplification({node.id: Node(str(i // 10))}, [])
            ]
            return
        yield from [
            Simplification({node.id: Node(str(int(f)))}, []),
            Simplification({node.id: Node(node.data[:-1])}, [])
        ]

    def global_mutations(self, node, input_):
        yield from [
            Simplification({node: simp.substs[node.id]}, [])
            for simp in self.mutations(node)
        ]

    def __str__(self):
        return 'simplify arithmetic constant'


class ArithmeticSplitNaryRelation:
    """Split an n-ary relation into the conjunction of multiple relations.

    This assumes that the relation symbol is transitive.
    """
    def filter(self, node):
        return is_arithmetic_relation(node) and len(node) > 3

    def mutations(self, node):
        split = [(node.get_ident(), node[i], node[i + 1])
                 for i in range(1,
                                len(node) - 1)]
        return [Simplification({node.id: Node('and', *split)}, [])]

    def __str__(self):
        return 'split arithmetic n-ary relation'


class ArithmeticStrengthenRelation:
    """Replace a relation by a stronger relation.

    For example, ``>=`` is replaced by ``>``.
    """
    def filter(self, node):
        return is_arithmetic_relation(node) and node.get_ident() in [
            '<', '>', '<=', '>=', 'distinct'
        ]

    def mutations(self, node):
        strengthen = {
            '<': ['='],
            '>': ['='],
            '<=': ['<', '='],
            '>=': ['>', '='],
            'distinct': ['=']
        }
        assert node[0] in strengthen
        yield from [
            Simplification({node.id: Node(rel, *node.data[1:])}, [])
            for rel in strengthen[node[0]]
        ]

    def __str__(self):
        return 'strengthen arithmetic relation'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'ArithmeticNegateRelation': 'arith-negate-relations',
        'ArithmeticSimplifyConstant': 'arith-constants',
        'ArithmeticSplitNaryRelation': 'arith-split-nary-relations',
        'ArithmeticStrengthenRelation': 'arith-strengthen-relations',
    }


def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        if node.get_ident() in ['declare-const']:
            if nodes.contains(node[2], lambda t: t in ['Int', 'Real']):
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if nodes.contains(node[3], lambda t: t in ['Int', 'Real']):
                return True
    return False
