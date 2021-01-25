#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in the AUTHORS file.
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


def is_quantifier(node):
    return node.has_ident() and node.get_ident() in ['exists', 'forall']


def make_and(children):
    """Return an and from arbitrary many children.

    Returns node as a list so that we can return the empty list if there
    are no children.
    """
    if len(children) == 0:
        return []
    if len(children) == 1:
        return children
    return [Node('and', *children)]


class BoolDeMorgan:
    """Use de Morgans rules to push negations inside."""
    def filter(self, node):
        return is_operator_app(node, 'not') and (is_operator_app(
            node[1], 'and') or is_operator_app(node[1], 'or'))

    def mutations(self, node):
        negated = [Node('not', t) for t in node[1][1:]]
        if node[1].get_ident() == 'and':
            return [Node('or', *negated)]
        assert node[1].get_ident() == 'or'
        return [Node('and', *negated)]

    def __str__(self):
        return 'push negation inside'


class BoolDoubleNegation:
    """Eliminate double negations."""
    def filter(self, node):
        return is_operator_app(node, 'not') and is_operator_app(node[1], 'not')

    def mutations(self, node):
        return [node[1][1]]

    def __str__(self):
        return 'eliminate double negation'


class BoolEliminateFalseEquality:
    """Replace an equality with ``false`` by a negation.

    For example, transform ``(= false X)`` into ``(not X)``.
    """
    def filter(self, node):
        return is_eq(node) and Node('false') in node

    def mutations(self, node):
        negated = [Node('not', n) for n in node[1:] if n != 'false']
        return make_and(negated)

    def __str__(self):
        return 'replace equality with false by negation'


class BoolEliminateImplication:
    """Replace (possibly n-ary) implications by disjunctions."""
    def filter(self, node):
        return is_operator_app(node, '=>')

    def mutations(self, node):
        split = [
            Node('or', ('not', node[i]), node[i + 1])
            for i in range(1,
                           len(node) - 1)
        ]
        return make_and(split)

    def __str__(self):
        return 'eliminate implication'


class BoolNegateQuantifier:
    """Push negations inside quantifiers."""
    def filter(self, node):
        return is_operator_app(node, 'not') and is_quantifier(node[1])

    def mutations(self, node):
        if node[1].get_ident() == 'exists':
            return [Node('forall', node[1][1], ('not', node[1][2]))]
        assert node[1].get_ident() == 'forall'
        return [Node('exists', node[1][1], ('not', node[1][2]))]

    def __str__(self):
        return 'push negation inside of quantifier'


class BoolXOREliminateBinary:
    """Eliminate binary ``xor`` by ``distinct``."""
    def filter(self, node):
        return is_operator_app(node, 'xor') and len(node) == 3

    def mutations(self, node):
        return [Node('distinct', node[1], node[2])]

    def __str__(self):
        return 'eliminate binary xor'


class BoolXORRemoveConstant:
    """Eliminate constant children from ``xor``."""
    def filter(self, node):
        return is_operator_app(node, 'xor')

    def mutations(self, node):
        res = []
        if 'false' in node:
            res.append(Node(*[c for c in node if c != 'false']))
        if 'true' in node:
            res.append(Node(*[c for c in node if c != 'true']))
            res.append(Node('not', tuple(c for c in node if c != 'true')))
        return res

    def __str__(self):
        return 'remove constants from xor'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'BoolDeMorgan': 'bool-de-morgan',
        'BoolDoubleNegation': 'bool-double-negations',
        'BoolEliminateFalseEquality': 'bool-false-eq',
        'BoolEliminateImplication': 'bool-implications',
        'BoolNegateQuantifier': 'bool-negate-quants',
        'BoolXOREliminateBinary': 'bool-xor-binary',
        'BoolXORRemoveConstant': 'bool-xor-constants',
    }
