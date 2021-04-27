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


class SeqNthUnit:
    """Simplify ``(seq.nth (seq.unit t) 0)`` to ``t``."""
    def filter(self, node):
        return is_operator_app(
            node, 'seq.nth') and len(node) > 1 and is_operator_app(
                node[1], 'seq.unit')

    def mutations(self, node):
        yield Simplification({node.id: node[1][1]}, [])

    def __str__(self):
        return 'remove nth of unit seq'


class StringSimplifyConstant:
    """Replace a string constant by a shorter constant."""
    def __fix_escape_sequences(self, s, end):
        id = s.rfind('\\', end - 8, end)
        if id != -1:
            return id
        return end

    def filter(self, node):
        return is_string_const(node) and node != '""'

    def mutations(self, node):
        yield Simplification({node.id: Node('""')}, [])
        content = node[1:-1]
        for sec in nodes.binary_search(len(content)):
            start = self.__fix_escape_sequences(content, sec[0])
            yield Simplification(
                {node.id: Node(f'"{content[:start]}{content[sec[1]:]}"')}, [])
        yield Simplification({node.id: Node(f'"{content[1:]}"')}, [])
        yield Simplification({node.id: Node(f'"{content[:-1]}"')}, [])

    def global_mutations(self, node, input_):
        for simp in self.mutations(node):
            yield Simplification({node: simp.substs[node.id]}, [])

    def __str__(self):
        return 'simplify string constant'


class StringReplaceAll:
    """Replace ``str.replace_all`` by ``str.replace``."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.replace_all'

    def mutations(self, node):
        return [Simplification({node.id: Node('str.replace', *node[1:])}, [])]

    def __str__(self):
        return 'eliminate str.replace_all'


class StringIndexOfNotFound:
    """Replace ``str.indexof`` by special value ``(- 1)`` indicating that the
    substring was not found."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.indexof'

    def mutations(self, node):
        return [Simplification({node.id: Node('-', '1')}, [])]

    def __str__(self):
        return 'eliminate str.indexof'


class StringContainsToConcat:
    """Replace ``str.contains`` by concatenation."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.contains'

    def global_mutations(self, node, input_):
        var = node[1]
        k1 = f'{var}_prefix'
        k2 = f'{var}_suffix'
        vars = [
            Node('declare-const', k1, 'String'),
            Node('declare-const', k2, 'String'),
        ]
        eq = Node('=', var, ('str.++', k1, node[2], k2))
        return [Simplification({node: eq}, vars)]

    def __str__(self):
        return 'eliminate str.contains by ++'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'SeqNthUnit': 'seq-nth-unit',
        'StringContainsToConcat': 'str-contains-to-concat',
        'StringIndexOfNotFound': 'str-index-not-found',
        'StringReplaceAll': 'str-replace-all',
        'StringSimplifyConstant': 'str-constants',
    }


def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        if node.get_ident() in ['declare-const']:
            if nodes.contains(node[2], lambda t: t == 'String'):
                return True
            if nodes.contains(node[2], is_seq_type):
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if nodes.contains(node[3], lambda t: t == 'String'):
                return True
            if nodes.contains(node[3], is_seq_type):
                return True
    return False
