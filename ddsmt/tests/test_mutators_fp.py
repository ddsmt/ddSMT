from ..nodes import Node
from .. import mutators_fp


def test_fp_get_mutators():
    d = mutators_fp.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 1


def test_fp_is_relevant():
    assert mutators_fp.is_relevant(Node('declare-const', 'x', 'Float16'))
    assert mutators_fp.is_relevant(
        Node('declare-fun', 'x', (), ('_', 'FloatingPoint', '5', '11')))
    assert not mutators_fp.is_relevant(Node('declare-const', 'x', 'Real'))
    assert not mutators_fp.is_relevant(Node('declare-fun', 'x', (), 'Bool'))
    assert not mutators_fp.is_relevant(Node())
    assert not mutators_fp.is_relevant(Node('assert', 'x'))


def test_fp_short_sort():
    m = mutators_fp.FPShortSort()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    assert not m.filter(
        Node('declare-const', 'x', ('_', 'FloatingPoint', 3, 5)))
    assert not m.filter(Node('Float16'))
    assert not m.filter(Node('_', 'FloatingPoint', 5))
    assert not m.filter(Node('_', 'FloatingPoin', 5, 11))
    assert m.filter(Node('_', 'FloatingPoint', 3, 5))
    assert m.mutations(Node('_', 'FloatingPoint', 3, 5)) == []
    assert m.mutations(Node('_', 'FloatingPoint', 5, 11)) == [Node('Float16')]
    assert m.mutations(Node('_', 'FloatingPoint', 8, 24)) == [Node('Float32')]
    assert m.mutations(Node('_', 'FloatingPoint', 11, 53)) == [Node('Float64')]
    assert m.mutations(Node('_', 'FloatingPoint', 15,
                            113)) == [Node('Float128')]
