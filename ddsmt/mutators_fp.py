from .nodes import Node
from . import options
from .smtlib import *


class FPShortSort:
    """Replace long sort names with short names.

    (_ FloatingPoint 5 11)   --> Float16 (_ FloatingPoint 8 24)   -->
    Float32 (_ FloatingPoint 11 53)  --> Float64 (_ FloatingPoint 15
    113) --> Float128
    """
    def filter(self, node):
        return is_fp_sort(node) and len(node) == 4

    def mutations(self, node):
        if node[2] == '5' and node[3] == '11': return [Node('Float16')]
        if node[2] == '8' and node[3] == '24': return [Node('Float32')]
        if node[2] == '11' and node[3] == '53': return [Node('Float64')]
        if node[2] == '15' and node[3] == '113': return [Node('Float128')]
        return []

    def __str__(self):
        return 'replace long FP sort name with short name'


def get_mutators():
    """Return mapping from mutator class names to the name of their config
    options."""
    return {
        'FPShortSort': 'fp-short-sort',
    }
