from ..nodes import Node
from .. import mutators_strings
from .utils import *
from ..mutator_utils import *


def test_strings_get_mutators():
    d = mutators_strings.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 5


def test_strings_is_relevant():
    assert mutators_strings.is_relevant(Node('declare-const', 'x', 'String'))
    assert mutators_strings.is_relevant(Node('declare-fun', 'x', (), 'String'))
    assert not mutators_strings.is_relevant(Node('declare-const', 'x', 'Real'))
    assert not mutators_strings.is_relevant(
        Node('declare-fun', 'x', (), 'Real'))
    assert not mutators_strings.is_relevant(Node())
    assert not mutators_strings.is_relevant(Node('assert', 'x'))


def test_strings_seqnthunit():
    expr = Node('seq.nth', ('seq.unit', 'x'), 'y')
    target = Node('x')
    m = mutators_strings.SeqNthUnit()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert check_mutations(m, expr, [target])


def test_strings_simplify_constant():
    expr = Node('"abc123"')
    gexpr = Node('define-fun', 's', (), 'String', '"abc123"')
    m = mutators_strings.StringSimplifyConstant()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert check_mutations(m, expr, [
        Node('""'),
        Node('"abc"'),
        Node('"123"'),
        Node('"bc123"'),
        Node('"abc12"')
    ])

    assert check_global_mutations(m, expr, gexpr, [
        apply_simp(gexpr, Simplification({Node('"abc123"'): Node('""')}, [])),
        apply_simp(gexpr, Simplification({Node('"abc123"'): Node('"abc"')},
                                         [])),
        apply_simp(gexpr, Simplification({Node('"abc123"'): Node('"123"')},
                                         [])),
        apply_simp(gexpr,
                   Simplification({Node('"abc123"'): Node('"bc123"')}, [])),
        apply_simp(gexpr,
                   Simplification({Node('"abc123"'): Node('"abc12"')}, []))
    ])

    assert check_mutations(m, Node('"abcdefg\\uab"'), [
        Node('""'),
        Node('"abcde"'),
        Node('"fg\\uab"'),
        Node('"abcdefg"'),
        Node('"abcdeuab"'),
        Node('"abfg\\uab"'),
        Node('"cdefg\\uab"'),
        Node('"bcdefg\\uab"'),
        Node('"abcdefg\\ua"'),
    ])


def test_strings_replace_all():
    expr = Node('str.replace_all', 'x', 'from', 'to')
    target = Node('str.replace', 'x', 'from', 'to')
    m = mutators_strings.StringReplaceAll()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert check_mutations(m, expr, [target])


def test_strings_indexof_not_found():
    expr = Node('str.indexof', 'x', '0', '10')
    target = Node('-', '1')
    m = mutators_strings.StringIndexOfNotFound()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert check_mutations(m, expr, [target])


def test_strings_contains_to_concat():
    expr = Node('str.contains', 'x', 'y')
    exprs = [
        Node('set-logic', 'QF_S'),
        Node('declare-const', 'x', 'String'),
        Node('declare-fun', 'y', (), 'String'),
        Node('assert', expr),
    ]
    target = [
        Node('set-logic', 'QF_S'),
        Node('declare-const', 'x_prefix', 'String'),
        Node('declare-const', 'x_suffix', 'String'),
        Node('declare-const', 'x', 'String'),
        Node('declare-fun', 'y', (), 'String'),
        Node('assert', ('=', 'x', ('str.++', 'x_prefix', 'y', 'x_suffix'))),
    ]
    m = mutators_strings.StringContainsToConcat()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert check_global_mutations(m, expr, exprs, [target])
