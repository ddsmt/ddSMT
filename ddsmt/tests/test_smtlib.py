import pytest
from ..nodes import Node
from ..smtlib import *


def test_is_indexed_operator():
    assert not is_indexed_operator(Node('x'), 'extract')
    assert not is_indexed_operator(Node('_', 'sign_extend', 2), 'extract')
    assert not is_indexed_operator(Node('extract', 2), 'extract')
    assert not is_indexed_operator(Node(('_', 'extract', 2), 'x'), 'extract')
    assert not is_indexed_operator(Node('_', 'extract', 2, 2), 'extract')
    assert not is_indexed_operator(Node('_', 'extract', 2), 'extract', 2)
    assert is_indexed_operator(Node('_', 'extract', 2), 'extract')


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


# TODO
#def collect_information(exprs):
#def get_variables_with_type(var_type):
#def introduce_variables(exprs, vars):
#def is_leaf(node):
#def is_var(node):
#def has_name(node):
#def get_name(node):
#def is_quoted_symbol(node):
#def get_quoted_symbol(node):
#def is_operator_app(node, name):
#def is_nary(node):
#def is_constant(node):
#def is_eq(node):
#def get_constants(const_type):
#def get_type(node):
#def is_boolean_constant(node):
#def is_arithmetic_constant(node):
#def is_int_constant(node):
#def is_real_constant(node):
#def is_bv_type(node):
#def is_bv_constant(node):
#def is_bv_comp(node):
#def is_bv_not(node):
#def is_bv_neg(node):
#def get_bv_width(node):
#def is_defined_function(node):
#def get_defined_function(node):
#def is_set_type(node):
#def is_string_constant(node):
