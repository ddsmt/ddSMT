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
from .nodes import Node
from .smtlib import *
from .mutator_utils import Simplification


class FPShortSort:
    """Replace long sort names with short names.

    .. code-block:: common-lisp

        (_ FloatingPoint 5 11)   --> Float16
        (_ FloatingPoint 8 24)   --> Float32
        (_ FloatingPoint 11 53)  --> Float64
        (_ FloatingPoint 15 113) --> Float128
    """
    def filter(self, node):
        return is_fp_sort(node) and len(node) == 4

    def mutations(self, node):
        if node[2] == '5' and node[3] == '11':
            return [Simplification({node.id: Node('Float16')}, [])]
        if node[2] == '8' and node[3] == '24':
            return [Simplification({node.id: Node('Float32')}, [])]
        if node[2] == '11' and node[3] == '53':
            return [Simplification({node.id: Node('Float64')}, [])]
        if node[2] == '15' and node[3] == '113':
            return [Simplification({node.id: Node('Float128')}, [])]
        return []

    def __str__(self):
        return 'replace long FP sort name with short name'


def get_mutators():
    """Return mapping from mutator class names to the name of their config
    options."""
    return {
        'FPShortSort': 'fp-short-sort',
    }


def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        if node.get_ident() in ['declare-const']:
            if nodes.contains(node[2], is_fp_sort) or nodes.contains(
                    node[2], is_rm_sort):
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if nodes.contains(node[3], is_fp_sort) or nodes.contains(
                    node[3], is_rm_sort):
                return True
    return False
