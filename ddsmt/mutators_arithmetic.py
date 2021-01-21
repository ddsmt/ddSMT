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


def is_arithmetic_relation(node):
    if not node.has_ident():
        return False
    return node.get_ident() in [
        '=', '<', '>', '>=', '<=', '!=', '<>', 'distinct'
    ]


class ArithmeticNegateRelation:
    """Replace a negated relation by the inverse relation."""
    def filter(self, node):
        return is_operator_app(node, 'not') and is_arithmetic_relation(node[1])

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
        return [(negator[node[1][0]], ) + node[1][1:]]

    def __str__(self):
        return 'push negation into arithmetic relation'


class ArithmeticSimplifyConstant:
    """Replace a constant by a simpler constant (smaller or fewer decimal
    places)."""
    def filter(self, node):
        return is_arith_const(node) and float(node.data) not in [0, 1]

    def mutations(self, node):
        f = float(node.data)
        if int(f) == f:
            i = int(f)
            return [Node(str(i // 2)), Node(str(i // 10))]
        return [Node(str(int(f))), Node(node.data[:-1])]

    def global_mutations(self, linput, ginput):
        for rep in self.mutations(linput):
            yield {linput: rep}

    def __str__(self):
        return 'simplify arithmetic constant'


class ArithmeticSplitNaryRelation:
    """Split an n-ary relation into the conjunction of multiple relations,
    assuming the relation symbol is transitive."""
    def filter(self, node):
        return is_arithmetic_relation(node) and len(node) > 3

    def mutations(self, node):
        split = [(node.get_ident(), node[i], node[i + 1])
                 for i in range(1,
                                len(node) - 1)]
        return [Node('and', *split)]

    def __str__(self):
        return 'split arithmetic n-ary relation'


class ArithmeticStrengthenRelation:
    """Replace a relation by a stronger relation, for example transform ``>=``
    to ``>``."""
    def filter(self, node):
        return is_arithmetic_relation(node) and node.get_ident() in [
            '<', '>', '<=', '>='
        ]

    def mutations(self, node):
        negator = {'<': ['='], '>': ['='], '<=': ['<', '='], '>=': ['>', '=']}
        assert node[0] in negator
        return [Node(rel, *node.data[1:]) for rel in negator[node[0]]]

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
            if node[2] in ['Int', 'Real']:
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if node[3] in ['Int', 'Real']:
                return True
    return False
