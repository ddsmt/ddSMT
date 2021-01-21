import pytest
from ..nodes import Node
from .. import smtlib
from ..smtlib import *


def test_collect_information():
    collect_information([])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('declare-const', 'x')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('declare-const', ('x', 'Real'), 'Real')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('declare-const', 'x', 'Real')])
    assert smtlib.__constants == {'x': 'Real'}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {'x': 'Real'}

    collect_information([Node('declare-fun', 'x', ())])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('declare-fun', ('x', 'Real'), (), 'Real')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('declare-fun', 'x', 'Real', 'Real')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('declare-fun', 'x', (), 'Real')])
    assert smtlib.__constants == {'x': 'Real'}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {'x': 'Real'}

    collect_information([Node('declare-fun', 'x', ('Real', ), 'Real')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {'x': 'Real'}

    collect_information([Node('define-fun', 'x', (), 'Real')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('define-fun', ('x', 'Real'), (), 'Real', '5.0')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('define-fun', 'x', 'Real', 'Real', '5.0')])
    assert smtlib.__constants == {}
    assert smtlib.__defined_functions == {}
    assert smtlib.__sort_lookup == {}

    collect_information([Node('define-fun', 'x', (), 'Real', '5.0')])
    assert smtlib.__constants == {'x': 'Real'}
    assert 'x' in smtlib.__defined_functions
    assert smtlib.__defined_functions['x'](Node()) == '5.0'
    assert smtlib.__sort_lookup == {'x': 'Real'}

    collect_information(
        [Node('define-fun', 'x', ('y', 'Real'), 'Real', ('+', 'y', '5.0'))])
    assert smtlib.__constants == {}
    assert 'x' in smtlib.__defined_functions
    assert smtlib.__defined_functions['x'](('3.0', )) == ('+', '3.0', '5.0')
    assert smtlib.__sort_lookup == {'x': 'Real'}

    reset_information()


def test_get_variables_with_sort():
    x = Node('x')
    y = Node('y')
    z = Node('z')
    r = Node('r')
    s = Node('s')
    a = Node('a')
    b = Node('b')
    c = Node('c')
    exprs = [
        Node('declare-const', x, ('_', 'BitVec', 8)),
        Node('declare-fun', y, (), ('_', 'BitVec', 8)),
        Node('declare-const', z, ('_', 'BitVec', 32)),
        Node('declare-fun', r, (), 'Real'),
        Node('declare-const', s, 'String'),
        Node('declare-const', a, 'Float64'),
        Node('declare-const', b, ('_', 'FloatingPoint', 11, 53)),
        Node('declare-fun', c, (), ('_', 'FloatingPoint', 5, 11)),
        Node('bvadd', x, y),
        Node('+', r, r),
        Node('str.++', s, s),
    ]
    assert get_variables_with_sort(Node('_', 'BitVec', 8)) == []
    collect_information(exprs)
    assert get_variables_with_sort(Node('_', 'BitVect', 8)) == []
    assert get_variables_with_sort(Node('_', 'BitVec', 8)) == [x, y]
    assert get_variables_with_sort(Node('_', 'BitVec', 32)) == [z]
    assert get_variables_with_sort(Node('Float64')) == [a]
    assert get_variables_with_sort(Node('_', 'FloatingPoint', 11, 53)) == [b]
    assert get_variables_with_sort(Node('_', 'FloatingPoint', 5, 11)) == [c]
    assert get_variables_with_sort(Node('Real')) == [r]
    assert get_variables_with_sort(Node('String')) == [s]
    reset_information()


def test_introduce_variables():
    fp64 = Node('_', 'FloatingPoint', 11, 53)
    x1 = Node('x1')
    x2 = Node('x2')
    x3 = Node('x3')
    decl_x = Node('declare-const', 'x', 'Real')
    decl_x1 = Node('declare-fun', x1, (), fp64)
    decl_x2 = Node('declare-fun', x2, (), fp64)
    decl_x3 = Node('declare-fun', x3, (), fp64)
    fpadd = Node('define-fun', 'fpadd', (), fp64, ('fp.add', 'RTZ', x1, x2))
    fpmul = Node('define-fun', 'fpmul', (), fp64, ('fp.mul', 'RTZ', fpadd, x3))
    fpass = Node('assert', ('=', 'fpmul', 'fpadd'))

    exprs0 = [
        Node('set-info', ':smt-lib-version', '2.6'),
        Node('set-logic', 'QF_FP'),
        Node('set-info', ':category', '"crafted"'),
        Node('set-info', ':status', 'unknown'),
    ]
    assert introduce_variables(exprs0, [decl_x]) \
           == exprs0 + [Node('declare-const', 'x', 'Real')]

    exprs1 = exprs0 + [Node('assert', 'true')]
    assert introduce_variables(exprs1, [decl_x]) \
           == exprs0 + [decl_x, Node('assert', 'true')]

    exprs2 = exprs0 + [decl_x1, decl_x2, decl_x3, fpadd, fpmul, fpass]
    assert introduce_variables(exprs2, [decl_x]) \
           == exprs0 + [decl_x1, decl_x2, decl_x3, fpadd, fpmul, decl_x, fpass]
    exprs3 = [Node('echo')]
    assert introduce_variables(exprs3, [decl_x]) == [decl_x, Node('echo')]


def test_substitute_vars_except_decl():
    fp64 = Node('_', 'FloatingPoint', 11, 53)
    x1 = Node('x1')
    x2 = Node('x2')
    x3 = Node('x3')
    y1 = Node('y1')
    y2 = Node('y2')
    decl_x = Node('declare-const', 'x', 'Real')
    decl_x1 = Node('declare-fun', x1, (), fp64)
    decl_x2 = Node('declare-fun', x2, (), fp64)
    decl_x3 = Node('declare-fun', x3, (), fp64)
    fpadd = Node('define-fun', 'fpadd', (), fp64, ('fp.add', 'RTZ', x1, x2))
    fpmul = Node('define-fun', 'fpmul', (), fp64,
                 ('fp.mul', 'RTZ', 'fpadd', x3))
    fpass0 = Node('assert', ('=', ('fp.rem', x1, x2), ('fp.rem', x1, x3)))
    fpass1 = Node('assert', ('=', 'fpmul', 'fpadd'))

    exprs = [decl_x1, decl_x2, decl_x3, fpadd, fpmul, fpass0, fpass1]

    assert not exprs == substitute_vars_except_decl(exprs, {x1: y1})
    assert substitute_vars_except_decl(exprs, {x1: x1}) is None
    assert substitute_vars_except_decl(exprs, {x1 : y1}) == \
           [
               decl_x1, decl_x2, decl_x3,
               Node('define-fun', 'fpadd', (), fp64, ('fp.add', 'RTZ', y1, x2)),
               fpmul,
               Node('assert', ('=', ('fp.rem', y1, x2), ('fp.rem', y1, x3))),
               fpass1,
           ]
    assert not exprs == substitute_vars_except_decl(exprs, {x2: y2})
    assert substitute_vars_except_decl(exprs, {x2 : y2}) == \
           [
               decl_x1, decl_x2, decl_x3,
               Node('define-fun', 'fpadd', (), fp64, ('fp.add', 'RTZ', x1, y2)),
               fpmul,
               Node('assert', ('=', ('fp.rem', x1, y2), ('fp.rem', x1, x3))),
               fpass1,
           ]


def test_is_leaf():
    assert not is_leaf(Node('declare-const', 'x', 'Real'))
    assert not is_leaf(Node('declare-fun', 'x', (), ('_', 'BitVec', 8)))
    assert not is_leaf(Node('define-fun', 'f', (), 'Int', ('+', 'x', 'x')))
    assert not is_leaf(Node('assert', ('=', 'x', 'x')))
    assert not is_leaf(Node('_', 'BitVec', 2))
    assert is_leaf(Node('x'))
    assert is_leaf(Node('Real'))


def test_is_var():
    assert not is_var(Node('declare-const', 'x', 'Real'))
    assert not is_var(Node('declare-fun', 'x', (), ('_', 'BitVec', 8)))
    assert not is_var(Node('define-fun', 'f', (), 'Int', ('+', 'x', 'x')))
    assert not is_var(Node('assert', ('=', 'x', 'x')))
    assert not is_var(Node('_', 'BitVec', 2))
    assert not is_var(Node('Real'))
    assert not is_var(Node('x'))
    exprs = [Node('x'), Node('declare-const', 'y', 'Real')]
    collect_information(exprs)
    assert not is_var(Node('x'))
    assert is_var(Node('y'))
    reset_information()


def test_is_piped_symbol():
    assert not is_piped_symbol(Node('declare-const', 'x', 'Real'))
    assert not is_piped_symbol(Node('declare-const'))
    assert is_piped_symbol(Node('|declare-const|'))


def test_get_piped_symbol():
    with pytest.raises(AssertionError):
        get_piped_symbol(Node('declare-const', 'x', 'Real'))
    assert get_piped_symbol(Node('|declare-const|')) == 'declare-const'


def test_is_operator_app():
    assert not is_operator_app(Node('bvadd'), 'bvadd')
    assert not is_operator_app(Node('bvad', 'x', 'x'), 'bvadd')
    assert is_operator_app(Node('_', 'BitVec', 3), '_')
    assert is_operator_app(Node('bvadd', 'x', 'x'), 'bvadd')


def test_is_indexed_operator():
    assert not is_indexed_operator(Node('x'), 'extract')
    assert not is_indexed_operator(Node('_', 'sign_extend', 2), 'extract')
    assert not is_indexed_operator(Node('extract', 2), 'extract')
    assert not is_indexed_operator(Node(('_', 'extract', 2), 'x'), 'extract')
    assert not is_indexed_operator(Node('_', 'extract', 2, 2), 'extract')
    assert not is_indexed_operator(Node('_', 'extract', 2), 'extract', 2)
    assert is_indexed_operator(Node('_', 'extract', 2), 'extract')


def test_is_indexed_operator_app():
    assert not is_indexed_operator_app(Node('x'), 'extract')
    assert not is_indexed_operator_app(Node('_', 'sign_extend', 2), 'extract')
    assert not is_indexed_operator_app(Node('extract', 2), 'extract')
    assert not is_indexed_operator_app(Node('_', 'extract', 2, 2), 'extract')
    assert not is_indexed_operator_app(Node('_', 'extract', 2), 'extract', 2)
    assert not is_indexed_operator_app(Node('_', 'extract', 2), 'extract')
    assert is_indexed_operator_app(Node(('_', 'extract', 2), 'x'), 'extract')


def test_has_nary_operator():
    x = Node('x')
    assert not has_nary_operator(x)
    assert has_nary_operator(Node('=>', x, x))
    assert has_nary_operator(Node('and', x, x))
    assert has_nary_operator(Node('or', x, x))
    assert has_nary_operator(Node('xor', x, x))
    assert has_nary_operator(Node('=', x, x))
    assert has_nary_operator(Node('distinct', x, x))
    assert has_nary_operator(Node('+', x, x))
    assert has_nary_operator(Node('-', x, x))
    assert has_nary_operator(Node('*', x, x))
    assert has_nary_operator(Node('div', x, x))
    assert has_nary_operator(Node('/', x, x))
    assert has_nary_operator(Node('<=', x, x))
    assert has_nary_operator(Node('<', x, x))
    assert has_nary_operator(Node('>=', x, x))
    assert has_nary_operator(Node('>', x, x))
    assert has_nary_operator(Node('bvand', x, x))
    assert has_nary_operator(Node('bvor', x, x))
    assert has_nary_operator(Node('bvadd', x, x))
    assert has_nary_operator(Node('bvmul', x, x))
    assert has_nary_operator(Node('concat', x, x))
    assert has_nary_operator(Node('fp.lt', x, x))
    assert has_nary_operator(Node('fp.gt', x, x))
    assert has_nary_operator(Node('fp.leq', x, x))
    assert has_nary_operator(Node('fp.geq', x, x))


def test_is_const():
    assert not is_const(Node('x'))
    assert not is_const(Node('declare-const', 'x', 'Bool'))
    assert not is_const(Node('declare-const', 'x', 'Int'))
    assert not is_const(Node('declare-const', 'x', 'Real'))
    assert not is_const(Node('declare-const', 'x', ('_', 'BitVec', 4)))
    assert not is_const(Node('declare-const', 'x', 'String'))
    assert not is_const(Node('asdf'))
    assert not is_const(Node('1/2'))
    assert not is_const(Node('/', 'x', 2))
    assert not is_const(Node('/', 1, 'x'))
    assert is_const(Node('false'))
    assert is_const(Node('true'))
    assert is_const(Node('/', 1, 2))
    assert is_const(Node('1.0'))
    assert is_const(Node('2'))
    assert is_const(Node('2345'))
    assert is_const(Node('0101'))
    assert is_const(Node('#b0101'))
    assert is_const(Node('#x1af'))
    assert is_const(Node('_', 'bv5', 3))
    assert is_const(Node('"asdf"'))


def test_is_eq():
    assert not is_eq(Node('x'))
    assert not is_eq(Node('>', 'x', 'x'))
    assert is_eq(Node('=', 'x', 'y'))
    assert is_eq(Node('=', 'x', 'y', 'z'))


def test_get_default_constants():
    sort_bool = Node('Bool')
    sort_bv8 = Node('_', 'BitVec', 8)
    sort_bv32 = Node('_', 'BitVec', 32)
    sort_int = Node('Int')
    sort_real = Node('Real')
    sort_fp16 = Node('_', 'FloatingPoint', 5, 11)
    sort_fp64 = Node('Float64')
    sort_fp64_1 = Node('_', 'FloatingPoint', 11, 53)
    sort_set = Node('Set', 'Int')
    sort_string = Node('String')
    assert get_default_constants(sort_bool) == [Node('false'), Node('true')]
    assert get_default_constants(sort_bv8) == [
        Node('_', 'bv0', 8), Node('_', 'bv1', 8)
    ]
    assert get_default_constants(sort_bv32) == [
        Node('_', 'bv0', 32), Node('_', 'bv1', 32)
    ]
    assert get_default_constants(sort_int) == [Node(0), Node(1)]
    assert get_default_constants(sort_real) == [Node('0.0'), Node('1.0')]
    assert get_default_constants(sort_fp16) == []
    assert get_default_constants(sort_fp64) == []
    assert get_default_constants(sort_fp64_1) == []
    assert get_default_constants(sort_set) == [
        Node('as', 'emptyset', ('Set', 'Int')),
        Node('singleton', 0),
        Node('singleton', 1)
    ]
    assert get_default_constants(sort_string) == []


def test_get_sort():
    bx = Node('bx')
    vx = Node('vx')
    ix = Node('ix')
    rx = Node('rx')
    fx = Node('fx')
    gx = Node('gx')
    rm = Node('rm')
    sx = Node('sx')
    tx = Node('tx')
    sort_bool = Node('Bool')
    sort_bv = Node('_', 'BitVec', 8)
    sort_int = Node('Int')
    sort_real = Node('Real')
    sort_fp16 = Node('_', 'FloatingPoint', 5, 11)
    sort_fp64 = Node('Float64')
    sort_rm = Node('RoundingMode')
    sort_set = Node('Set', 'Int')
    sort_string = Node('String')
    fprem = Node('fp.rem', 'Fx', 'Fx')
    fpfma = Node('fp.fma', rm, fx, fx, fx)

    exprs = [
        Node('declare-const', bx, sort_bool),
        Node('declare-const', vx, sort_bv),
        Node('declare-const', ix, sort_int),
        Node('declare-fun', rx, (), sort_real),
        Node('declare-const', rm, sort_rm),
        Node('define-fun', fx, (Node('x', sort_bool), ), sort_fp16, fprem),
        Node('define-fun', gx, (), sort_fp64, fpfma),
        Node('declare-const', sx, sort_set),
        Node('declare-const', tx, sort_string),
    ]

    assert get_sort(sort_bool) is None
    assert get_sort(sort_bv) is None
    assert get_sort(sort_int) is None
    assert get_sort(sort_real) is None
    assert get_sort(sort_fp16) is None
    assert get_sort(sort_fp64) is None
    assert get_sort(sort_rm) is None
    assert get_sort(sort_set) is None
    assert get_sort(sort_string) is None
    assert get_sort(fpfma) is None

    assert get_sort(Node('true')) == sort_bool
    assert get_sort(Node('false')) == sort_bool
    assert get_sort(Node('#b01011111')) == sort_bv
    assert get_sort(Node('_', 'bv4', 8)) == sort_bv
    assert get_sort(Node(2)) == sort_int
    assert get_sort(Node('2.0')) == sort_real

    assert get_sort(Node('not', bx)) == sort_bool
    assert get_sort(Node('=>', bx, 'true')) == sort_bool
    assert get_sort(Node('and', bx, bx)) == sort_bool
    assert get_sort(Node('or', bx, bx, bx)) == sort_bool
    assert get_sort(Node('xor', bx, bx)) == sort_bool
    assert get_sort(Node('=', fprem, fprem)) == sort_bool
    assert get_sort(Node('distinct', ix, ix)) == sort_bool
    assert get_sort(Node('bvult', vx, vx)) == sort_bool
    assert get_sort(Node('bvule', vx, vx)) == sort_bool
    assert get_sort(Node('bvugt', vx, vx)) == sort_bool
    assert get_sort(Node('bvuge', vx, vx)) == sort_bool
    assert get_sort(Node('bvslt', vx, vx)) == sort_bool
    assert get_sort(Node('bvsle', vx, vx)) == sort_bool
    assert get_sort(Node('bvsgt', vx, vx)) == sort_bool
    assert get_sort(Node('bvsge', vx, vx)) == sort_bool
    assert get_sort(Node('fp.leq', fprem, fprem)) == sort_bool
    assert get_sort(Node('fp.lt', fprem, fprem)) == sort_bool
    assert get_sort(Node('fp.geq', fprem, fprem)) == sort_bool
    assert get_sort(Node('fp.gt', fprem, fprem)) == sort_bool
    assert get_sort(Node('fp.eq', fprem, fprem)) == sort_bool
    assert get_sort(Node('fp.isNormal', fprem)) == sort_bool
    assert get_sort(Node('fp.isSubnormal', fprem)) == sort_bool
    assert get_sort(Node('fp.isZero', fprem)) == sort_bool
    assert get_sort(Node('fp.isInfinite', fprem)) == sort_bool
    assert get_sort(Node('fp.isNaN', fprem)) == sort_bool
    assert get_sort(Node('fp.isNegative', fprem)) == sort_bool
    assert get_sort(Node('fp.isPositive', fprem)) == sort_bool
    assert get_sort(Node('<=', ix, rx)) == sort_bool
    assert get_sort(Node('<', ix, rx)) == sort_bool
    assert get_sort(Node('>>', ix, rx)) == sort_bool
    assert get_sort(Node('>', ix, rx)) == sort_bool
    assert get_sort(Node('is_int', ix)) == sort_bool
    assert get_sort(Node('member', ix, sx)) == sort_bool
    assert get_sort(Node('subset', sx, sx)) == sort_bool
    assert get_sort(Node('str.<', tx, tx)) == sort_bool
    assert get_sort(Node('str.in_re', tx, tx)) == sort_bool
    assert get_sort(Node('str.<=', tx, tx)) == sort_bool
    assert get_sort(Node('str.prefixof', tx, tx)) == sort_bool
    assert get_sort(Node('str.suffixof', tx, tx)) == sort_bool
    assert get_sort(Node('str.contains', tx, tx)) == sort_bool
    assert get_sort(Node('str.is_digit', tx)) == sort_bool
    assert get_sort(Node(('_', 'divisible', 3), ix)) == sort_bool

    assert get_sort(Node('div', ix, ix)) == sort_int
    assert get_sort(Node('mod', ix, ix)) == sort_int
    assert get_sort(Node('abs', ix)) == sort_int
    assert get_sort(Node('to_int', rx)) == sort_int
    assert get_sort(Node('str.len', tx)) == sort_int
    assert get_sort(Node('str.indexof', tx)) == sort_int
    assert get_sort(Node('str.to_code', tx)) == sort_int
    assert get_sort(Node('str.to_int', tx)) == sort_int
    assert get_sort(Node('card', sx)) == sort_int

    assert get_sort(Node('/', rx, rx)) == sort_real
    assert get_sort(Node('+', rx, rx)) is None
    assert get_sort(Node('*', rx, rx)) is None
    assert get_sort(Node('-', rx, rx)) is None
    assert get_sort(Node('to_real', ix)) == sort_real
    assert get_sort(Node('fp.to_real', fpfma)) == sort_real

    assert get_sort(Node('bvcomp', Node('bvcomp', vx, vx), vx)) \
           == Node('_', 'BitVec', 1)

    collect_information(exprs)
    assert get_sort(Node('Fx')) is None
    assert get_sort(bx) == sort_bool
    assert get_sort(vx) == sort_bv
    assert get_sort(ix) == sort_int
    assert get_sort(rx) == sort_real
    assert get_sort(rm) == sort_rm
    assert get_sort(fx) == sort_fp16
    assert get_sort(gx) == sort_fp64
    assert get_sort(sx) == sort_set
    assert get_sort(tx) == sort_string

    assert get_sort(Node('ite', 'true', vx, vx)) == sort_bv
    assert get_sort(Node('ite', 'true', rx, rx)) == sort_real

    assert get_sort(Node('+', ix, ix)) == sort_int
    assert get_sort(Node('*', ix, ix)) == sort_int
    assert get_sort(Node('-', ix, ix)) == sort_int

    assert get_sort(Node('+', rx, rx)) == sort_real
    assert get_sort(Node('*', rx, rx)) == sort_real
    assert get_sort(Node('-', rx, rx)) == sort_real

    assert get_sort(Node('bvadd', Node('bvadd', vx, vx), vx)) == sort_bv
    assert get_sort(Node('bvand', Node('bvand', vx, vx), vx)) == sort_bv
    assert get_sort(Node('bvashr', vx, vx)) == sort_bv
    assert get_sort(Node('bvshr', vx, vx)) == sort_bv
    assert get_sort(Node('bvmul', Node('bvmul', vx, vx), vx)) == sort_bv
    assert get_sort(Node('bvnand', vx, vx)) == sort_bv
    assert get_sort(Node('bvneg', Node('bvnand', vx, vx))) == sort_bv
    assert get_sort(Node('bvnor', vx, vx)) == sort_bv
    assert get_sort(Node('bvnot', Node('bvnand', vx, vx))) == sort_bv
    assert get_sort(Node('bvor', vx, vx)) == sort_bv
    assert get_sort(Node('bvsdiv', Node('bvand', vx, vx), vx)) == sort_bv
    assert get_sort(Node('bvshl', vx, vx)) == sort_bv
    assert get_sort(Node('bvsmod', Node('bvshr', vx, vx), vx)) == sort_bv
    assert get_sort(Node('bvsrem', vx, vx)) == sort_bv
    assert get_sort(Node('bvsub', Node('bvmul', vx, vx), vx)) == sort_bv
    assert get_sort(Node('bvudiv', vx, vx)) == sort_bv
    assert get_sort(Node('bvurem', Node('bvmul', vx, vx), vx)) == sort_bv
    assert get_sort(Node('bvxnor', vx, vx))
    assert get_sort(Node('bvxor', Node('bvshr', vx, vx), vx)) == sort_bv

    assert get_sort(Node('concat', vx, vx)) == Node('_', 'BitVec', 16)
    assert get_sort(Node('concat', Node('concat', vx, vx), vx)) \
           == Node('_', 'BitVec', 24)

    assert get_sort(Node('fp.abs', fx)) == sort_fp16
    assert get_sort(Node('fp.max', gx, gx)) == sort_fp64
    assert get_sort(Node('fp.min', gx, gx)) == sort_fp64
    assert get_sort(Node('fp.neg', fx)) == sort_fp16
    assert get_sort(Node('fp.rem', fx, fx)) == sort_fp16
    assert get_sort(Node('fp.add', rm, gx, gx)) == sort_fp64
    assert get_sort(Node('fp.div', rm, gx, gx)) == sort_fp64
    assert get_sort(Node('fp.fma', rm, gx, gx)) == sort_fp64
    assert get_sort(Node('fp.mul', rm, gx, gx, gx)) == sort_fp64
    assert get_sort(Node('fp.roundToIntegral', rm, fx)) == sort_fp16
    assert get_sort(Node('fp.sqrt', rm, fx)) == sort_fp16
    assert get_sort(Node('fp.sub', rm, fx, fx)) == sort_fp16
    assert get_sort(Node('fp', '#b1', '#b11011', '#b1011011010')) == sort_fp16

    assert get_sort(Node(('_', 'extract', 3, 1), vx)) == Node('_', 'BitVec', 3)
    assert get_sort(Node(('_', 'repeat', 3), vx)) == Node('_', 'BitVec', 24)
    assert get_sort(Node(('_', 'rotate_left', 3), vx)) == sort_bv
    assert get_sort(Node(('_', 'rotate_right', 3), vx)) == sort_bv
    assert get_sort(Node(('_', 'sign_extend', 3), vx)) \
           == Node('_', 'BitVec', 11)
    assert get_sort(Node(('_', 'zero_extend', 3), vx)) \
           == Node('_', 'BitVec', 11)

    assert get_sort(Node(('_', 'fp.to_sbv', 8), fx)) == sort_bv
    assert get_sort(Node(('_', 'fp.to_ubv', 8), fx)) == sort_bv

    assert get_sort(Node(('_', 'to_fp', 5, 11), rm, rx)) == sort_fp16
    assert get_sort(Node(('_', 'to_fp', 5, 11), rm, fx)) == sort_fp16
    assert get_sort(Node(('_', 'to_fp', 5, 11), vx)) == sort_fp16
    assert get_sort(Node(('_', 'to_fp', 5, 11), rm, vx)) == sort_fp16
    assert get_sort(Node(('_', 'to_fp_unsigned', 5, 11), rm, vx)) == sort_fp16
    reset_information()


def test_get_indices():
    with pytest.raises(AssertionError):
        get_indices(Node('x'), 'x')
    with pytest.raises(ValueError):
        get_indices(Node('_', 'zero_extend', 'asdf'), 'zero_extend')
    assert get_indices(Node('_', 'zero_extend', 2), 'zero_extend') == [2]
    assert get_indices(Node('_', 'extract', 2, 1), 'extract', 2) == [2, 1]


def test_get_bv_constant_value():
    with pytest.raises(AssertionError):
        get_bv_constant_value(Node('x'))
    with pytest.raises(AssertionError):
        get_bv_constant_value(Node('#c3'))
    assert get_bv_constant_value(Node('_', 'bv3', 3)) == (3, 3)
    assert get_bv_constant_value(Node('#b011')) == (3, 3)
    assert get_bv_constant_value(Node('#x3')) == (3, 4)


def test_is_fp_sort():
    assert not is_fp_sort(Node('x'))
    assert not is_fp_sort(Node('Real'))
    assert not is_fp_sort(Node('_', 'BitVec', 3))
    assert not is_fp_sort(Node('_', 'FloatingPoint', 3))
    assert not is_fp_sort(Node('_', 'FloatinPoint', 3, 5))
    assert is_fp_sort(Node('Float16'))
    assert is_fp_sort(Node('Float32'))
    assert is_fp_sort(Node('Float64'))
    assert is_fp_sort(Node('Float128'))
    assert is_fp_sort(Node('_', 'FloatingPoint', 3, 5))


def test_is_bool_const():
    assert not is_bool_const(Node('x'))
    assert not is_bool_const(Node('declare-const', 'x', 'Bool'))
    assert is_bool_const(Node('false'))
    assert is_bool_const(Node('true'))


def test_is_arith_const():
    assert not is_arith_const(Node('x'))
    assert not is_arith_const(Node('declare-const', 'x', 'Int'))
    assert not is_arith_const(Node('declare-const', 'x', 'Real'))
    assert not is_arith_const(Node('1/2'))
    assert not is_const(Node('/', 'x', 2))
    assert not is_const(Node('/', 1, 'x'))
    assert is_arith_const(Node('/', 1, 2))
    assert is_arith_const(Node('1.0'))
    assert is_arith_const(Node('2'))
    assert is_arith_const(Node('2345'))


def test_is_int_const():
    assert not is_int_const(Node('x'))
    assert not is_int_const(Node('declare-const', 'x', 'Int'))
    assert not is_int_const(Node('1.0'))
    assert not is_int_const(Node('1/2'))
    assert is_int_const(Node('2'))
    assert is_int_const(Node('2345'))


def test_is_real_const():
    assert not is_real_const(Node('x'))
    assert not is_real_const(Node('declare-const', 'x', 'Real'))
    assert not is_real_const(Node('1/2'))
    assert not is_const(Node('/', 'x', 2))
    assert not is_const(Node('/', 1, 'x'))
    assert is_real_const(Node('/', 1, 2))
    assert is_real_const(Node('2'))
    assert is_real_const(Node('2345'))
    assert is_real_const(Node('1.0'))


def test_is_bv_const():
    assert not is_bv_const(Node('x'))
    assert not is_bv_const(Node('declare-const', 'x', ('_', 'BitVec', 4)))
    assert not is_bv_const(Node('2'))
    assert not is_bv_const(Node('0101'))
    assert not is_bv_const(Node('_', ('bv5', ), 3))
    assert is_bv_const(Node('#b0101'))
    assert is_bv_const(Node('#x1af'))
    assert is_bv_const(Node('_', 'bv5', 3))


def test_is_string_const():
    assert not is_string_const(Node('x'))
    assert not is_string_const(Node('declare-const', 'x', 'String'))
    assert not is_string_const(Node('2'))
    assert not is_string_const(Node('asdf'))
    assert is_string_const(Node('"asdf"'))


def test_is_bv_sort():
    assert not is_bv_sort(Node('declare-const', 'x', ('_', 'BitVec', 8)))
    assert not is_bv_sort(Node('_', 'BitVec'))
    assert not is_bv_sort(Node('BitVec', 8))
    assert not is_bv_sort(Node('_', 'BitVe', 8))
    assert is_bv_sort(Node('_', 'BitVec', 8))


def test_is_bv_comp():
    assert not is_bv_comp(
        Node('define-fun', 'x', (), ('_', 'BitVec', 8), ('bvcomp', 'x', 'x')))
    assert not is_bv_comp(Node('=', 'x', 'x'))
    assert is_bv_comp(Node('bvcomp', 'x', 'x'))


def test_is_bv_not():
    assert not is_bv_not(
        Node('define-fun', 'x', (), ('_', 'BitVec', 8), ('bvnot', 'x', 'x')))
    assert not is_bv_not(Node('not', 'x', 'x'))
    assert is_bv_not(Node('bvnot', 'x', 'x'))


def test_is_bv_neg():
    assert not is_bv_neg(
        Node('define-fun', 'x', (), ('_', 'BitVec', 8), ('bvneg', 'x', 'x')))
    assert not is_bv_neg(Node('-', 'x', 'x'))
    assert is_bv_neg(Node('bvneg', 'x', 'x'))


def test_get_bv_width():
    bx = Node('bx')
    vx = Node('vx')
    ix = Node('ix')
    rx = Node('rx')
    fx = Node('fx')
    gx = Node('gx')
    rm = Node('rm')
    sx = Node('sx')
    tx = Node('tx')
    sort_bool = Node('Bool')
    sort_bv = Node('_', 'BitVec', 8)
    sort_int = Node('Int')
    sort_real = Node('Real')
    sort_fp16 = Node('_', 'FloatingPoint', 5, 11)
    sort_fp64 = Node('Float64')
    sort_rm = Node('RoundingMode')
    sort_set = Node('Set', 'Int')
    sort_string = Node('String')
    fprem = Node('fp.rem', 'Fx', 'Fx')
    fpfma = Node('fp.fma', rm, fx, fx, fx)

    exprs = [
        Node('declare-const', bx, sort_bool),
        Node('declare-const', vx, sort_bv),
        Node('declare-const', ix, sort_int),
        Node('declare-fun', rx, (), sort_real),
        Node('declare-const', rm, sort_rm),
        Node('define-fun', fx, (Node('x', sort_bool), ), sort_fp16, fprem),
        Node('define-fun', gx, (), sort_fp64, fpfma),
        Node('declare-const', sx, sort_set),
        Node('declare-const', tx, sort_string),
    ]

    assert get_bv_width(sort_bool) == -1
    assert get_bv_width(sort_bv) == -1
    assert get_bv_width(sort_int) == -1
    assert get_bv_width(sort_real) == -1
    assert get_bv_width(sort_fp16) == -1
    assert get_bv_width(sort_fp64) == -1
    assert get_bv_width(sort_rm) == -1
    assert get_bv_width(sort_set) == -1
    assert get_bv_width(sort_string) == -1
    assert get_bv_width(fpfma) == -1

    assert get_bv_width(Node('true')) == -1
    assert get_bv_width(Node('false')) == -1
    assert get_bv_width(Node('#b01011111')) == 8
    assert get_bv_width(Node('#x110')) == 12
    assert get_bv_width(Node('_', 'bv4', 8)) == 8
    assert get_bv_width(Node(2)) == -1
    assert get_bv_width(Node('2.0')) == -1

    assert get_bv_width(Node('not', bx)) == -1
    assert get_bv_width(Node('=>', bx, 'true')) == -1
    assert get_bv_width(Node('and', bx, bx)) == -1
    assert get_bv_width(Node('or', bx, bx, bx)) == -1
    assert get_bv_width(Node('xor', bx, bx)) == -1
    assert get_bv_width(Node('=', fprem, fprem)) == -1
    assert get_bv_width(Node('distinct', ix, ix)) == -1
    assert get_bv_width(Node('bvult', vx, vx)) == -1
    assert get_bv_width(Node('bvule', vx, vx)) == -1
    assert get_bv_width(Node('bvugt', vx, vx)) == -1
    assert get_bv_width(Node('bvuge', vx, vx)) == -1
    assert get_bv_width(Node('bvslt', vx, vx)) == -1
    assert get_bv_width(Node('bvsle', vx, vx)) == -1
    assert get_bv_width(Node('bvsgt', vx, vx)) == -1
    assert get_bv_width(Node('bvsge', vx, vx)) == -1
    assert get_bv_width(Node('fp.leq', fprem, fprem)) == -1
    assert get_bv_width(Node('fp.lt', fprem, fprem)) == -1
    assert get_bv_width(Node('fp.geq', fprem, fprem)) == -1
    assert get_bv_width(Node('fp.gt', fprem, fprem)) == -1
    assert get_bv_width(Node('fp.eq', fprem, fprem)) == -1
    assert get_bv_width(Node('fp.isNormal', fprem)) == -1
    assert get_bv_width(Node('fp.isSubnormal', fprem)) == -1
    assert get_bv_width(Node('fp.isZero', fprem)) == -1
    assert get_bv_width(Node('fp.isInfinite', fprem)) == -1
    assert get_bv_width(Node('fp.isNaN', fprem)) == -1
    assert get_bv_width(Node('fp.isNegative', fprem)) == -1
    assert get_bv_width(Node('fp.isPositive', fprem)) == -1
    assert get_bv_width(Node('<=', ix, rx)) == -1
    assert get_bv_width(Node('<', ix, rx)) == -1
    assert get_bv_width(Node('>>', ix, rx)) == -1
    assert get_bv_width(Node('>', ix, rx)) == -1
    assert get_bv_width(Node('is_int', ix)) == -1
    assert get_bv_width(Node('member', ix, sx)) == -1
    assert get_bv_width(Node('subset', sx, sx)) == -1
    assert get_bv_width(Node('str.<', tx, tx)) == -1
    assert get_bv_width(Node('str.in_re', tx, tx)) == -1
    assert get_bv_width(Node('str.<=', tx, tx)) == -1
    assert get_bv_width(Node('str.prefixof', tx, tx)) == -1
    assert get_bv_width(Node('str.suffixof', tx, tx)) == -1
    assert get_bv_width(Node('str.contains', tx, tx)) == -1
    assert get_bv_width(Node('str.is_digit', tx)) == -1
    assert get_bv_width(Node(('_', 'divisible', 3), ix)) == -1

    assert get_bv_width(Node('div', ix, ix)) == -1
    assert get_bv_width(Node('mod', ix, ix)) == -1
    assert get_bv_width(Node('abs', ix)) == -1
    assert get_bv_width(Node('to_int', rx)) == -1
    assert get_bv_width(Node('str.len', tx)) == -1
    assert get_bv_width(Node('str.indexof', tx)) == -1
    assert get_bv_width(Node('str.to_code', tx)) == -1
    assert get_bv_width(Node('str.to_int', tx)) == -1
    assert get_bv_width(Node('card', sx)) == -1

    assert get_bv_width(Node('/', rx, rx)) == -1
    assert get_bv_width(Node('+', rx, rx)) == -1
    assert get_bv_width(Node('*', rx, rx)) == -1
    assert get_bv_width(Node('-', rx, rx)) == -1
    assert get_bv_width(Node('to_real', ix)) == -1
    assert get_bv_width(Node('fp.to_real', fpfma)) == -1

    assert get_bv_width(Node('bvcomp', Node('bvcomp', vx, vx), vx)) == 1

    collect_information(exprs)
    assert get_bv_width(Node('Fx')) == -1
    assert get_bv_width(bx) == -1
    assert get_bv_width(vx) == 8
    assert get_bv_width(ix) == -1
    assert get_bv_width(rx) == -1
    assert get_bv_width(rm) == -1
    assert get_bv_width(fx) == -1
    assert get_bv_width(gx) == -1
    assert get_bv_width(sx) == -1
    assert get_bv_width(tx) == -1

    assert get_bv_width(Node('ite', 'true', vx, vx)) == 8

    assert get_bv_width(Node('+', ix, ix)) == -1
    assert get_bv_width(Node('*', ix, ix)) == -1
    assert get_bv_width(Node('-', ix, ix)) == -1

    assert get_bv_width(Node('+', rx, rx)) == -1
    assert get_bv_width(Node('*', rx, rx)) == -1
    assert get_bv_width(Node('-', rx, rx)) == -1

    assert get_bv_width(Node('bvadd', Node('bvadd', vx, vx), vx)) == 8
    assert get_bv_width(Node('bvand', Node('bvand', vx, vx), vx)) == 8
    assert get_bv_width(Node('bvashr', vx, vx)) == 8
    assert get_bv_width(Node('bvshr', vx, vx)) == 8
    assert get_bv_width(Node('bvmul', Node('bvmul', vx, vx), vx)) == 8
    assert get_bv_width(Node('bvnand', vx, vx)) == 8
    assert get_bv_width(Node('bvneg', Node('bvnand', vx, vx))) == 8
    assert get_bv_width(Node('bvnor', vx, vx)) == 8
    assert get_bv_width(Node('bvnot', Node('bvnand', vx, vx))) == 8
    assert get_bv_width(Node('bvor', vx, vx)) == 8
    assert get_bv_width(Node('bvsdiv', Node('bvand', vx, vx), vx)) == 8
    assert get_bv_width(Node('bvshl', vx, vx)) == 8
    assert get_bv_width(Node('bvsmod', Node('bvshr', vx, vx), vx)) == 8
    assert get_bv_width(Node('bvsrem', vx, vx)) == 8
    assert get_bv_width(Node('bvsub', Node('bvmul', vx, vx), vx)) == 8
    assert get_bv_width(Node('bvudiv', vx, vx)) == 8
    assert get_bv_width(Node('bvurem', Node('bvmul', vx, vx), vx)) == 8
    assert get_bv_width(Node('bvxnor', vx, vx))
    assert get_bv_width(Node('bvxor', Node('bvshr', vx, vx), vx)) == 8

    assert get_bv_width(Node('concat', vx, vx)) == 16
    assert get_bv_width(Node('concat', Node('concat', vx, vx), vx)) == 24

    assert get_bv_width(Node('fp.abs', fx)) == -1
    assert get_bv_width(Node('fp.max', gx, gx)) == -1
    assert get_bv_width(Node('fp.min', gx, gx)) == -1
    assert get_bv_width(Node('fp.neg', fx)) == -1
    assert get_bv_width(Node('fp.rem', fx, fx)) == -1
    assert get_bv_width(Node('fp.add', rm, gx, gx)) == -1
    assert get_bv_width(Node('fp.div', rm, gx, gx)) == -1
    assert get_bv_width(Node('fp.fma', rm, gx, gx)) == -1
    assert get_bv_width(Node('fp.mul', rm, gx, gx, gx)) == -1
    assert get_bv_width(Node('fp.roundToIntegral', rm, fx)) == -1
    assert get_bv_width(Node('fp.sqrt', rm, fx)) == -1
    assert get_bv_width(Node('fp.sub', rm, fx, fx)) == -1
    assert get_bv_width(Node('fp', '#b1', '#b11011', '#b1011011010')) == -1

    assert get_bv_width(Node(('_', 'extract', 3, 1), vx)) == 3
    assert get_bv_width(Node(('_', 'repeat', 3), vx)) == 24
    assert get_bv_width(Node(('_', 'rotate_left', 3), vx)) == 8
    assert get_bv_width(Node(('_', 'rotate_right', 3), vx)) == 8
    assert get_bv_width(Node(('_', 'sign_extend', 3), vx)) == 11
    assert get_bv_width(Node(('_', 'zero_extend', 3), vx)) == 11

    assert get_bv_width(Node(('_', 'fp.to_sbv', 8), fx)) == 8
    assert get_bv_width(Node(('_', 'fp.to_ubv', 8), fx)) == 8

    assert get_bv_width(Node(('_', 'to_fp', 5, 11), rm, rx)) == -1
    assert get_bv_width(Node(('_', 'to_fp', 5, 11), rm, fx)) == -1
    assert get_bv_width(Node(('_', 'to_fp', 5, 11), vx)) == -1
    assert get_bv_width(Node(('_', 'to_fp', 5, 11), rm, vx)) == -1
    assert get_bv_width(Node(('_', 'to_fp_unsigned', 5, 11), rm, vx)) == -1
    reset_information()


def test_is_defined_fun():
    x1 = Node('x1')
    x2 = Node('x2')
    x3 = Node('x3')
    fp64 = Node('_', 'FloatingPoint', 11, 53)
    fpadd = Node('fp.add', 'RTZ', x1, x2)
    fpmul = Node('fp.mul', 'RTZ', fpadd, x3)
    fprem = Node('fp.rem', 'x', 'x')
    fadd = Node('define-fun', 'fadd', (), fp64, fpadd)
    fmul = Node('define-fun', 'fmul', (), fp64, fpmul)
    fx = Node('define-fun', 'fx', (Node('x', 'Bool'), ), fp64, fprem)
    fpfma = Node('fp.fma', 'RNE', 'fx', 'fx', 'fx')
    gx = Node('define-fun', 'gx', (
        Node('x', 'Bool'),
        Node('y', 'Int'),
    ), fp64, fpfma)
    f = Node('define-fun', 'f', (Node('x', 'Int'), ), 'Int', ('+', 'x', 'x'))
    exprs = [
        fadd,
        fmul,
        fx,
        gx,
        f,
        Node('declare-const', 'x', 'Bool'),
        Node('declare-fun', 'y', 'Int'),
    ]
    collect_information(exprs)
    assert not is_defined_fun(x1)
    assert not is_defined_fun(x2)
    assert not is_defined_fun(x3)
    assert not is_defined_fun(fpadd)
    assert not is_defined_fun(fpmul)
    assert not is_defined_fun(fprem)
    assert not is_defined_fun(fpfma)
    assert not is_defined_fun(fadd)
    assert not is_defined_fun(fmul)
    assert not is_defined_fun(fx)
    assert not is_defined_fun(gx)
    assert not is_defined_fun(f)
    assert is_defined_fun(Node('fadd'))
    assert is_defined_fun(Node('fmul'))
    assert is_defined_fun(Node('fx'))
    assert is_defined_fun(Node('gx'))
    assert is_defined_fun(Node('f'))
    assert is_defined_fun(Node('fx', 'true'))
    assert is_defined_fun(Node('gx', 'true', 2))
    assert is_defined_fun(Node('f', 15))
    reset_information()


def test_get_defined_fun():
    x1 = Node('x1')
    x2 = Node('x2')
    x3 = Node('x3')
    fp64 = Node('_', 'FloatingPoint', 11, 53)
    fpadd = Node('fp.add', 'RTZ', x1, x2)
    fpmul = Node('fp.mul', 'RTZ', fpadd, x3)
    fprem = Node('fp.rem', 'x', 'x')
    fadd = Node('define-fun', 'fadd', (), fp64, fpadd)
    fmul = Node('define-fun', 'fmul', (), fp64, fpmul)
    fx = Node('define-fun', 'fx', (Node('x', 'Bool'), ), fp64, fprem)
    fpfma = Node('fp.fma', 'y', 'fx', 'fx', 'fx')
    gx = Node('define-fun', 'gx', (
        Node('x', 'Bool'),
        Node('y', 'Int'),
    ), fp64, fpfma)
    f = Node('define-fun', 'f', (Node('x', 'Int'), ), 'Int', ('+', 'x', 'x'))
    exprs = [
        fadd,
        fmul,
        fx,
        gx,
        f,
        Node('declare-const', 'x', 'Bool'),
        Node('declare-fun', 'y', 'Int'),
    ]
    collect_information(exprs)
    with pytest.raises(AssertionError):
        get_defined_fun(x1)
    with pytest.raises(AssertionError):
        get_defined_fun(x2)
    with pytest.raises(AssertionError):
        get_defined_fun(x3)
    with pytest.raises(AssertionError):
        get_defined_fun(fpadd)
    with pytest.raises(AssertionError):
        get_defined_fun(fpmul)
    with pytest.raises(AssertionError):
        get_defined_fun(fprem)
    with pytest.raises(AssertionError):
        get_defined_fun(fpfma)
    with pytest.raises(AssertionError):
        get_defined_fun(fadd)
    with pytest.raises(AssertionError):
        get_defined_fun(fmul)
    with pytest.raises(AssertionError):
        get_defined_fun(fx)
    with pytest.raises(AssertionError):
        get_defined_fun(gx)
    with pytest.raises(AssertionError):
        get_defined_fun(f)
    assert get_defined_fun(Node('fadd')) == fpadd
    assert get_defined_fun(Node('fmul')) == fpmul
    assert get_defined_fun(Node('fx')) == fprem
    assert get_defined_fun(Node('gx')) == fpfma
    assert get_defined_fun(Node('f')) == Node('+', 'x', 'x')
    assert get_defined_fun(Node('fx', 'true')) \
           == Node('fp.rem', 'true', 'true')
    assert get_defined_fun(Node('gx', 'true', 2)) \
           == Node('fp.fma', 2, 'fx', 'fx', 'fx')
    assert get_defined_fun(Node('f', 15)) == Node('+', 15, 15)
    reset_information()


def test_is_set_sort():
    assert not is_set_sort(
        Node('declare-const', 'x', ('Set', ('_', 'BitVec', 8))))
    assert not is_set_sort(Node('Set'))
    assert not is_set_sort(Node('bvnot', 'x'))
    assert is_set_sort(Node('Set', 'Int'))
    assert is_set_sort(Node('Set', ('_', 'BitVec', 8)))
