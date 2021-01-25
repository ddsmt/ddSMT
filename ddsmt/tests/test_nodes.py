import pytest

from .. import nodes
from ..nodes import Node


def test_constructor():
    assert Node().data == ()
    assert Node(15).data == '15'
    assert Node('foobar').data == 'foobar'
    assert Node('a', 15, ('b', 13)).data == ('a', '15', ('b', '13'))
    assert Node(()).data == ((), )


def test_eq():
    assert not Node('x') == 'y'
    assert not Node('declare-const', 'x',
                    'Int') == ('declare-const', 'y', 'Int')
    assert not Node('x') == Node('y')
    assert Node('x') == 'x'
    assert Node('declare-const', 'x', 'Int') == ('declare-const', 'x', 'Int')
    assert Node('x') == Node('x')
    assert Node('declare-const', 'x', 'Int') == Node('declare-const', 'x',
                                                     'Int')
    assert Node(Node('pop')) == (Node('pop'), )
    assert Node('pop', 1) == ('pop', 1)

    assert not Node('#b101') == Node('#b100')
    assert not Node('#b101') == 'x'
    assert not Node('#b101') == ('x', )
    assert not Node('#b101') == Node('x')

    assert Node('#b101') == '#b101'
    assert not Node('#b101') == (Node('#b101'), )
    assert Node('#b101') == Node('#b101')
    assert Node('#x1af') == '#x1af'
    assert not Node('#x1af') == (Node('#x1af'), )
    assert Node('#x1af') == Node('#x1af')

    assert not Node('#x1af') == '(_ bv431 12)'
    assert not Node('#b0101') == ('_', 'bv5', 4)
    assert not Node('_', 'bv5', 4) == ('#b0101', )
    assert not Node('_', 'bv431', 12) == ('#x1af', )

    assert not Node('#b110101111') == '#x1af'
    assert not Node('#b000110101111') == ('#x1af', )
    assert not Node('#x1af') == ('#b000110101111', )

    # can't handle any of these cases without BV const normalization
    # each of these denotes equal values
    assert not Node('#b0101') == '(_ bv5 4)'
    assert not Node('#b0101') == Node('_', 'bv5', 4)
    assert not Node('#x1af') == ('_', 'bv431', 12)
    assert not Node('#x1af') == Node('_', 'bv431', 12)
    assert not Node('_', 'bv0', '4') == '#b0000'
    assert not Node(Node('_'), Node('bv5'), Node('4')) == '#b0101'
    assert not Node('_', 'bv5', 4) == Node('#b0101')
    assert not Node('_', 'bv431', 12) == '#x1af'
    assert not Node('_', 'bv431', 12) == Node('#x1af')
    assert not [Node('_', 'bv5', 4)] == ['#b0101']
    assert not Node('#b000110101111') == '#x1af'
    assert not Node('#b000110101111') == Node('#x1af')
    assert not Node('#x1af') == '#b000110101111'
    assert not Node('#x1af') == Node('#b000110101111')


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


def test_render_smtlib_expression():
    expr = Node('x')
    assert nodes.__render_smtlib_expression(expr, False) == 'x'
    assert nodes.__render_smtlib_expression(expr, True) == 'x'

    expr = Node('; foo')
    assert nodes.__render_smtlib_expression(expr, False) == '\n; foo\n'
    assert nodes.__render_smtlib_expression(expr, True) == '\n; foo\n'

    expr = Node('declare-const', 'x', 'Real')
    assert nodes.__render_smtlib_expression(expr,
                                            False) == '(declare-const x Real)'
    assert nodes.__render_smtlib_expression(expr,
                                            True) == '(declare-const x Real)'

    expr = Node('assert', ('and', ))
    assert nodes.__render_smtlib_expression(expr, False) == '(assert (and))'
    assert nodes.__render_smtlib_expression(expr, True) == '(assert\n  (and))'

    expr = Node('assert', ('>', 'x', 'y'), ())
    assert nodes.__render_smtlib_expression(expr,
                                            False) == '(assert (> x y) ())'
    assert nodes.__render_smtlib_expression(
        expr, True) == '(assert\n  (> x y)\n  ())'


def test_binary_search():
    assert list(nodes.binary_search(4)) == [(2, 4), (0, 2)]
    assert list(nodes.binary_search(15)) == [
        (7, 15),
        (0, 7),
        (11, 15),
        (7, 11),
        (3, 7),
        (0, 3),
    ]
