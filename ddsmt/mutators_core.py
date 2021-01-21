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

from .nodes import Node, count_nodes
from .smtlib import *
from . import options


class Constants:
    """Replaces any node by a constant (which depends on the type of ``code``).

    Requires that global information has been populated via
    ``collect_information``.
    """
    def filter(self, node):
        return get_sort(node) is not None

    def mutations(self, node):
        """Return ``get_default_constants(get_sort(node))``."""
        t = get_sort(node)
        if t is None:
            return []
        res = get_default_constants(t)
        if node in res:
            return []
        return res

    def __str__(self):
        return 'substitute by a constant'


class EraseNode:
    """Erase any given node.

    If additionally ``self.ident`` is set, only erases nodes with this
    identifier.
    """
    def filter(self, node):
        if not hasattr(self, 'ident'):
            return True
        return node.has_ident() and node.get_ident() == self.ident

    """Erases the given node."""

    def mutations(self, node):
        return [None]

    def __str__(self):
        if hasattr(self, 'ident'):
            return f'erase node ({self.ident})'
        return 'erase node'


class MergeWithChildren:
    """Merges a node with one of its children.

    This is possible for n-ary operators like ``and`` or ``+``.
    """
    def filter(self, node):
        return has_nary_operator(node)

    def mutations(self, node):
        for cid, child in enumerate(node):
            if child.has_ident() and node.get_ident() == child.get_ident():
                yield Node(*node[:cid], *node[cid][1:], *node[cid + 1:])

    def __str__(self):
        return 'merge with child'


class ReplaceByChild:
    """Replace a node by one of its children."""
    def filter(self, node):
        return not is_leaf(node) and not is_operator_app(node, 'let')

    def mutations(self, node):
        yield from node[1:]

    def __str__(self):
        return 'replace by a child'


class ReplaceByVariable:
    """Replace a node by another variable of the same type. Note that replacing
    variables by other variables potentially introduces cycles. To avoid this,
    we only substitute non-leaf nodes (and thus the input shrinks) or we
    substitute with variables that are lexicographically smaller than the
    current node. If ``--replace-by-variable-mode=dec`` is given (the default
    is ``inc``), we instead replace with lexicograpically larger variables.

    Requires that global information has been populated via
    ``collect_information``.
    """
    def filter(self, node):
        return not is_const(node)

    def mutations(self, node):
        if not hasattr(self, 'repl_mode'):
            self.repl_mode = options.args().replace_by_variable_mode

        ret_sort = get_sort(node)
        if ret_sort is None:
            return []
        variables = get_variables_with_sort(ret_sort)
        if is_leaf(node):
            if self.repl_mode == 'inc':
                return [Node(v) for v in variables if v > node.data]
            return [Node(v) for v in variables if v < node.data]
        return [Node(v) for v in variables]

    def __str__(self):
        if hasattr(self, 'repl_mode'):
            return f'substitute by existing variable ({self.repl_mode})'
        return 'substitute by existing variable'


class SortChildren:
    """Sort the children of a node by their size (the count of sub-nodes)."""
    def filter(self, node):
        return not is_leaf(node)

    def mutations(self, node):
        """Return ``sorted(node, key = count_nodes)``."""
        s = nodes.Node(*sorted(node, key=count_nodes))
        if s != node:
            return [s]
        return []

    def __str__(self):
        return 'sort children'


class TopLevelBinaryReduction:
    """Performs binary reduction on the top level node, essentially mimicing
    what the ``ddmin`` strategy would do with
    :class:`ddsmt.mutators_core.EraseNode`.
    If additionally ``self.ident`` is set, only nodes with the specified
    identifier are considered."""
    def global_mutations(self, linput, ginput):
        if linput != ginput[0]:
            return []
        # generate all sublists as generated by binary-search in bfs order
        # let den be the denominator of the list length (the tree level)
        # let num be the numerator within the current tree level
        if hasattr(self, 'ident'):
            ids = [
                node.id for node in ginput
                if is_operator_app(node, self.ident)
            ]
        else:
            ids = [node.id for node in ginput]
        den = 2
        while den * 2 < len(ids):
            for num in reversed(range(0, den)):
                start = int(num / den * len(ids))
                end = int((num + 1) / den * len(ids))
                yield {nodeid: None for nodeid in ids[start:end]}
            den *= 2

    def __str__(self):
        if hasattr(self, 'ident'):
            return f'binary reduction ({self.ident})'
        return 'binary reduction'


def get_mutator_options(argparser):
    """Add additional options to the argument parser."""
    argparser.add_argument(
        '--replace-by-variable-mode',
        choices=['inc', 'dec'],
        default='inc',
        help='replace with existing variables that are larger or smaller')


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'Constants': 'constants',
        'EraseNode': 'erase-node',
        'MergeWithChildren': 'merge-children',
        'ReplaceByChild': 'substitute-children',
        'ReplaceByVariable': 'replace-by-variable',
        'SortChildren': 'sort-children',
        'TopLevelBinaryReduction': 'top-level-binary-reduction',
    }
