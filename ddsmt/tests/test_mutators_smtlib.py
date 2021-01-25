from ..nodes import Node
from .. import mutators_smtlib
from .. import smtlib


def test_smtlib_get_mutators():
    d = mutators_smtlib.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 8


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
    eq = Node('=', 'x', ('*', 'x', 'y'))
    assert m.filter(eq)
    assert list(m.global_mutations(eq, eq)) == []
    eq = Node('=', 'x', ('*', 'y', 'y'))
    exprs = [
        Node('declare-const', 'x', 'Real'),
        Node('define-fun', 'y', (), 'Real', ('*', 'x', 'x')),
        Node('define-fun', 'z', (), 'Real', ('*', 'x', 'y')),
        Node('assert', eq),
        Node('assert', ('>', 'x', 'y')),
    ]
    assert m.filter(eq)
    assert list(m.global_mutations(eq, exprs)) == [[
        Node('declare-const', 'x', 'Real'),
        Node('define-fun', 'y', (), 'Real',
             ('*', ('*', 'y', 'y'), ('*', 'y', 'y'))),
        Node('define-fun', 'z', (), 'Real', ('*', ('*', 'y', 'y'), 'y')),
        Node('assert', ('=', ('*', 'y', 'y'), ('*', 'y', 'y'))),
        Node('assert', ('>', ('*', 'y', 'y'), 'y')),
    ]]

    eq = Node('=', 'x', 'y', 'a', ('*', 'y', 'y'), ('+', 'a', 'b'))
    exprs = [Node('assert', ('>', 'x', 'y'))]
    assert m.filter(eq)
    assert list(m.global_mutations(eq, exprs)) == [
        [Node('assert', ('>', 'y', 'y'))],
        [Node('assert', ('>', 'a', 'y'))],
        [Node('assert', ('>', ('*', 'y', 'y'), 'y'))],
        [Node('assert', ('>', ('+', 'a', 'b'), 'y'))],
        [Node('assert', ('>', 'x', 'x'))],
        [Node('assert', ('>', 'x', 'a'))],
        [Node('assert', ('>', 'x', ('+', 'a', 'b')))],
    ]


def test_smtlib_inline_define_fun():
    smtlib.reset_information()
    m = mutators_smtlib.InlineDefinedFuns()
    assert isinstance(str(m), str)
    # special case where we should not attempt to inline into itself
    inner = Node('x')
    n = Node('define-fun', 'x', (), 'Bool', ('not', inner))
    smtlib.collect_information([n])
    assert m.filter(inner)
    assert m.mutations(inner) == []

    inner = Node('x')
    expr = Node(inner, 'a', 'b')
    smtlib.collect_information([
        Node('define-fun', 'x', (('y', 'Bool'), ('z', 'Bool')), 'Bool',
             ('and', 'y', 'z'))
    ])
    assert m.filter(expr)
    assert m.mutations(expr) == [Node('and', 'a', 'b')]


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
    n = Node('let', (('a', 'x'), ('b', 'y')), ('and', 'abc', 'def'))
    assert m.filter(n)
    assert m.mutations(n) == []


def test_smtlib_simplify_logic():
    m = mutators_smtlib.SimplifyLogic()
    assert isinstance(str(m), str)

    assert not m.filter(Node('assert', 'x'))
    assert m.filter(Node('set-logic', 'QF_NRA'))
    assert m.mutations(Node('set-logic',
                            'QF_NRA')) == [('set-logic', 'QF_LRA')]
    assert m.mutations(Node('set-logic', 'QF_BVFPLRAS')) == [
        ('set-logic', 'QF_FPLRAS'),
        ('set-logic', 'QF_BVLRAS'),
        ('set-logic', 'QF_BVFPLRA'),
        ('set-logic', 'QF_BVFPS'),
    ]


def test_smtlib_quoted_symbols():
    m = mutators_smtlib.SimplifyQuotedSymbols()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    assert m.filter(Node('|x|'))
    assert not m.filter(Node('|"x|'))
    assert not m.filter(Node('and', 'x', 'y'))
    assert not m.filter(Node('and', '|x|', 'y'))
    assert m.mutations(Node('|x|')) == ['x']
    assert m.global_mutations(Node('|x|'), Node('assert', '|x|')) == [{
        Node('|x|'):
        Node('x')
    }]


def test_smtlib_simplify_symbol_names():
    m = mutators_smtlib.SimplifySymbolNames()
    assert isinstance(str(m), str)
    assert m.filter(Node('declare-const', 'x', 'Real'))
    assert not m.filter(Node('declare-const', 'false', 'Real'))
    assert m.filter(Node('declare-const', 'x', 'Real'))
    exprs = [
        Node('declare-const', 'abcdef', 'Bool'),
        Node('declare-datatype', 'Color', (('red', ), ('|green|', ))),
        Node('assert', 'abcdef'),
        Node('assert',
             ('exists', (('xy', 'Bool'), ('z', 'Bool')), ('and', 'xy', 'z'))),
    ]
    assert list(m.global_mutations(exprs[0], exprs)) == [{
        Node('abcdef'):
        Node('abc')
    }, {
        Node('abcdef'):
        Node('abcde')
    }, {
        Node('abcdef'):
        Node('bcdef')
    }]
    assert list(m.global_mutations(exprs[1], exprs)) == [{
        Node('Color'): 'Co'
    }, {
        Node('Color'): 'Colo'
    }, {
        Node('Color'): 'olor'
    }, {
        Node('red'): 're'
    }, {
        Node('red'): 'ed'
    }, {
        Node('|green|'):
        '|gr|'
    }, {
        Node('|green|'):
        '|gree|'
    }, {
        Node('|green|'):
        '|reen|'
    }]
    assert list(m.global_mutations(exprs[3][1], exprs)) == [{
        Node('xy'): 'x'
    }, {
        Node('xy'): 'y'
    }]
