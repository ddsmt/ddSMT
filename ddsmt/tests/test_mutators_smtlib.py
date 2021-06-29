from ..nodes import Node
from .. import mutators_smtlib
from .. import smtlib
from ..mutator_utils import *
from .utils import *


def test_smtlib_get_mutators():
    d = mutators_smtlib.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 11


def test_smtlib_checksat_assuming():
    m = mutators_smtlib.CheckSatAssuming()
    assert isinstance(str(m), str)
    assert not m.filter(Node(Node('check-sat')))
    assert not m.filter(Node('assert', 'true'))
    assert m.filter(Node('check-sat-assuming', 'true'))
    assert m.filter(Node('check-sat-assuming', ('xor', 'x', 'y')))

    assert check_mutations(m, Node('check-sat-assuming', 'true'),
                           [Node(Node('check-sat'))])
    assert check_mutations(m, Node('check-sat-assuming', ('xor', 'x', 'y')),
                           [Node(Node('check-sat'))])


def test_smtlib_eliminate_variable():
    m = mutators_smtlib.EliminateVariable()
    assert isinstance(str(m), str)
    # special case where 'x' occurs in the replacement
    eq = Node('=', 'x', ('*', 'x', 'y'))
    assert m.filter(eq)
    assert check_global_mutations(m, eq, eq, [])
    eq = Node('=', 'x', ('*', 'y', 'y'))
    exprs = [
        Node('declare-const', 'x', 'Real'),
        Node('define-fun', 'y', (), 'Real', ('*', 'x', 'x')),
        Node('define-fun', 'z', (), 'Real', ('*', 'x', 'y')),
        Node('assert', eq),
        Node('assert', ('>', 'x', 'y')),
    ]
    smtlib.collect_information(exprs)
    assert m.filter(eq)
    assert check_global_mutations(m, eq, exprs, [[
        Node('declare-const', 'x', 'Real'),
        Node('define-fun', 'y', (), 'Real',
             ('*', ('*', 'y', 'y'), ('*', 'y', 'y'))),
        Node('define-fun', 'z', (), 'Real', ('*', ('*', 'y', 'y'), 'y')),
        Node('assert', ('=', ('*', 'y', 'y'), ('*', 'y', 'y'))),
        Node('assert', ('>', ('*', 'y', 'y'), 'y')),
    ]])

    eq = Node('=', 'x', 'y', 'a', ('*', 'y', 'y'), ('+', 'a', 'b'))
    exprs = [Node('assert', ('>', 'x', 'y'))]
    smtlib.collect_information(exprs)
    assert m.filter(eq)
    assert check_global_mutations(m, eq, exprs, [
        [Node('assert', ('>', 'y', 'y'))],
        [Node('assert', ('>', 'a', 'y'))],
        [Node('assert', ('>', ('*', 'y', 'y'), 'y'))],
        [Node('assert', ('>', ('+', 'a', 'b'), 'y'))],
        [Node('assert', ('>', 'x', 'x'))],
        [Node('assert', ('>', 'x', 'a'))],
        [Node('assert', ('>', 'x', ('+', 'a', 'b')))],
    ])


def test_smtlib_inline_define_fun():
    smtlib.reset_information()
    m = mutators_smtlib.InlineDefinedFuns()
    assert isinstance(str(m), str)
    # special case where we should not attempt to inline into itself
    inner = Node('x')
    n = Node('define-fun', 'x', (), 'Bool', ('not', inner))
    smtlib.collect_information([n])
    assert m.filter(inner)
    assert check_mutations(m, inner, [])

    n = Node('define-fun', 'x', (), 'Bool', inner)
    smtlib.collect_information([n])
    assert m.mutations(inner) == []

    inner = Node('x')
    expr = Node(inner, 'a', 'b')
    smtlib.collect_information([
        Node('define-fun', 'x', (('y', 'Bool'), ('z', 'Bool')), 'Bool',
             ('and', 'y', 'z'))
    ])
    assert m.filter(expr)
    assert check_mutations(m, expr, [Node('and', 'a', 'b')])
    smtlib.reset_information()


def test_smtlib_introduce_fresh_variable():
    smtlib.reset_information()
    m = mutators_smtlib.IntroduceFreshVariable()
    assert isinstance(str(m), str)

    decl = [
        Node('declare-const', 'x', 'Bool'),
        Node('declare-const', 'y', ('_', 'BitVec', 8)),
        Node('declare-const', 'z', ('_', 'BitVec', 8)),
    ]
    smtlib.collect_information(decl)
    term = Node('not', 'x')
    exprs = [*decl, Node('assert', term)]
    assert not m.filter(Node('false'))
    assert not m.filter(Node('x'))
    assert m.filter(term)
    assert check_global_mutations(m, term, exprs, [[
        Node('declare-const', f'x{term.id}__fresh', 'Bool'), *decl,
        Node('assert', f'x{term.id}__fresh')
    ]])

    # actually, it is much more important to check that this mutator
    # does *not* apply for various cases, as it quickly leads to cycles.
    assert not m.filter(Node('false'))
    assert not m.filter(Node('1.0'))
    assert not m.filter(Node('_', 'bv123', '8'))
    assert not m.filter(Node('y'))
    assert not m.filter(Node(('_', 'zero_extend', '8'), 'y'))
    assert not m.filter(Node(('_', 'zero_extend', '0'), 'y'))
    assert m.filter(Node('bvor', 'y', 'z'))
    assert m.filter(Node('bvor', 'y', 'y'))


def test_smtlib_let_elimination():
    m = mutators_smtlib.LetElimination()
    assert isinstance(str(m), str)
    assert not m.filter(Node('and', 'x', 'y'))

    n = Node('let', (('a', 'x'), ('b', 'y')), ('and', 'a', 'b'))
    assert m.filter(n)
    assert check_mutations(m, n, [('and', 'a', 'b')])

    n = Node(
        'let',
        (('a', 'x'), ('b', 'y')),
    )
    assert m.filter(n)
    assert check_mutations(m, n, [])


def test_smtlib_let_substitution():
    m = mutators_smtlib.LetSubstitution()
    assert isinstance(str(m), str)
    assert not m.filter(Node('and', 'x', 'y'))
    n = Node('let', (('a', 'x'), ('b', 'y')), ('and', 'a', 'b'))
    assert m.filter(n)
    assert check_mutations(m, n, [('let', (('a', 'x'), ('b', 'y')),
                                   ('and', 'x', 'b')),
                                  ('let', (('a', 'x'), ('b', 'y')),
                                   ('and', 'a', 'y'))])
    n = Node('let', (('a', 'x'), ('b', 'y')), ('and', 'abc', 'def'))
    assert m.filter(n)
    assert check_mutations(m, n, [])

    n = Node('let', (('a', 'x'), ('b', 'y')))
    assert m.filter(n)
    assert check_mutations(m, n, [])


def test_smtlib_remove_annotation():
    m = mutators_smtlib.RemoveAnnotation()
    assert isinstance(str(m), str)

    assert not m.filter(Node('x'))
    assert not m.filter(Node('and', 'x', 'y'))
    assert m.filter(Node('!', 'x', ':foo'))
    assert m.filter(Node('!', ('and', 'x', 'y'), ':foo', 'bar'))
    assert check_mutations(m, Node('!', 'x', ':foo'), [('x')])
    assert check_mutations(m, Node('!', ('and', 'x', 'y'), ':foo', 'bar'),
                           [('and', 'x', 'y')])


def test_smtlib_simplify_logic():
    m = mutators_smtlib.SimplifyLogic()
    assert isinstance(str(m), str)

    assert not m.filter(Node('assert', 'x'))
    assert m.filter(Node('set-logic', 'QF_NRA'))
    assert check_mutations(m, Node('set-logic', 'QF_NRA'),
                           [('set-logic', 'QF_LRA')])
    assert check_mutations(m, Node('set-logic', 'QF_BVFPLRAS'), [
        ('set-logic', 'QF_FPLRAS'),
        ('set-logic', 'QF_BVLRAS'),
        ('set-logic', 'QF_BVFPLRA'),
        ('set-logic', 'QF_BVFPS'),
    ])


def test_smtlib_quoted_symbols():
    m = mutators_smtlib.SimplifyQuotedSymbols()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    assert m.filter(Node('|x|'))
    assert not m.filter(Node('|"x|'))
    assert not m.filter(Node('and', 'x', 'y'))
    assert not m.filter(Node('and', '|x|', 'y'))
    assert check_mutations(m, Node('|x|'), ['x'])
    assert check_global_mutations(m, Node('|x|'), Node('assert', '|x|'),
                                  [Node('assert', 'x')])


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
    smtlib.collect_information(exprs)
    assert check_global_mutations(m, exprs[0], exprs, [
        apply_simp(exprs, Simplification({Node('abcdef'): Node('abc')}, [])),
        apply_simp(exprs, Simplification({Node('abcdef'): Node('abcde')}, [])),
        apply_simp(exprs, Simplification({Node('abcdef'): Node('bcdef')}, []))
    ])
    assert check_global_mutations(m, exprs[1], exprs, [
        apply_simp(exprs, Simplification({Node('Color'): Node('Co')}, [])),
        apply_simp(exprs, Simplification({Node('Color'): Node('Colo')}, [])),
        apply_simp(exprs, Simplification({Node('Color'): Node('olor')}, [])),
        apply_simp(exprs, Simplification({Node('red'): Node('re')}, [])),
        apply_simp(exprs, Simplification({Node('red'): Node('ed')}, [])),
        apply_simp(exprs, Simplification({Node('|green|'): Node('|gr|')}, [])),
        apply_simp(exprs, Simplification({Node('|green|'): Node('|gree|')},
                                         [])),
        apply_simp(exprs, Simplification({Node('|green|'): Node('|reen|')},
                                         []))
    ])
    assert check_global_mutations(m, exprs[3][1], exprs, [
        apply_simp(exprs, Simplification({Node('xy'): Node('x')}, [])),
        apply_simp(exprs, Simplification({Node('xy'): Node('y')}, []))
    ])


def test_smtlib_remove_recursive_function():
    m = mutators_smtlib.RemoveRecursiveFunction()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    n = Node(
        'define-funs-rec',
        (
            ('a', (), 'Bool'),
            ('b', (), 'Bool'),
        ),
        (
            'true',
            'a',
        ),
    )
    assert m.filter(n)
    assert check_mutations(m, n, [
        Node('define-funs-rec', (('b', (), 'Bool'), ), ('a', )),
        Node('define-funs-rec', (('a', (), 'Bool'), ), ('true', )),
    ])
