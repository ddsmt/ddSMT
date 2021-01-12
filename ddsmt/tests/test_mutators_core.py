from ..nodes import Node
from .. import mutators_core
from .. import smtlib


def test_constants():
    exprs = [Node('declare-const', 'x', 'Real')]
    smtlib.collect_information(exprs)
    m = mutators_core.Constants()
    assert m.mutations(Node('x')) == [Node('0.0'), Node('1.0')]


def test_erase_node():
    m = mutators_core.EraseNode()
    assert m.mutations(Node('x')) == [None]


def test_merge_with_children():
    node = Node(Node('+'), Node('x'), Node(Node('+'), Node('x'), Node('y')))
    m = mutators_core.MergeWithChildren()
    assert m.filter(node)
    assert m.mutations(node) == [
        Node(Node('+'), Node('x'), Node('x'), Node('y'))
    ]
