from ..nodes import Node
from .. import mutators_boolean


def test_bool_de_morgan():
    m = mutators_boolean.BoolDeMorgan()
    notfilter = [
        Node('=', '1', 'y'),
        Node('and', 'x', 'y'),
        Node('or', 'x', 'y'),
    ]
    exprs = {
        Node('not', ('and', 'x', 'y')):
        [Node('or', ('not', 'x'), ('not', 'y'))],
        Node('not', ('or', 'x', 'y')):
        [Node('and', ('not', 'x'), ('not', 'y'))],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v


def test_bool_double_negation():
    m = mutators_boolean.BoolDoubleNegation()
    notfilter = [
        Node('not', ('=', '1', 'y')),
        Node('not', ('and', 'x', 'y')),
        Node('not', ('or', 'x', 'y')),
    ]
    exprs = {
        Node('not', ('not', 'x')): [Node('x')],
        Node('not', ('not', ('or', 'x', 'y'))): [Node('or', 'x', 'y')],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v


def test_bool_eliminate_false_equality():
    m = mutators_boolean.BoolEliminateFalseEquality()
    notfilter = [
        Node('not', ('=', '1', 'y')),
        Node('=', 'true', 'x', 'y'),
        Node('not', ('=', 'false', 'y')),
    ]
    exprs = {
        Node('=', 'false'): [],
        Node('=', 'false', 'x'): [Node('not', 'x')],
        Node('=', 'x', 'false', 'y'):
        [Node('and', ('not', 'x'), ('not', 'y'))],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v
