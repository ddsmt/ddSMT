from ..nodes import Node
from .. import mutators_fp
from .. import smtlib


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
