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


# TODO
#def collect_information(exprs):
#def is_constant(node):
#def is_eq(node):
#def get_constants(const_type):
#def get_sort(node):
#def is_boolean_constant(node):
#def is_arithmetic_constant(node):
#def is_int_constant(node):
#def is_real_constant(node):
#def is_bv_sort(node):
#def is_bv_constant(node):
#def is_bv_comp(node):
#def is_bv_not(node):
#def is_bv_neg(node):
#def get_bv_width(node):
#def is_defined_function(node):
#def get_defined_function(node):
#def is_set_sort(node):
#def is_string_constant(node):
