import pytest
from ..nodes import Node
from ..smtlib import *


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
    fpmul = Node('define-fun', 'fpmul', (), fp64, ('fp.mul', 'RTZ', fpadd, x3))
    fpass0 = Node('assert', ('=', ('fp.rem', x1, x2), ('fp.rem', x1, x3)))
    fpass1 = Node('assert', ('=', 'fpmul', 'fpadd'))

    exprs = [decl_x1, decl_x2, decl_x3, fpadd, fpmul, fpass0, fpass1]

    assert not exprs == substitute_vars_except_decl(exprs, {x1: y1})
    assert substitute_vars_except_decl(exprs, {x1 : y1}) == \
           [
               decl_x1, decl_x2, decl_x3, fpadd, fpmul,
               Node('assert', ('=', ('fp.rem', y1, x2), ('fp.rem', y1, x3))),
               fpass1,
           ]
    assert not exprs == substitute_vars_except_decl(exprs, {x2: y2})
    assert substitute_vars_except_decl(exprs, {x2 : y2}) == \
           [
               decl_x1, decl_x2, decl_x3, fpadd, fpmul,
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


def test_has_ident():
    assert not has_ident(Node('x'))
    assert has_ident(Node('_', 'BitVec', 3))
    assert has_ident(Node('assert', 'x', 'x'))


def test_get_ident():
    with pytest.raises(AssertionError):
        get_ident(Node('x'))
    assert get_ident(Node('_', 'BitVec', 3)) == '_'
    assert get_ident(Node('assert', 'x', 'x')) == 'assert'


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
    assert not has_nary_operator(Node(x))
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


def test_get_constants():
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
    assert get_constants(sort_bool) == [Node('false'), Node('true')]
    assert get_constants(sort_bv8) == [
        Node('_', 'bv0', 8), Node('_', 'bv1', 8)
    ]
    assert get_constants(sort_bv32) == [
        Node('_', 'bv0', 32), Node('_', 'bv1', 32)
    ]
    assert get_constants(sort_int) == [Node(0), Node(1)]
    assert get_constants(sort_real) == [Node('0.0'), Node('1.0')]
    assert get_constants(sort_fp16) == []
    assert get_constants(sort_fp64) == []
    assert get_constants(sort_fp64_1) == []
    assert get_constants(sort_set) == [
        Node('as', 'emptyset', ('Set', 'Int')),
        Node('singleton', 0),
        Node('singleton', 1)
    ]
    assert get_constants(sort_string) == []


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
        Node('define-fun', fx, (sort_bool, ), sort_fp16, fprem),
        Node('define-fun', gx, (), sort_fp64, fpfma),
        Node('declare-const', sx, sort_set),
        Node('declare-const', tx, sort_string),
    ]

    assert get_sort(sort_bool) == None
    assert get_sort(sort_bv) == None
    assert get_sort(sort_int) == None
    assert get_sort(sort_real) == None
    assert get_sort(sort_fp16) == None
    assert get_sort(sort_fp64) == None
    assert get_sort(sort_rm) == None
    assert get_sort(sort_set) == None
    assert get_sort(sort_string) == None
    assert get_sort(fpfma) == None

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
    assert get_sort(Node('+', rx, rx)) == None
    assert get_sort(Node('*', rx, rx)) == None
    assert get_sort(Node('-', rx, rx)) == None
    assert get_sort(Node('to_real', ix)) == sort_real
    assert get_sort(Node('fp.to_real', fpfma)) == sort_real

    collect_information(exprs)
    assert get_sort(Node('Fx')) == None
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

    assert get_sort(Node('+', ix, ix)) == sort_int
    assert get_sort(Node('*', ix, ix)) == sort_int
    assert get_sort(Node('-', ix, ix)) == sort_int

    assert get_sort(Node('+', rx, rx)) == sort_real
    assert get_sort(Node('*', rx, rx)) == sort_real
    assert get_sort(Node('-', rx, rx)) == sort_real
    reset_information()


def test_get_bv_constant_value():
    with pytest.raises(AssertionError):
        get_bv_constant_value(Node('x'))
    with pytest.raises(AssertionError):
        get_bv_constant_value(Node('#c3'))
    assert get_bv_constant_value(Node('_', 'bv3', 3)) == (3, 3)
    assert get_bv_constant_value(Node('#b011')) == (3, 3)
    assert get_bv_constant_value(Node('#x3')) == (3, 4)


def test_get_bv_extend_index():
    with pytest.raises(AssertionError):
        get_bv_extend_index(Node('_', 'extend', 2))
    with pytest.raises(ValueError):
        get_bv_extend_index(Node('_', 'zero_extend', 'asdf'))
    assert get_bv_extend_index(Node('_', 'zero_extend', 2)) == 2


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
    assert is_bv_const(Node('#b0101'))
    assert is_bv_const(Node('#x1af'))
    assert is_bv_const(Node('_', 'bv5', 3))


def test_is_string_const():
    assert not is_string_const(Node('x'))
    assert not is_string_const(Node('declare-const', 'x', 'String'))
    assert not is_string_const(Node('2'))
    assert not is_string_const(Node('asdf'))
    assert is_string_const(Node('"asdf"'))


# TODO
#def collect_information(exprs):
#def is_bv_sort(node):
#def is_bv_comp(node):
#def is_bv_not(node):
#def is_bv_neg(node):
#def get_bv_width(node):
#def is_defined_function(node):
#def get_defined_function(node):
#def is_set_sort(node):
