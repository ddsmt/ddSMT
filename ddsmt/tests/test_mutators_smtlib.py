from ..nodes import Node
from .. import mutators_smtlib
from .. import smtlib


def test_smtlib_get_mutators():
    d = mutators_smtlib.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 9


def test_smtlib_checksat_assuming():
    m = mutators_smtlib.CheckSatAssuming()
    assert isinstance(str(m), str)
    assert not m.filter(Node(Node('check-sat')))
    assert not m.filter(Node('assert', 'true'))
    assert m.filter(Node('check-sat-assuming', 'true'))
    assert m.filter(Node('check-sat-assuming', ('xor', 'x', 'y')))

    assert m.mutations(Node('check-sat-assuming',
                            'true')) == [Node(Node('check-sat'))]
    assert m.mutations(Node('check-sat-assuming',
                            ('xor', 'x', 'y'))) == [Node(Node('check-sat'))]


def test_smtlib_eliminate_variable():
    m = mutators_smtlib.EliminateVariable()
    assert isinstance(str(m), str)
    # special case where 'x' occurs in the replacement
    n = Node('=', 'x', ('*', 'x', 'y'))
    assert m.filter(n)
    assert m.global_mutations(n, n) == []


def test_smtlib_inline_define_fun():
    m = mutators_smtlib.InlineDefinedFuns()
    assert isinstance(str(m), str)
    # special case where we should not attempt to inline into itself
    inner = Node('x')
    n = Node('define-fun', 'x', (), 'Bool', ('not', inner))
    smtlib.collect_information([n])
    assert m.filter(inner)
    assert m.mutations(inner) == []


def test_smtlib_let_elimination():
    m = mutators_smtlib.LetElimination()
    assert isinstance(str(m), str)
    assert not m.filter(Node('and', 'x', 'y'))
    n = Node('let', (('a', 'x'), ('b', 'y')), ('and', 'a', 'b'))
    assert m.filter(n)
    assert m.mutations(n) == [('and', 'a', 'b')]


def test_smtlib_let_substitution():
    m = mutators_smtlib.LetSubstitution()
    assert isinstance(str(m), str)
    assert not m.filter(Node('and', 'x', 'y'))
    n = Node('let', (('a', 'x'), ('b', 'y')), ('and', 'a', 'b'))
    assert m.filter(n)
    assert m.mutations(n) == [
        ('let', (('a', 'x'), ('b', 'y')), ('and', 'x', 'b')),
        ('let', (('a', 'x'), ('b', 'y')), ('and', 'a', 'y'))
    ]


def test_smtlib_pushpop_removal():
    m = mutators_smtlib.PushPopRemoval()
    assert isinstance(str(m), str)
    exprs = [
        Node('set-logic', 'QF_NRA'),
        Node('assert', 'x'),
        Node(Node('push')),
        Node(Node('pop')),
        Node('assert', 'y'),
        Node(Node('push')),
        Node('assert', 'z'),
        Node(Node('pop')),
    ]
    assert list(m.global_mutations(exprs[0],
                                   exprs)) == [[
                                       Node('set-logic', 'QF_NRA'),
                                       Node('assert', 'x'),
                                       Node('assert', 'y'),
                                       Node(Node('push')),
                                       Node('assert', 'z'),
                                       Node(Node('pop')),
                                   ],
                                               [
                                                   Node('set-logic', 'QF_NRA'),
                                                   Node('assert', 'x'),
                                                   Node(Node('push')),
                                                   Node(Node('pop')),
                                                   Node('assert', 'y'),
                                                   Node('assert', 'z'),
                                               ]]
