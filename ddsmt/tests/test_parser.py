from ..nodes import Node, dfs, substitute, parse_smtlib
from .. import parser


def test_basic():
    assert list(parse_smtlib('(reset)')) == [Node(Node('reset'))]
    assert list(parse_smtlib('(assert (> x y))')) == [
        Node(Node('assert'), Node(Node('>'), Node('x'), Node('y')))
    ]
