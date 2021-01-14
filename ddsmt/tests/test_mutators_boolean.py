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


def test_bool_eliminate_implication():
    m = mutators_boolean.BoolEliminateImplication()
    notfilter = [
        Node('or', 'true', 'y'),
        Node('not', ('=>', 'false', 'y')),
    ]
    exprs = {
        Node('=>', 'x'): [],
        Node('=>', 'x', 'y'): [Node('or', ('not', 'x'), 'y')],
        Node('=>', 'x', 'y', 'z'):
        [Node('and', ('or', ('not', 'x'), 'y'), ('or', ('not', 'y'), 'z'))],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v


def test_bool_negate_quantifier():
    m = mutators_boolean.BoolNegateQuantifier()
    notfilter = [
        Node('forall', ('Real', 'x'), 'y'),
        Node('not', ('or', 'x', 'y')),
    ]
    exprs = {
        Node('not', ('forall', ('Real', 'x'), 'y')):
        [Node('exists', ('Real', 'x'), ('not', 'y'))],
        Node('not', ('exists', ('Real', 'x'), 'y')):
        [Node('forall', ('Real', 'x'), ('not', 'y'))],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v


def test_bool_xor_eliminate_binary():
    m = mutators_boolean.BoolXOREliminateBinary()
    notfilter = [
        Node('or', 'x', 'y'),
        Node('xor', 'x', 'y', 'z'),
    ]
    exprs = {
        Node('xor', 'x', 'y'): [Node('distinct', 'x', 'y')],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v


def test_bool_xor_remove_constant():
    m = mutators_boolean.BoolXORRemoveConstant()
    notfilter = [
        Node('or', 'x', 'y', 'false'),
        Node('and', 'true', 'z'),
    ]
    exprs = {
        Node('xor', 'x', 'y'): [],
        Node('xor', 'false', 'y'): [Node('xor', 'y')],
        Node('xor', 'false', 'y', 'z', 'false'): [Node('xor', 'y', 'z')],
        Node('xor', 'true', 'y'):
        [Node('xor', 'y'), Node('not', ('xor', 'y'))],
        Node('xor', 'true', 'y', 'z', 'true'):
        [Node('xor', 'y', 'z'),
         Node('not', ('xor', 'y', 'z'))],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v
