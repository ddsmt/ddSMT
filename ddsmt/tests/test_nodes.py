import pytest

from .. import nodes
from ..nodes import Node


def test_is_leaf():
    assert Node('x').is_leaf()
    assert not Node('not', 'x').is_leaf()


def test_has_ident():
    assert not Node('x').has_ident()
    assert Node('_', 'BitVec', 3).has_ident()
    assert Node('assert', 'x', 'x').has_ident()


def test_get_ident():
    with pytest.raises(AssertionError):
        Node('x').get_ident()
    assert Node('_', 'BitVec', 3).get_ident() == '_'
    assert Node('assert', 'x', 'x').get_ident() == 'assert'


def test_pickle():
    import pickle
    # test __getstate__ and __setstate__ which are used by pickle
    n = Node('not', ('and', 'x', 'y'))
    assert pickle.loads(pickle.dumps(n)) == n


def test_parse_smtlib():
    assert list(nodes.parse_smtlib('(reset)')) == [Node(Node('reset'))]
    assert list(nodes.parse_smtlib('(assert (> x y))')) == [
        Node('assert', ('>', 'x', 'y'))
    ]
    input = """
    (set-logic QF_NRA)
    (set-option :source |just for testing|)
    (define-fun x () String "abc""123")
    ; now some other nonsense
    (declare-const y Real
        ; some other comment
    )
    (assert (= (* y y) y))
    (check-sat)
    """
    assert list(nodes.parse_smtlib(input)) == [
        Node('set-logic', 'QF_NRA'),
        Node('set-option', ':source', '|just for testing|'),
        Node('define-fun', 'x', (), 'String', '"abc""123"'),
        Node('; now some other nonsense\n'),
        Node('declare-const', 'y', 'Real', '; some other comment\n'),
        Node('assert', ('=', ('*', 'y', 'y'), 'y')),
        Node(Node('check-sat')),
    ]

    assert list(
        nodes.parse_smtlib("(set-option :source |just for testing")) == []
    assert list(nodes.parse_smtlib("(set-option :source testing")) == []


def test_dfs():
    exprs = [
        Node('assert', ('>', 'x', 'y')),
        Node('assert', ('=', ('*', 'y', 'y'), 'y')),
    ]
    assert list(nodes.dfs(exprs)) == [('assert', ('>', 'x', 'y')), 'assert',
                                      ('>', 'x', 'y'), '>', 'x', 'y',
                                      ('assert', ('=', ('*', 'y', 'y'), 'y')),
                                      'assert', ('=', ('*', 'y', 'y'), 'y'),
                                      '=', ('*', 'y', 'y'), '*', 'y', 'y', 'y']
    assert list(nodes.dfs(exprs, max_depth=2)) == [
        ('assert', ('>', 'x', 'y')), 'assert', ('>', 'x', 'y'),
        ('assert', ('=', ('*', 'y', 'y'), 'y')), 'assert',
        ('=', ('*', 'y', 'y'), 'y')
    ]


def test_substitute():
    x = Node('x')
    expr = Node('assert', ('>', x, 'y'))
    exprs = [expr, Node('assert', ('=', ('*', 'x', 'y'), 'y'))]

    assert nodes.substitute(x, {x: Node('z')}) == Node('z')
    assert nodes.substitute(x, {x.id: Node('z')}) == Node('z')
    assert nodes.substitute(x, {x.id: None}) is None
    assert nodes.substitute(x, {Node('y'): None}) == x

    assert nodes.substitute(expr,
                            {x: Node('z')}) == Node('assert', ('>', 'z', 'y'))
    assert nodes.substitute(expr,
                            {x.id: Node('z')}) == Node('assert',
                                                       ('>', 'z', 'y'))
    assert nodes.substitute(expr, {x.id: None}) == Node('assert', ('>', 'y'))

    assert nodes.substitute(exprs, {x: Node('z')}) == [
        Node('assert', ('>', 'z', 'y')),
        Node('assert', ('=', ('*', 'z', 'y'), 'y')),
    ]
    assert nodes.substitute(exprs, {x.id: Node('z')}) == [
        Node('assert', ('>', 'z', 'y')),
        Node('assert', ('=', ('*', 'x', 'y'), 'y')),
    ]
    assert nodes.substitute(exprs, {x.id: None}) == [
        Node('assert', ('>', 'y')),
        Node('assert', ('=', ('*', 'x', 'y'), 'y')),
    ]
