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
        yield Node(f'""')
        content = node[1:-1]
        for sec in nodes.binary_search(len(content)):
            start = self.__fix_escape_sequences(content, sec[0])
            yield Node(f'"{content[:start]}{content[sec[1]:]}"')
        yield Node(f'"{content[1:]}"')
        yield Node(f'"{content[:-1]}"')

    def global_mutations(self, linput, ginput):
        for rep in self.mutations(linput):
            yield {linput: rep}

    def __str__(self):
        return 'simplify string constant'


class StringReplaceAll:
    """Replace ``str.replace_all`` by ``str.replace``."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.replace_all'

    def mutations(self, node):
        return [Node('str.replace', *node[1:])]

    def __str__(self):
        return 'eliminate str.replace_all'


class StringIndexOfNotFound:
    """Replace ``str.indexof`` by special value ``(- 1)`` indicating that the
    substring was not found."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.indexof'

    def mutations(self, node):
        return [Node('-', '1')]

    def __str__(self):
        return 'eliminate str.indexof'


class StringContainsToConcat:
    """Replace ``str.contains`` by concatenation."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.contains'

    def global_mutations(self, linput, ginput):
        var = linput[1]
        k1 = f'{var}_prefix'
        k2 = f'{var}_suffix'
        vars = [
            Node('declare-const', k1, 'String'),
            Node('declare-const', k2, 'String'),
        ]
        ginput = introduce_variables(ginput, vars)
        eq = Node('=', var, ('str.++', k1, linput[2], k2))
        return nodes.substitute(ginput, {linput: eq})

    def __str__(self):
        return 'eliminate str.contains by ++'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'StringContainsToConcat': 'str-contains-to-concat',
        'StringIndexOfNotFound': 'str-index-not-found',
        'StringReplaceAll': 'str-replace-all',
        'StringSimplifyConstant': 'str-constants',
    }


def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        if node.get_ident() in ['declare-const']:
            if node[2] == 'String':
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if node[3] == 'String':
                return True
    return False
