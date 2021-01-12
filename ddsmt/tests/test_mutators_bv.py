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


# TODO
#class BVDoubleNegation:
#class BVElimBVComp:
#class BVEvalExtend:
#class BVExtractConstants:
#class BVOneZeroITE:
#class BVReflexiveNand:
#class BVSimplifyConstant:
#class BVTransformToBool:
#class BVReduceBW:
#class BVMergeReducedBW:
