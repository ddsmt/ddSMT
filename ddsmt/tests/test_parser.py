from ..nodes import Node, dfs, substitute
from .. import parser


def test_basic():
    assert list(parser.parse_smtlib('(reset)')) == [Node(Node('reset'))]
    assert list(parser.parse_smtlib('(assert (> x y))')) == [
        Node(Node('assert'), Node(Node('>'), Node('x'), Node('y')))
    ]
