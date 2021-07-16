#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in AUTHORS file.
#
# ddSMT is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ddSMT is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ddSMT.  If not, see <https://www.gnu.org/licenses/>.

import logging
import re
import string

from . import nodes
from .nodes import Node

# Stores all declared or defined (first-order) constants with their sorts
__constants = {}
# Stores all defined functions with their return sorts
__defined_functions = {}
# Stores the ids of all nodes that are symbols within their definitions
# i.e. the id of x within ``(declare-const x Int)``
__definition_node_ids = set()
# Stores the sorts for all declared or defined symbols
__sort_lookup = {}
# Stores indices that should not be replaced by constants
__indices = set()
# Caches calls to get_sort
__get_sort_cache = {}
# Stores constants for datatype sorts
__datatypes_constants = {}
# Stores the sorts of datatype constructors
__datatypes_constructors = {}
# Stores datatypes selectors, mapping to their constructor and their ids
__datatypes_selectors = {}


def collect_information(exprs):  # noqa: C901
    """Initialize global lookups for first-order constants, defined functions
    and sorts of all these symbols."""
    global __constants
    global __defined_functions
    global __definition_node_ids
    global __sort_lookup
    global __indices
    global __datatypes_constants
    global __datatypes_constructors
    global __datatypes_selectors
    reset_information()

    for cmd in exprs:
        if not cmd.has_ident():
            continue
        name = cmd.get_ident()
        if name == 'declare-const':
            if not len(cmd) == 3:
                logging.trace(
                    f'Ignored command: "{cmd}" should have three children.')
                continue
            if not cmd[1].is_leaf():
                logging.trace(f'Ignored command: "{cmd[1]}" is not a leaf')
                continue
            __constants[cmd[1].data] = cmd[2]
            __definition_node_ids.add(cmd[1].id)
            __sort_lookup[cmd[1].data] = cmd[2]
        if name == 'declare-fun':
            if not len(cmd) == 4:
                logging.trace(
                    f'Ignored command: "{cmd}" should have four children.')
                continue
            if not cmd[1].is_leaf():
                logging.trace(f'Ignored command: "{cmd[1]}" is not a leaf')
                continue
            if cmd[2].is_leaf():
                logging.trace(f'Ignored command: "{cmd[2]}" is a leaf')
                continue
            if cmd[2] == tuple():
                __constants[cmd[1].data] = cmd[3]
            __definition_node_ids.add(cmd[1].id)
            __sort_lookup[cmd[1].data] = cmd[3]
        if name == 'define-fun':
            if not len(cmd) == 5:
                logging.trace(
                    f'Ignored command: "{cmd}" should have five children.')
                continue
            if not cmd[1].is_leaf():
                logging.trace(f'Ignored command: "{cmd[1]}" is not a leaf')
                continue
            if cmd[2].is_leaf():
                logging.trace(f'Ignored command: "{cmd[2]}" is a leaf')
                continue
            if cmd[2] == tuple():
                __constants[cmd[1]] = cmd[3]
            __defined_functions[cmd[1]] = (len(
                cmd[2]), lambda args, cmd=cmd: nodes.substitute(
                    cmd[4], {cmd[2][i][0]: args[i]
                             for i in range(len(args))}))
            __definition_node_ids.add(cmd[1].id)
            __definition_node_ids.add(cmd[4].id)
            __sort_lookup[cmd[1].data] = cmd[3]
        if name == 'declare-datatype':
            if not len(cmd) == 3:
                logging.trace(
                    f'Ignored command: "{cmd}" should have three children.')
                continue
            if cmd[2].is_leaf():
                logging.trace(f'Ignored command: "{cmd[2]}" is as leaf')
                continue
            sort = cmd[1]
            for constr in cmd[2]:
                __datatypes_constructors[constr[0]] = sort
                if len(constr) == 1:
                    __datatypes_constants.setdefault(sort, [])
                    __datatypes_constants[sort].append(constr[0])
                else:
                    for id, sel in enumerate(constr[1:]):
                        __datatypes_selectors[sel[0]] = (constr[0], id)

        if name == 'declare-datatypes':
            if not len(cmd) == 3:
                logging.trace(
                    f'Ignored command: "{cmd}" should have three children.')
                continue
            if cmd[1].is_leaf() or cmd[2].is_leaf():
                logging.trace(f'Ignored command: "{cmd}" children are leafs')
                continue
            # we implicitly assume nullary sorts here
            if any(map(lambda n: n.is_leaf(), cmd[1])):
                logging.trace(
                    f'Ignore declare-datatypes because sort declarations can not be leaf nodes: {cmd[1]}'
                )
                continue
            sorts = [s[0] for s in cmd[1]]
            for id in range(len(sorts)):
                if id >= len(cmd[2]):
                    logging.trace(
                        f'Ignore "{sorts[id]}" as it lacks a constructor')
                    continue
                for constr in cmd[2][id]:
                    __datatypes_constructors[constr[0]] = sorts[id]
                    if len(constr) == 1:
                        __datatypes_constants.setdefault(sorts[id], [])
                        __datatypes_constants[sorts[id]].append(constr[0])
                    else:
                        for id, sel in enumerate(constr[1:]):
                            __datatypes_selectors[sel[0]] = (constr[0], id)

    # Collect additional term level information.
    for node in nodes.dfs(exprs):
        # Mark indices of indexed terms.
        if not node.is_leaf() and len(node) > 2 and node[0] == '_':
            for num in node[2:]:
                if isinstance(num.data, str) and num.data.isdigit():
                    __indices.add(num.id)
        # Determine sort of symbols introduced by let.
        if is_operator_app(node, 'let'):
            for var in node[1]:
                if len(var) != 2:
                    continue
                sym, term = var
                if sym.is_leaf():
                    __sort_lookup[sym.data] = get_sort(term)
                    __definition_node_ids.add(sym.id)
        # Determine sort of symbols introduced by quantifiers
        if is_operator_app(node, 'exists') or is_operator_app(node, 'forall'):
            for var in node[1]:
                if len(var) != 2:
                    continue
                sym, term = var
                if sym.is_leaf():
                    __sort_lookup[sym.data] = term
                    __definition_node_ids.add(sym.id)


def reset_information():
    """Reset global information gathered via collect_information.

    This is mainly to be used in the unit tests.
    """
    global __constants
    global __defined_functions
    global __definition_node_ids
    global __sort_lookup
    global __indices
    global __get_sort_cache
    global __datatypes_constants
    global __datatypes_constructors
    global __datatypes_selectors
    __constants = {}
    __defined_functions = {}
    __definition_node_ids = set()
    __sort_lookup = {}
    __indices = set()
    __get_sort_cache = {}
    __datatypes_constants = {}
    __datatypes_constructors = {}
    __datatypes_selectors = {}


# General utilities


def get_variables_with_sort(var_sort):
    """Return all variables with the sort ``var_sort``.

    Requires that global information has been populated via
    ``collect_information``.
    """
    return [v for v in __sort_lookup if __sort_lookup[v] == var_sort]


def introduce_variables(exprs, vars):
    """Adds new variables to a set of input expressions.

    Expects ``vars`` to contain declaration commands (like ``declare-
    fun``). Inserts the variables into ``exprs`` before the first SMT-
    LIB command that is not ``set-info`` or ``set-logic``. In particular,
    new variables are added before the current variable declarations.
    """
    pos = 0
    while pos < len(exprs):
        e = exprs[pos]
        if not e.has_ident():
            break
        if e.get_ident() not in ['set-info', 'set-logic']:
            break
        pos += 1
    return exprs[:pos] + vars + exprs[pos:]


# General semantic testers and testers


def is_index(node):
    global __indices
    return node.id in __indices


def is_leaf(node):
    """Check whether the ``node`` is a leaf node."""
    return node.is_leaf()


def is_var(node):
    """Return true if ``node`` is a variable (first order constant) node.

    Requires that global information has been populated via
    ``collect_information``.
    """
    return node.is_leaf() and node in __constants


def is_piped_symbol(node):
    """Checks whether the ``node`` is a quoted symbol."""
    return node.is_leaf() and node[0] == '|' and node[-1] == '|'


def get_piped_symbol(node):
    """Returns the actual symbol name from a quoted symbol ``node``."""
    assert is_piped_symbol(node)
    return Node(node[1:-1])


def is_operator_app(node, name):
    return node.has_ident() and node.get_ident() == name


def is_indexed_operator(node, name, index_count=1):
    """Return true if ``node`` is an indexed operator ``name`` and the given
    number of indices matches ``index_count``."""
    if node.is_leaf() or len(node) < 2:
        return False
    if node.has_ident() and node.get_ident() != '_':
        return False
    if node[1] != name:
        return False
    return len(node) == index_count + 2


def is_indexed_operator_app(node, name, index_count=1):
    return len(node) > 0 and is_indexed_operator(node[0], name, index_count)


def has_nary_operator(node):
    """Check whether ``node`` is an application of an n-ary operator."""
    if node.is_leaf() or not node.has_ident():
        return False
    return node.get_ident() in [
        '=>',
        'and',
        'or',
        'xor',
        '=',
        'distinct',
        '+',
        '-',
        '*',
        'div',
        '/',
        '<=',
        '<',
        '>=',
        '>',
        'bvand',
        'bvor',
        'bvadd',
        'bvmul',
        'concat',
        'fp.lt',
        'fp.gt',
        'fp.leq',
        'fp.geq',
    ]


def is_const(node):
    """Return true if ``node`` is a constant value."""
    return is_bool_const(node) or is_arith_const(node) or is_int_const(
        node) or is_real_const(node) or is_string_const(node) or is_bv_const(
            node) or is_fp_const(node)


def is_eq(node):
    """Checks whether ``node`` is an equality."""
    return node.has_ident() and node.get_ident() == '='


def get_default_constants(sort):
    """Return a list of default constants for the given ``sort``."""
    if sort == 'Bool':
        return [Node('false'), Node('true')]
    if sort == 'Int':
        return [Node('0'), Node('1')]
    if sort == 'Real':
        return [Node('0.0'), Node('1.0')]
    if is_bv_sort(sort):
        return [Node('_', c, sort[2]) for c in ['bv0', 'bv1']]
    if is_fp_sort(sort):
        if sort.is_leaf():
            if sort.data == 'Float16':
                ew = 5
                sw = 10
            elif sort.data == 'Float32':
                ew = 8
                sw = 23
            elif sort.data == 'Float64':
                ew = 11
                sw = 52
            else:
                assert sort.data == 'Float128'
                ew = 15
                sw = 112
        else:
            if isinstance(sort, Node):
                ew = int(sort[-2].data)
                sw = int(sort[-1].data) - 1
            else:
                ew = sort[-2]
                sw = sort[-1] - 1
        sign = Node('_', 'bv0', 1)
        signm = Node('_', 'bv1', 1)
        zero_ew = Node('_', 'bv0', ew)
        zero_sw = Node('_', 'bv0', sw)
        one_sw = Node('_', 'bv1', sw)
        ones_ew = Node('_', f'bv{2**ew - 1}', ew)
        return [
            # +zero
            Node('fp', sign, zero_ew, zero_sw),
            # -zero
            Node('fp', signm, zero_ew, zero_sw),
            # +NaN (note: only one possible NaN value is generated)
            Node('fp', sign, ones_ew, one_sw),
            # -NaN (note: only one possible NaN value is generated)
            Node('fp', signm, ones_ew, one_sw),
            # +oo
            Node('fp', sign, ones_ew, zero_sw),
            # -oo
            Node('fp', signm, ones_ew, zero_sw)
        ]
    if is_set_sort(sort):
        return [
            Node('as', 'emptyset', sort),
            *[Node('singleton', c) for c in get_default_constants(sort[1])]
        ]
    if sort in __datatypes_constants:
        return __datatypes_constants[sort]
    return []


def _get_sort_aux(node):  # noqa: C901
    """Get the sort of the given node (uncached).

    Return ``None`` if it can not be inferred. Requires that global
    information has been populated via ``collect_information``.
    """
    if node.is_leaf() and node.data in __sort_lookup:
        return __sort_lookup[node]
    if is_bool_const(node):
        return Node('Bool')
    if is_bv_const(node):
        return Node('_', 'BitVec', str(get_bv_width(node)))
    if is_int_const(node) and not is_index(node):
        return Node('Int')
    if is_real_const(node) and not is_index(node):
        return Node('Real')
    bvwidth = get_bv_width(node)
    # operators the return bit-vectors handled via get_bv_width
    if bvwidth != -1:
        return Node('_', 'BitVec', str(bvwidth))
    # non-indexed operators
    if node.has_ident() and len(node) > 1:
        if is_operator_app(node, 'ite') and len(node) > 2:
            return get_sort(node[2])
        ident = node.get_ident()
        # operators that return Bool
        if ident in [
                # core theory
                'not',
                '=>',
                'and',
                'or',
                'xor',
                '=',
                'distinct',
                # bv theory
                'bvult',
                'bvule',
                'bvugt',
                'bvuge',
                'bvslt',
                'bvsle',
                'bvsgt',
                'bvsge',
                # fp theory
                'fp.leq',
                'fp.lt',
                'fp.geq',
                'fp.gt',
                'fp.eq',
                'fp.isNormal',
                'fp.isSubnormal',
                'fp.isZero',
                'fp.isInfinite',
                'fp.isNaN',
                'fp.isNegative',
                'fp.isPositive',
                # int / real theory
                '<=',
                '<',
                '>>',
                '>',
                'is_int',
                # sets theory
                'member',
                'subset',
                # string theory
                'str.<',
                'str.in_re',
                'str.<=',
                'str.prefixof',
                'str.suffixof',
                'str.contains',
                'str.is_digit',
        ]:
            return Node('Bool')
        # operators that return Int
        if ident in [
                'div',
                'mod',
                'abs',
                'to_int',
                # string theory
                'str.len',
                'str.indexof',
                'str.to_code',
                'str.to_int',
                # sets theory
                'card'
        ]:
            return Node('Int')
        # operators that return Real
        if ident in ['/', 'to_real', 'fp.to_real']:
            return Node('Real')
        if ident in ['+', '-', '*']:
            if any(map(lambda n: get_sort(n) == 'Real', node[1:])):
                return Node('Real')
            elif get_sort(node[1]) == 'Int':
                return Node('Int')
            else:
                return None
        # operators that return floating-points
        if ident in [
                'fp.abs',
                'fp.max',
                'fp.min',
                'fp.neg',
                'fp.rem',
        ]:
            return get_sort(node[1])
        if ident in [
                'fp.add',
                'fp.div',
                'fp.fma',
                'fp.mul',
                'fp.roundToIntegral',
                'fp.sqrt',
                'fp.sub',
        ]:
            return get_sort(node[2])
        if ident == 'fp':
            ew = get_bv_width(node[2])
            sw = 1 + get_bv_width(node[3])
            return Node('_', 'FloatingPoint', ew, sw)
        if ident == 'select':
            asort = get_sort(node[1])
            if is_array_sort(asort):
                return asort[1]
            return None
        if ident == 'store':
            return get_sort(node[1])
        if ident in __datatypes_constructors:
            return __datatypes_constructors[ident]

    # indexed operators
    if is_indexed_operator_app(node, 'divisible'):
        return Node('Bool')
    if is_indexed_operator_app(node, 'to_fp', 2) \
       or is_indexed_operator_app(node, 'to_fp_unsigned', 2):
        idx = get_indices(node[0], node[0][1], 2)
        return Node('_', 'FloatingPoint', idx[0], idx[1])

    return None


def get_sort(node):
    """Get the sort of the given node (cached).

    Return ``None`` if it can not be inferred. Requires that global
    information has been populated via ``collect_information``.
    """
    global __get_sort_cache

    if node.id in __get_sort_cache:
        return __get_sort_cache[node.id]
    if node in __get_sort_cache:
        return __get_sort_cache[node]
    sort = _get_sort_aux(node)
    __get_sort_cache[node.id] = sort
    __get_sort_cache[node] = sort
    return sort


def get_indices(node, name, index_count=1):
    """Return a list with the indices of the given indexed operator."""
    assert is_indexed_operator(node, name, index_count)
    return [int(n.data) for n in node[2:]]


# Boolean


def is_bool_const(node):
    """Return true if ``node`` is a Boolean constant."""
    return node.is_leaf() and node.data in ['false', 'true']


# Arithmetic


def is_arith_const(node):
    """Return true if ``node`` is an arithmetic constant."""
    if node.has_ident() and node.get_ident() == '/' and len(node) == 3:
        return is_int_const(node[1]) and is_int_const(node[2])
    return (node.is_leaf()
            and re.match('[0-9]+(\\.[0-9]*)?$', node.data) is not None)


def is_int_const(node):
    """Return true if ``node`` is an int constant."""
    return node.is_leaf() and re.match('^[0-9]+$', node.data) is not None


def is_real_const(node):
    """Return true if ``node`` is a real constant."""
    if node.has_ident() and node.get_ident() == '/' and len(node) == 3:
        return is_int_const(node[1]) and is_int_const(node[2])
    return (node.is_leaf()
            and re.match('^[0-9]+(\\.[0-9]*)?$', node.data) is not None)


def get_arith_const(node):
    """Return the arithmetic constant as a float."""
    if node.has_ident() and node.get_ident() == '/' and len(node) == 3:
        denom = get_arith_const(node[2])
        if denom == 0:
            return get_arith_const(node[1])
        return get_arith_const(node[1]) / denom
    return float(node.data)


# Arrays


def is_array_sort(node):
    """Return true if ``node`` is a array sort."""
    if node is None or node.is_leaf() or len(node) != 3:
        return False
    if not node.has_ident() or node.get_ident() != 'Array':
        return False
    return True


# BV


def is_bv_sort(node):
    """Return true if ``node`` is a bit-vector sort."""
    if node is None or node.is_leaf() or len(node) != 3:
        return False
    if not node.has_ident() or node.get_ident() != '_':
        return False
    return node[1] == 'BitVec'


def is_bv_const(node):
    """Return true if ``node`` is a bit-vector constant."""
    if node.is_leaf():
        s = node.data
        if s.startswith('#b') and all(c in ['0', '1'] for c in s[2:]):
            return True
        if s.startswith('#x') and all(c in string.hexdigits for c in s[2:]):
            return True
        return False
    if len(node) != 3:
        return False
    if not node.has_ident() or node.get_ident() != '_':
        return False
    if not node.data[1].is_leaf():
        return False
    return node.data[1].data.startswith('bv')


def is_bv_comp(node):
    """Checks whether ``node`` is a bit-vector comparison."""
    return node.has_ident() and node.get_ident() == 'bvcomp'


def is_bv_not(node):
    """Checks whether ``node`` is a bit-vector bit-wise negation."""
    return node.has_ident() and node.get_ident() == 'bvnot'


def is_bv_neg(node):
    """Checks whether ``node`` is a bit-vector negation."""
    return node.has_ident() and node.get_ident() == 'bvneg'


def get_bv_width(node):  # noqa: C901
    """Return the bit-width of a bit-vector node.

    Asserts that ``node`` is a bit-vector node. Requires that global
    information has been populated via ``collect_information``.
    """
    if is_bv_const(node):
        if node.is_leaf():
            data = node.data
            if data.startswith('#b'):
                return len(data[2:])
            assert data.startswith('#x')
            return len(data[2:]) * 4
        return int(node[2].data)
    if node in __sort_lookup:
        bvsort = __sort_lookup[node]
        if is_bv_sort(bvsort):
            return int(bvsort[2].data)
        return -1
    if is_indexed_operator_app(node, 'zero_extend') \
       or is_indexed_operator_app(node, 'sign_extend'):
        return get_indices(node[0], node[0][1])[0] + get_bv_width(node[1])
    if is_indexed_operator_app(node, 'extract', 2):
        idx = get_indices(node[0], 'extract', 2)
        return idx[0] - idx[1] + 1
    if is_indexed_operator_app(node, 'repeat'):
        return get_indices(node[0], 'repeat')[0] * get_bv_width(node[1])
    if is_indexed_operator_app(node, 'rotate_left') \
       or is_indexed_operator_app(node, 'rotate_right'):
        return get_bv_width(node[1])
    if is_indexed_operator_app(node, 'fp.to_ubv') \
       or is_indexed_operator_app(node, 'fp.to_sbv'):
        return get_indices(node[0], node[0][1])[0]
    if node.has_ident():
        ident = node.get_ident()
        if ident in [
                'bvadd',
                'bvand',
                'bvashr',
                'bvmul',
                'bvnand',
                'bvneg',
                'bvnor',
                'bvnot',
                'bvor',
                'bvsdiv',
                'bvshl',
                'bvshr',
                'bvsmod',
                'bvsrem',
                'bvsub',
                'bvudiv',
                'bvurem',
                'bvxnor',
                'bvxor',
        ]:
            return get_bv_width(node[1])
        if ident == 'concat':
            return sum(map(get_bv_width, node[1:]))
        if ident == 'bvcomp':
            return 1
        if ident == 'ite':
            bw = get_bv_width(node[2])
            if bw > 0:
                return bw
    return -1


def get_bv_constant_value(node):
    """Assume that node is a bit-vector constant and return ``(value, bit-
    width)``."""
    assert is_bv_const(node)
    if node.is_leaf():
        if node.data.startswith('#b'):
            return (int(node[2:], 2), len(node[2:]))
        assert node.data.startswith('#x')
        return (int(node[2:], 16), len(node[2:]) * 4)
    return (int(node[1][2:]), int(node[2].data))


# DT


def is_dt_constructor(node):
    return node.has_ident() and node.get_ident() in __datatypes_constructors


def is_dt_selector(node):
    return node.has_ident() and node.get_ident() in __datatypes_selectors


def get_dt_selector(node):
    assert is_dt_selector(node)
    return __datatypes_selectors[node.get_ident()]


# FP


def is_fp_sort(node):
    """Return true if ``node`` is a floating-point sort."""
    if is_leaf(node) \
       and node.data.startswith('Float') \
       and node[5:] in ['16', '32', '64', '128']:
        return True
    if not node.has_ident() or node.get_ident() != '_' or len(node) != 4:
        return False
    return node[1] == 'FloatingPoint'


def is_fp_const(node):
    """Return true if ``node`` is a floating-point constant."""
    return is_operator_app(node, 'fp')


def is_rm_sort(node):
    """Return true if ``node`` is a RoundingMode sort."""
    if is_leaf(node) and node.data == 'RoundingMode':
        return True
    return False


# Functions


def is_definition_node(node):
    """Check whether ``node`` is the node that specifies the name of a symbol
    within the declaration of definition of this symbol.

    This would be the case for the node ``x`` within ``(declare-const x
    Int)``, but not for any other occurrence of ``x``.
    """
    return node.id in __definition_node_ids


def is_defined_fun(node):
    """Check whether ``node`` is a defined function.

    Requires that global information has been populated via
    ``collect_information``.
    """
    if isinstance(node, str) or node.is_leaf():
        return node in __defined_functions
    return node.has_ident() and node.get_ident() in __defined_functions


def get_defined_fun(node):
    """Return the defined function ``node``, instantiated with the arguments of
    ``node`` if necessary.

    Assumes ``is_defined_fun(node)``. Requires that global information
    has been populated via ``collect_information``.
    """
    assert is_defined_fun(node)
    if node.is_leaf():
        _, func = __defined_functions[node.data]
        return func([])
    arity, func = __defined_functions[node.get_ident()]
    if arity == len(node[1:]):
        return func(node[1:])
    return node


# Sets


def is_set_sort(node):
    """Return true if ``node`` is a set sort."""
    if node.is_leaf() or len(node) != 2:
        return False
    if not node.has_ident() or node.get_ident() != 'Set':
        return False
    return True


# Strings


def is_seq_type(node):
    """Checks whether the ``node`` is a seq type."""
    return is_operator_app(node, 'Seq')


def is_string_const(node):
    """Checks whether the ``node`` is a string constant."""
    return node.is_leaf() and node[0] == '"' and node[-1] == '"'
