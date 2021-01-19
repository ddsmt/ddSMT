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


def test_bv_extract_constants():
    x = Node('x')
    const1 = Node('#b011')
    const2 = Node('_', 'bv3', 3)
    ext0_1 = Node(('_', 'extract', 0, 0), const1)
    ext0_2 = Node(('_', 'extract', 1, 0), const1)
    ext0_3 = Node(('_', 'extract', 2, 0), const1)
    ext1_1 = Node(('_', 'extract', 0, 0), const2)
    ext1_2 = Node(('_', 'extract', 1, 1), const2)
    ext1_3 = Node(('_', 'extract', 2, 2), const2)
    m = mutators_bv.BVExtractConstants()
    assert not m.filter(Node(('_', 'extract', 0, 0), ('bvadd', 'x', 'y')))
    assert m.filter(ext0_1)
    assert m.filter(ext0_2)
    assert m.filter(ext0_3)
    assert m.filter(ext1_1)
    assert m.filter(ext1_2)
    assert m.filter(ext1_3)
    assert m.mutations(ext0_1) == [Node('#b1')]
    assert m.mutations(ext0_2) == [Node('#b11')]
    assert m.mutations(ext0_3) == [Node('#b011')]
    assert m.mutations(ext1_1) == [Node('#b1')]
    assert m.mutations(ext1_2) == [Node('#b1')]
    assert m.mutations(ext1_3) == [Node('#b0')]


def test_bv_extract_zero_extend():
    x = Node('x')
    ext1 = Node(('_', 'extract', 7, 5), (('_', 'zero_extend', 4), x))
    ext2 = Node(('_', 'extract', 1, 0), (('_', 'zero_extend', 4), x))
    ext3 = Node(('_', 'extract', 5, 3), (('_', 'zero_extend', 4), x))
    exprs = [Node('declare-const', x, ('_', 'BitVec', 4)), ext1, ext2, ext3]
    m = mutators_bv.BVExtractZeroExtend()
    assert not m.filter(Node(('_', 'extract', 7, 5), x))
    assert m.filter(ext1)
    assert m.filter(ext2)
    assert m.filter(ext3)
    assert m.mutations(ext1) == []
    smtlib.collect_information(exprs)
    assert m.mutations(ext1) == [Node('_', 'bv0', 3)]
    assert m.mutations(ext2) == [Node(('_', 'extract', 1, 0), x)]
    assert m.mutations(ext3) == [
        Node(('_', 'zero_extend', 2), (('_', 'extract', 3, 3), x))
    ]
    smtlib.reset_information()


def test_bv_ite_to_bvcomp():
    m = mutators_bv.BVIteToBVComp()
    assert not m.filter(Node('x'))
    assert not m.filter(Node('=', 'x', 'y'))
    assert not m.filter(Node('ite', 'c', 'x', 'y'))
    assert not m.filter(Node('ite', ('=', 'z', 'z'), '#b1', '#b0'))
    assert not m.filter(Node('ite', ('=', 'x', 'y'), '#b1', '#b0'))
    declx = Node('declare-const', 'x', ('_', 'BitVec', 4))
    decly = Node('declare-const', 'y', ('_', 'BitVec', 4))
    declz = Node('declare-const', 'z', 'Int')
    ite = Node('ite', ('=', 'x', 'y'), '#b1', '#b0')
    exprs = [declx, decly, declz, ite]
    smtlib.collect_information(exprs)
    assert not m.filter(Node('ite', ('=', 'z', 'z'), '#b1', '#b0'))
    assert not m.filter(Node('ite', ('=', 'x', 'y'), '#b11', '#b01'))
    assert m.filter(ite)
    assert m.mutations(ite) == [Node('bvcomp', 'x', 'y')]
    smtlib.reset_information()


# TODO
#class BVReflexiveNand:
#class BVSimplifyConstant:
#class BVTransformToBool:
#class BVReduceBW:
#class BVMergeReducedBW:
