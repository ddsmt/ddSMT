from ..nodes import Node
from .. import mutators_strings
from .. import smtlib


def test_strings_replace_all():
    expr = Node('str.replace_all', 'x', 'from', 'to')
    target = Node('str.replace', 'x', 'from', 'to')
    m = mutators_strings.StringReplaceAll()
    assert m.filter(expr)
    assert m.mutations(expr) == [target]


def test_strings_indexof_not_found():
    expr = Node('str.indexof', 'x', '0', '10')
    target = Node('-', '1')
    m = mutators_strings.StringIndexOfNotFound()
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
    assert m.filter(expr)
    res = m.global_mutations(expr, exprs)
    print(res)
    assert res == target
