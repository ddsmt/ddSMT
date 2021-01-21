from ..nodes import Node
from .. import mutators_strings
from .. import smtlib


def test_strings_get_mutators():
    d = mutators_strings.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 4


def test_strings_is_relevant():
    assert mutators_strings.is_relevant(Node('declare-const', 'x', 'String'))
    assert mutators_strings.is_relevant(Node('declare-fun', 'x', (), 'String'))
    assert not mutators_strings.is_relevant(Node('declare-const', 'x', 'Real'))
    assert not mutators_strings.is_relevant(
        Node('declare-fun', 'x', (), 'Real'))
    assert not mutators_strings.is_relevant(Node())
    assert not mutators_strings.is_relevant(Node('assert', 'x'))


def test_strings_simplify_constant():
    expr = Node('"abc123"')
    gexpr = Node('define-fun', 's', (), 'String', '"abc123"')
    m = mutators_strings.StringSimplifyConstant()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert m.mutations(expr) == [
        Node('""'),
        Node('"abc"'),
        Node('"bc123"'),
        Node('"abc12"')
    ]

    assert m.global_mutations(expr, gexpr) == [
        Node('define-fun', 's', (), 'String', '""'),
        Node('define-fun', 's', (), 'String', '"abc"'),
        Node('define-fun', 's', (), 'String', '"bc123"'),
        Node('define-fun', 's', (), 'String', '"abc12"'),
    ]


def test_strings_replace_all():
    expr = Node('str.replace_all', 'x', 'from', 'to')
    target = Node('str.replace', 'x', 'from', 'to')
    m = mutators_strings.StringReplaceAll()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert m.mutations(expr) == [target]


def test_strings_indexof_not_found():
    expr = Node('str.indexof', 'x', '0', '10')
    target = Node('-', '1')
    m = mutators_strings.StringIndexOfNotFound()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    assert m.mutations(expr) == [target]


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
        Node('declare-const', 'x', 'String'),
        Node('declare-fun', 'y', (), 'String'),
        Node('declare-const', 'x_prefix', 'String'),
        Node('declare-const', 'x_suffix', 'String'),
        Node('assert', ('=', 'x', ('str.++', 'x_prefix', 'y', 'x_suffix'))),
    ]
    m = mutators_strings.StringContainsToConcat()
    assert isinstance(str(m), str)
    assert m.filter(expr)
    res = m.global_mutations(expr, exprs)
    assert res == target
