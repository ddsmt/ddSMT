from ..nodes import Node
from .. import mutators_arithmetic


def test_arith_get_mutators():
    d = mutators_arithmetic.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 4


def test_arith_is_relevant():
    assert mutators_arithmetic.is_relevant(Node('declare-const', 'x', 'Real'))
    assert mutators_arithmetic.is_relevant(Node('declare-fun', 'x', (),
                                                'Real'))
    assert not mutators_arithmetic.is_relevant(
        Node('declare-const', 'x', 'Bool'))
    assert not mutators_arithmetic.is_relevant(
        Node('declare-fun', 'x', (), 'String'))
    assert not mutators_arithmetic.is_relevant(Node())
    assert not mutators_arithmetic.is_relevant(Node('assert', 'x'))


def test_arith_negate_relation():
    m = mutators_arithmetic.ArithmeticNegateRelation()
    assert isinstance(str(m), str)
    notfilter = [
        Node('>', 'x', 'y'),
        Node('=', '1', 'y'),
        Node('distinct', '1', 'y'),
        Node('not', ('and', 'y', 'x')),
    ]
    exprs = {
        Node('not', ('=', 'x', 'y')): [Node('distinct', 'x', 'y')],
        Node('not', ('>', '1', 'y')): [Node('<=', '1', 'y')],
        Node('not', ('distinct', 'x', 'y')): [Node('=', 'x', 'y')],
        Node('not', ('<>', 'x', 'y')): [Node('=', 'x', 'y')],
        Node('not', ('!=', 'x', 'y')): [Node('=', 'x', 'y')],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v


def test_arith_simplify_constant():
    m = mutators_arithmetic.ArithmeticSimplifyConstant()
    assert isinstance(str(m), str)
    notfilter = [
        Node('x'),
        Node('+', '1.0', 'x'),
        Node('0'),
        Node('0.0'),
        Node('1'),
        Node('1.0')
    ]
    exprs = {
        Node('2'): [Node('1'), Node('0')],
        Node('13'): [Node('6'), Node('1')],
        Node('20'): [Node('10'), Node('2')],
        Node('50'): [Node('25'), Node('5')],
        Node('1.5'): [Node('1'), Node('1.')],
        Node('3.1415'): [Node('3'), Node('3.141')],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v

    exprs = [
        Node('assert', ('=', '13', 'y')),
        Node('assert', ('>', '13', 'z')),
        Node('assert', ('<', 'y', 'z')),
    ]
    x = Node('13')
    assert m.filter(x)
    assert list(m.global_mutations(x, exprs)) == [
        {
            x: Node('6')
        },
        {
            x: Node('1')
        },
    ]


def test_arith_split_nary_relations():
    m = mutators_arithmetic.ArithmeticSplitNaryRelation()
    assert isinstance(str(m), str)
    notfilter = [Node('>'), Node('>', 'x', 'y'), Node('+', 'x', 'y')]
    exprs = {
        Node('=', 'a', 'b', 'c'):
        [Node('and', ('=', 'a', 'b'), ('=', 'b', 'c'))],
        Node('>', 'a', 'b', 'c'):
        [Node('and', ('>', 'a', 'b'), ('>', 'b', 'c'))],
        Node('<', 'a', 'b', 'c', 'd'):
        [Node('and', ('<', 'a', 'b'), ('<', 'b', 'c'), ('<', 'c', 'd'))],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v


def test_arith_strengthen_relations():
    m = mutators_arithmetic.ArithmeticStrengthenRelation()
    assert isinstance(str(m), str)
    notfilter = [Node('=', 'x', 'y'), Node('distinct', 'x', 'y')]
    exprs = {
        Node('<', 'a', 'b'): [Node('=', 'a', 'b')],
        Node('>', 'a', 'b'): [Node('=', 'a', 'b')],
        Node('<=', 'a', 'b'): [Node('<', 'a', 'b'),
                               Node('=', 'a', 'b')],
        Node('>=', 'a', 'b'): [Node('>', 'a', 'b'),
                               Node('=', 'a', 'b')],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v
