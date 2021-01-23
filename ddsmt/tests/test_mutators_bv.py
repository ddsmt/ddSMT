from ..nodes import Node
from .. import mutators_bv
from .. import smtlib


def test_bv_get_mutators():
    d = mutators_bv.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 12


def test_bv_is_relevant():
    assert mutators_bv.is_relevant(
        Node('declare-const', 'x', ('_', 'BitVec', '17')))
    assert mutators_bv.is_relevant(
        Node('declare-fun', 'x', (), ('_', 'BitVec', '5')))
    assert mutators_bv.is_relevant(
        Node('define-sort', 'x', (), ('_', 'BitVec', '5')))
    assert not mutators_bv.is_relevant(Node('bvadd', 'x', 'y'))
    assert not mutators_bv.is_relevant(Node('declare-const', 'x', 'Int'))
    assert not mutators_bv.is_relevant(Node('declare-fun', 'x', (), 'Bool'))
    assert not mutators_bv.is_relevant(Node('x'))


def test_bv_concat_to_zero_extend():
    smtlib.reset_information()
    m = mutators_bv.BVConcatToZeroExtend()
    assert isinstance(str(m), str)
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
    assert not m.filter(const)
    assert not m.filter(conc16_0)
    assert not m.filter(conc16_1)
    assert not m.filter(conc16_2)
    assert not m.filter(conc16_3)
    assert m.filter(conc16_4)
    assert m.mutations(conc16_4) == [Node(('_', 'zero_extend', 8), 'x')]


def test_bv_double_negation():
    m = mutators_bv.BVDoubleNegation()
    assert isinstance(str(m), str)
    x = Node('x')
    bvnot = Node('bvnot', Node('bvnot', x))
    bvneg = Node('bvneg', Node('bvneg', x))
    assert not m.filter(Node('bvadd', x, x))
    assert m.filter(bvnot)
    assert m.filter(bvneg)
    assert m.mutations(bvnot) == [x]
    assert m.mutations(bvneg) == [x]


def test_bv_elim_bvcomp():
    m = mutators_bv.BVElimBVComp()
    assert isinstance(str(m), str)
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
    m = mutators_bv.BVEvalExtend()
    assert isinstance(str(m), str)
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
    m = mutators_bv.BVExtractConstants()
    assert isinstance(str(m), str)
    x = Node('x')
    const0 = Node('#b011')
    const1 = Node('_', 'bv3', 3)
    const2 = Node('_', 'bv7', 3)
    ext0_1 = Node(('_', 'extract', 0, 0), const0)
    ext0_2 = Node(('_', 'extract', 1, 0), const0)
    ext0_3 = Node(('_', 'extract', 2, 0), const0)
    ext1_1 = Node(('_', 'extract', 2, 0), const1)
    ext1_2 = Node(('_', 'extract', 2, 1), const1)
    ext1_3 = Node(('_', 'extract', 2, 2), const1)
    ext2_1 = Node(('_', 'extract', 1, 1), const2)
    ext2_2 = Node(('_', 'extract', 2, 1), const2)
    ext2_3 = Node(('_', 'extract', 2, 2), const2)
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
    assert m.mutations(ext1_1) == [Node('#b011')]
    assert m.mutations(ext1_2) == [Node('#b01')]
    assert m.mutations(ext1_3) == [Node('#b0')]
    assert m.mutations(ext2_1) == [Node('#b1')]
    assert m.mutations(ext2_2) == [Node('#b11')]
    assert m.mutations(ext2_3) == [Node('#b1')]


def test_bv_extract_zero_extend():
    smtlib.reset_information()
    m = mutators_bv.BVExtractZeroExtend()
    assert isinstance(str(m), str)
    x = Node('x')
    ext1 = Node(('_', 'extract', 7, 5), (('_', 'zero_extend', 4), x))
    ext2 = Node(('_', 'extract', 1, 0), (('_', 'zero_extend', 4), x))
    ext3 = Node(('_', 'extract', 5, 3), (('_', 'zero_extend', 4), x))
    exprs = [Node('declare-const', x, ('_', 'BitVec', 4)), ext1, ext2, ext3]
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


def test_bv_ite_to_bvcomp():
    smtlib.reset_information()
    m = mutators_bv.BVIteToBVComp()
    assert isinstance(str(m), str)
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
    assert not m.filter(Node('ite', ('=', 'x', 'y'), '#b1', '#b1'))
    assert not m.filter(Node('ite', ('=', 'x', 'y'), '#b11', '#b01'))
    assert m.filter(ite)
    assert m.mutations(ite) == [Node('bvcomp', 'x', 'y')]


def test_reflexive_nand():
    m = mutators_bv.BVReflexiveNand()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    assert not m.filter(Node('bvor', 'x', 'y'))
    assert not m.filter(Node('bvnand', 'x', 'y'))
    assert m.filter(Node('bvnand', 'x', 'x'))
    assert m.mutations(Node('bvnand', 'x', 'x')) == [Node('bvnot', 'x')]


def test_simplify_constant():
    m = mutators_bv.BVSimplifyConstant()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    assert not m.filter(Node('declare-const', 'x', ('_', 'BitVec', 4)))
    assert not m.filter(Node('0'))
    assert not m.filter(Node('1'))
    assert not m.filter(Node('#x0'))
    assert not m.filter(Node('#x1'))
    assert not m.filter(Node('#b0'))
    assert not m.filter(Node('#b1'))
    assert not m.filter(Node('_', 'bv0', 8))
    assert not m.filter(Node('_', 'bv1', 8))
    assert m.filter(Node('#b10'))
    assert m.filter(Node('#b11'))
    assert m.filter(Node('_', 'bv4', 3))
    assert m.mutations(Node('#b10')) == [Node('#b00'), Node('#b01')]
    bvconst = Node('#b11001010')
    assert m.mutations(bvconst) == [
        Node('#b00000000'),
        Node('#b00000001'),
        Node('#b00000110'),
        Node('#b00011001'),
        Node('#b01100101'),
    ]
    assert m.global_mutations(bvconst, [Node('assert', ('=', bvconst, 'x'))]) \
           == [
                [Node('assert', ('=', Node('#b00000000'), 'x'))],
                [Node('assert', ('=', Node('#b00000001'), 'x'))],
                [Node('assert', ('=', Node('#b00000110'), 'x'))],
                [Node('assert', ('=', Node('#b00011001'), 'x'))],
                [Node('assert', ('=', Node('#b01100101'), 'x'))],
           ]


def test_transform_to_bool():
    m = mutators_bv.BVTransformToBool()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    assert not m.filter(Node('=', 'x', 'y'))
    assert not m.filter(Node('=', '#b11', 'x'))
    assert not m.filter(Node('=', 'x', '#b1'))
    assert not m.filter(Node('=', '#b1', 'x'))
    assert not m.filter(Node('=', '#b1', ('bvand', 'x', 'y'), 'z'))
    assert m.filter(Node('=', '#b1', ('bvand', 'x', 'y')))
    assert m.filter(Node('=', ('bvand', 'x', 'y'), '#b1'))
    assert m.filter(Node('=', '#b1', ('bvand', 'x', 'y', 'z')))
    assert m.mutations(Node('=', '#b1', ('bvand', 'x', 'y', 'z'))) == [
        Node('and', ('=', '#b1', 'x'), ('=', '#b1', 'y'), ('=', '#b1', 'z'))
    ]
    assert m.mutations(Node('=', ('bvand', 'x', 'y', 'z'), '#b1')) == [
        Node('and', ('=', '#b1', 'x'), ('=', '#b1', 'y'), ('=', '#b1', 'z'))
    ]
    assert m.mutations(Node('=', '#b0', ('bvor', 'x', 'y', 'z'))) == [
        Node('or', ('=', '#b0', 'x'), ('=', '#b0', 'y'), ('=', '#b0', 'z'))
    ]
    assert m.mutations(Node('=', ('bvor', 'x', 'y', 'z'), '#b0')) == [
        Node('or', ('=', '#b0', 'x'), ('=', '#b0', 'y'), ('=', '#b0', 'z'))
    ]
    assert m.mutations(Node('=', '#b1', ('bvxor', 'x', 'y', 'z'))) == [
        Node('xor', ('=', '#b1', 'x'), ('=', '#b1', 'y'), ('=', '#b1', 'z'))
    ]
    assert m.mutations(Node('=', ('bvxor', 'x', 'y', 'z'), '#b0')) == [
        Node('xor', ('=', '#b0', 'x'), ('=', '#b0', 'y'), ('=', '#b0', 'z'))
    ]


def test_bv_reduce_bw():
    smtlib.reset_information()
    m = mutators_bv.BVReduceBW()
    assert isinstance(str(m), str)
    x = Node('x')
    y = Node('y')
    z = Node('z')
    r = Node('r')
    s = Node('s')
    a = Node('a')
    b = Node('b')
    c = Node('c')
    bvsort8 = Node('_', 'BitVec', 8)
    bvsort9 = Node('_', 'BitVec', 9)
    assert not m.filter(Node('bvadd', x, y))
    assert not m.filter(Node('declare-const', x, 'Int'))
    assert not m.filter(Node('declare-fun', y, ('Int', ), bvsort8))
    declx = Node('declare-const', x, bvsort8)
    decly = Node('declare-fun', y, (), bvsort8)
    assert not m.filter(declx)
    assert not m.filter(decly)
    exprs0 = [declx, decly]
    smtlib.collect_information(exprs0)
    assert m.filter(declx)
    assert m.filter(decly)
    declz = Node('declare-const', z, bvsort9)
    _exprs1 = [
        Node('declare-fun', r, (), 'Real'),
        Node('declare-const', s, 'String'),
        Node('declare-const', a, 'Float64'),
        Node('declare-const', b, ('_', 'FloatingPoint', 11, 53)),
        Node('declare-fun', c, (), ('_', 'FloatingPoint', 5, 11)),
        Node('assert', ('=', ('bvadd', x, y), (('_', 'extract', 24, 17), z))),
        Node('assert', ('<', ('+', r, r), 4)),
        Node('assert', ('distinct', ('str.++', s, s), "aaa")),
    ]
    exprs1 = [
        declx,
        decly,
        declz,
        *_exprs1,
    ]
    x8 = [
        Node('declare-const', '_x', ('_', 'BitVec', 1)),
        Node('declare-const', '_x', ('_', 'BitVec', 2)),
        Node('declare-const', '_x', ('_', 'BitVec', 4)),
        Node('declare-const', '_x', ('_', 'BitVec', 7)),
    ]
    y8 = [
        Node('declare-const', '_y', ('_', 'BitVec', 1)),
        Node('declare-const', '_y', ('_', 'BitVec', 2)),
        Node('declare-const', '_y', ('_', 'BitVec', 4)),
        Node('declare-const', '_y', ('_', 'BitVec', 7)),
    ]
    z9 = [
        Node('declare-const', '_z', ('_', 'BitVec', 1)),
        Node('declare-const', '_z', ('_', 'BitVec', 2)),
        Node('declare-const', '_z', ('_', 'BitVec', 4)),
        Node('declare-const', '_z', ('_', 'BitVec', 8)),
    ]
    zext_x8 = [
        Node(('_', 'zero_extend', 7), '_x'),
        Node(('_', 'zero_extend', 6), '_x'),
        Node(('_', 'zero_extend', 4), '_x'),
        Node(('_', 'zero_extend', 1), '_x'),
    ]
    zext_y8 = [
        Node(('_', 'zero_extend', 7), '_y'),
        Node(('_', 'zero_extend', 6), '_y'),
        Node(('_', 'zero_extend', 4), '_y'),
        Node(('_', 'zero_extend', 1), '_y'),
    ]
    zext_z9 = [
        Node(('_', 'zero_extend', 8), '_z'),
        Node(('_', 'zero_extend', 7), '_z'),
        Node(('_', 'zero_extend', 5), '_z'),
        Node(('_', 'zero_extend', 1), '_z'),
    ]
    smtlib.collect_information(exprs1)
    assert list(m.global_mutations(declx, exprs1)) == [[
        x8[i],
        Node('define-fun', x, (), bvsort8, zext_x8[i]),
        decly,
        declz,
        *_exprs1,
    ] for i in range(0, 4)]
    assert list(m.global_mutations(decly, exprs1)) == [[
        declx,
        y8[i],
        Node('define-fun', y, (), bvsort8, zext_y8[i]),
        declz,
        *_exprs1,
    ] for i in range(0, 4)]
    assert list(m.global_mutations(declz, exprs1)) == [[
        declx,
        decly,
        z9[i],
        Node('define-fun', z, (), bvsort9, zext_z9[i]),
        *_exprs1,
    ] for i in range(0, 4)]

    # corner case: avoid reducing by 0 bits
    decl = Node('declare-const', 'x', ('_', 'BitVec', 2))
    smtlib.collect_information([decl])
    assert m.filter(decl)
    assert list(m.global_mutations(decl, [decl])) == [[
        Node('declare-const', '_x', ('_', 'BitVec', 1)),
        Node('define-fun', 'x', (), ('_', 'BitVec', 2),
             (('_', 'zero_extend', '1'), '_x'))
    ]]

    decl = Node('declare-const', 'x', ('_', 'BitVec', 1))
    smtlib.collect_information([decl])
    assert m.filter(decl)
    assert list(m.global_mutations(decl, [decl])) == []


def test_bv_merge_reduced_bw():
    smtlib.reset_information()
    m = mutators_bv.BVMergeReducedBW()
    assert isinstance(str(m), str)
    bvsort1 = Node('_', 'BitVec', 1)
    bvsort4 = Node('_', 'BitVec', 4)
    bvsort8 = Node('_', 'BitVec', 8)

    assert not m.filter(Node('bvadd', 'x', 'y'))
    assert not m.filter(Node('declare-const', 'x', 'Int'))
    assert not m.filter(Node('declare-fun', 'y', (), bvsort8))
    assert not m.filter(
        Node('define-fun', 'y', ('Int', ), bvsort8,
             (('_', 'zero_extend', 2), '_y')))

    dec_x__ = Node('declare-const', '__x', bvsort1)
    def_x_ = Node('define-fun', '_x', (), bvsort4,
                  (('_', 'zero_extend', 3), '__x'))
    def_x = Node('define-fun', 'x', (), bvsort8,
                 (('_', 'zero_extend', 4), '_x'))
    def_y = Node('define-fun', 'y', (), bvsort8,
                 (('_', 'zero_extend', 2), '__x'))
    assert not m.filter(def_y)
    assert not m.filter(def_x)

    exprs = [dec_x__, def_x_, def_x, def_y]
    smtlib.collect_information(exprs)
    assert not m.filter(dec_x__)
    assert not m.filter(def_x_)
    assert not m.filter(def_y)
    assert m.filter(exprs[2])
    assert m.filter(def_x)
    assert m.mutations(def_x) == [
        Node('define-fun', 'x', (), bvsort8, (('_', 'zero_extend', 7), '__x'))
    ]
