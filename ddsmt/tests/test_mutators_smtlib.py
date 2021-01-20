from ..nodes import Node
from .. import mutators_smtlib
from .. import smtlib


def test_smtlib_get_mutators():
    d = mutators_smtlib.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 9


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
