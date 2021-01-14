from ..nodes import Node
from .. import mutators_bv
from .. import smtlib


def test_bv_concat_to_zero_extend():
    r = Node('r')
    x = Node('x')
    const = Node('declare-const', r, 'Real')
    const8 = Node('declare-const', x, ('_', 'BitVec', 8))
    val8_0 = '#b00000000'
    val8_1 = '#b01011100'
    conc16_0 = Node('concat', x, val8_0)
    conc16_1 = Node('concat', x, val8_1)
    conc16_2 = Node('concat', x, x)
    conc16_3 = Node('concat', x, r)
    conc16_4 = Node('concat', val8_0, x)
    exprs = [conc16_0, conc16_1, conc16_2, conc16_3, conc16_4]
    smtlib.collect_information(exprs)
    m = mutators_bv.BVConcatToZeroExtend()
    assert not m.filter(const)
    assert not m.filter(conc16_0)
    assert not m.filter(conc16_1)
    assert not m.filter(conc16_2)
    assert not m.filter(conc16_3)
    assert m.filter(conc16_4)
    assert m.mutations(conc16_4) == [Node(('_', 'zero_extend', 8), 'x')]


def test_bv_double_negation():
    x = Node('x')
    bvnot = Node('bvnot', Node('bvnot', x))
    bvneg = Node('bvneg', Node('bvneg', x))
    m = mutators_bv.BVDoubleNegation()
    assert not m.filter(Node('bvadd', x, x))
    assert m.filter(bvnot)
    assert m.filter(bvneg)
    assert m.mutations(bvnot) == [x]
    assert m.mutations(bvneg) == [x]


def test_bv_elim_bvcomp():
    x = Node('x')
    const = Node('#011')
    const0 = Node('#b0')
    const1 = Node('#b1')
    bvcomp = Node('bvcomp', x, x)
    eq0_1 = Node('=', const0, bvcomp)
    eq1_1 = Node('=', const0, bvcomp, x)
    eq2_1 = Node('=', const0, x, bvcomp, x)
    eq0_2 = Node('=', const1, bvcomp)
    eq1_2 = Node('=', const1, bvcomp, x)
    eq2_2 = Node('=', const1, x, bvcomp, x)
    eq_x = Node('=', x, x)
    ne_x = Node('not', eq_x)
    m = mutators_bv.BVElimBVComp()
    assert not m.filter(x)
    assert not m.filter(Node('=', x, x))
    assert not m.filter(Node('=', const0, x, x))
    assert not m.filter(Node('=', const, bvcomp))
    assert m.filter(eq0_1)
    assert m.filter(eq1_1)
    assert m.filter(eq2_1)
    assert m.filter(eq0_2)
    assert m.filter(eq1_2)
    assert m.filter(eq2_2)
    assert m.mutations(eq0_1) == [ne_x]
    assert m.mutations(eq1_1) == [Node('and', ne_x, ('=', const0, x))]
    assert m.mutations(eq2_1) == [
        Node('and', ('=', const0, x), ne_x, ('=', const0, x))
    ]
    assert m.mutations(eq0_2) == [Node('=', x, x)]
    assert m.mutations(eq1_2) == [Node('and', eq_x, ('=', const1, x))]
    assert m.mutations(eq2_2) == [
        Node('and', ('=', const1, x), eq_x, ('=', const1, x))
    ]


def test_bv_eval_extend():
    x = Node('x')
    const0_1 = Node('#b011')
    const0_2 = Node('_', 'bv3', 3)
    const1_1 = Node('#b101')
    const1_2 = Node('_', 'bv5', 3)
    zext0_1 = Node(('_', 'zero_extend', 2), const0_1)
    zext0_2 = Node(('_', 'zero_extend', 2), const0_2)
    zext1_1 = Node(('_', 'zero_extend', 2), const1_1)
    zext1_2 = Node(('_', 'zero_extend', 2), const1_2)
    sext0_1 = Node(('_', 'sign_extend', 2), const0_1)
    sext0_2 = Node(('_', 'sign_extend', 2), const0_2)
    sext1_1 = Node(('_', 'sign_extend', 2), const1_1)
    sext1_2 = Node(('_', 'sign_extend', 2), const1_2)
    m = mutators_bv.BVEvalExtend()
    assert not m.filter(Node('bvand', x, x))
    assert not m.filter(Node(('_', 'zero_extend', 2), x))
    assert not m.filter(Node(('zero_extend', 2), const0_1))
    assert m.filter(zext0_1)
    assert m.filter(zext0_2)
    assert m.filter(zext1_1)
    assert m.filter(zext1_2)
    assert m.filter(sext0_1)
    assert m.filter(sext0_2)
    assert m.filter(sext1_1)
    assert m.filter(sext1_2)
    assert m.mutations(zext0_1) == [Node('_', 'bv3', 5)]
    assert m.mutations(zext0_2) == [Node('_', 'bv3', 5)]
    assert m.mutations(zext1_1) == [Node('_', 'bv5', 5)]
    assert m.mutations(zext1_2) == [Node('_', 'bv5', 5)]
    assert m.mutations(sext0_1) == [Node('_', 'bv3', 5)]
    assert m.mutations(sext0_2) == [Node('_', 'bv3', 5)]
    assert m.mutations(sext1_1) == [Node('#b11101')]
    assert m.mutations(sext1_2) == [Node('#b11101')]


# TODO
#class BVExtractConstants:
#class BVOneZeroITE:
#class BVReflexiveNand:
#class BVSimplifyConstant:
#class BVTransformToBool:
#class BVReduceBW:
#class BVMergeReducedBW:
