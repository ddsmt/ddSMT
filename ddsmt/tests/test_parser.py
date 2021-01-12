from ..nodes import Node, parse_smtlib


def test_basic():
    assert list(parse_smtlib('(reset)')) == [Node(Node('reset'))]
    assert list(parse_smtlib('(assert (> x y))')) == [
        Node(Node('assert'), Node(Node('>'), Node('x'), Node('y')))
    ]
