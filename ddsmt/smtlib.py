import re

from . import nodes
from .nodes import dfs, Node
from . import subst

# Stores all declared or defined (first-order) constants with their types
__constants = {}
# Stores all defined functions with their return types
__defined_functions = {}
# Stores the types for all declared or defined symbols
__type_lookup = {}


def collect_information(exprs):
    """Initialize global lookups for first-order constants, defined functions
    and types of all these symbols."""
    global __constants
    global __defined_functions
    global __type_lookup
    __constants = {}
    __defined_functions = {}
    __type_lookup = {}

    for cmd in exprs:
        if not cmd.has_name():
            continue
        name = cmd.get_name()
        if name == 'declare-const':
            if not len(cmd) == 3:
                continue
            assert is_leaf(cmd[1])
            __constants[cmd[1].data] = cmd[2]
            __type_lookup[cmd[1].data] = cmd[2]
        if name == 'declare-fun':
            if not len(cmd) == 4:
                continue
            assert cmd[1].is_leaf()
            assert not is_leaf(cmd[2])
            if cmd[2] == tuple():
                __constants[cmd[1].data] = cmd[2]
            __type_lookup[cmd[1].data] = cmd[3]
        if name == 'define-fun':
            if not len(cmd) == 5:
                continue
            assert is_leaf(cmd[1])
            assert not is_leaf(cmd[2])
            if cmd[2] == tuple():
                __constants[cmd[1].data] = cmd[2]
            __defined_functions[
                cmd[1]] = lambda args, cmd=cmd: nodes.substitute(
                    cmd[4], {cmd[2][i][0]: args[i]
                             for i in range(len(args))})
            __type_lookup[cmd[1].data] = cmd[3]


# Generic utilities
def dfs(exprs, max_depth=-1):
    """DFS traversal of s-expressions in exprs up to a maximum depth."""
    #visit = list(reversed([(1, x) for x in exprs]))
    visit = [(1, x) for x in reversed(exprs)]
    while visit:
        cur_depth, expr = visit.pop()
        if isinstance(expr, tuple) \
            and (max_depth == -1 or cur_depth < max_depth):
            yield expr
            visit.extend([(cur_depth + 1, x) for x in reversed(expr)])
        else:
            yield expr


def dfs_postorder(exprs):
    """Postorder DFS traversal of s-expressions in exprs."""
    visit = [(x, False) for x in exprs]
    while visit:
        sexpr, visited = visit.pop()
        if not isinstance(sexpr, tuple):
            continue

        if visited:
            yield sexpr
        else:
            visit.append((sexpr, True))
            visit.extend((x, False) for x in reversed(sexpr))


def count_nodes(node):
    """Return the number of expressions yielded when traversing :code:`node` in
    DFS manner."""
    return len(list(nodes.dfs(node)))


def count_exprs(node):
    """Return the number of tuples yielded when traversing :code:`node` in DFS
    manner."""
    return len([x for x in nodes.dfs(node) if not x.is_leaf()])


def filter_exprs(exprs, filter_func, max_depth=-1):
    """Filter s-expressions based on filter_func."""
    for expr in nodes.dfs(exprs, max_depth):
        if filter_func(expr):
            yield expr


def get_variables_with_type(var_type):
    """Return all variables with the type :code:`var_type`."""
    return [v for v in __type_lookup if __type_lookup[v] == var_type]


# Semantic testers


def is_leaf(node):
    """Check whether the :code:`node` is a leaf node."""
    return node.is_leaf()


def is_var(node):
    """Return true if :code:`node` is a variable (first order constant)
    node."""
    return node.is_leaf() and node in __constants


def has_name(node):
    """Check whether the :code:`node` has a name, that is its first child is a
    leaf node."""
    return not node.is_leaf() and not node == () and is_leaf(node[0])


def get_name(node):
    """Get the name of the :code:`node`, asserting that
    :code:`has_name(node)`."""
    assert has_name(node)
    return node[0]


def is_quoted_symbol(node):
    """Checks whether the :code:`node` is a quoted symbol."""
    return node.is_leaf() and node[0] == '|' and node[-1] == '|'


def get_quoted_symbol(node):
    """Returns the actual symbol name from a quoted symbol :code:`node`."""
    assert is_quoted_symbol(node)
    return node[1:-1]


def is_operator(node, name):
    return has_name(node) and get_name(node) == name


def is_indexed_operator(node, name, index_count=1):
    """Return true if :code:`node` is an indexed operator :code:`name` and the
    given number of indices matches :code:`index_count`."""
    if node.is_leaf() or len(node) < 2:
        return False
    if has_name(node) or not has_name(node[0]):
        return False
    if node[0][0] != '_' or node[0][1] != name:
        return False
    return len(node[0]) == index_count + 2


def is_nary(node):
    """Check whether the :code:`node` is a n-ary operator."""
    if node.is_leaf() or not has_name(node):
        return False
    return get_name(node) in [
        '=>', 'and', 'or', 'xor', '=', 'distinct', '+', '-', '*', 'div', '/',
        '<=', '<', '>=', '>', 'bvand', 'bvor', 'bvadd', 'bvmul', 'concat'
    ]


def is_boolean_constant(node):
    """Check whether the :code:`node` is a Boolean constant."""
    return node.is_leaf() and node.data in ['false', 'true']


def is_arithmetic_constant(node):
    """Check whether the :code:`node` is an arithmetic constant."""
    return node.is_leaf() and re.match('[0-9]+(\\.[0-9]*)?',
                                       node.data) is not None


def is_int_constant(node):
    """Check whether the :code:`node` is an int constant."""
    return node.is_leaf() and re.match('^[0-9]+$', node.data) is not None


def is_real_constant(node):
    """Check whether the :code:`node` is a real constant."""
    return node.is_leaf() and re.match('^[0-9]+(\\.[0-9]*)?$',
                                       node.data) is not None


def is_string_constant(node):
    """Checks whether the :code:`node` is a string constant."""
    return node.is_leaf() and re.match('^\"[^\"]*\"$', node.data) is not None


def is_bv_constant(node):
    """Return true if :code:`node` is a bit-vector constant."""
    if node.is_leaf():
        s = node.data
        if s.startswith('#b'):
            return True
        if s.startswith('#x'):
            return True
        return False
    if len(node) != 3:
        return False
    if not node.has_name() or node.get_name() != '_':
        return False
    if not node.data[1].is_leaf():
        return False
    return node.data[1].data.startswith('bv')


def is_constant(node):
    """Return true if :code:`node` is a constant value."""
    return is_boolean_constant(node) or is_arithmetic_constant(
        node) or is_int_constant(node) or is_real_constant(
            node) or is_string_constant(node) or is_bv_constant(node)


def is_defined_function(node):
    """Check whether :code:`node` is a defined function."""
    if node.is_leaf():
        return node in __defined_functions
    return has_name(node) and get_name(node) in __defined_functions


def get_defined_function(node):
    """Return the defined function :code:`node`, instantiated with the
    arguments of :code:`node` if necessary.

    Assumes :code:`is_defined_function(node)`.
    """
    assert is_defined_function(node)
    if node.is_leaf():
        return __defined_functions[node.data]([])
    return __defined_functions[get_name(node)](node[1:])


def get_constants(const_type):
    """Return a list of constants for the given type."""
    if const_type == 'Bool':
        return [Node('false'), Node('true')]
    if const_type == 'Int':
        return [Node('0'), Node('1')]
    if const_type == 'Real':
        return [Node('0.0'), Node('1.0')]
    if is_bv_type(const_type):
        return [
            Node(Node('_'), Node(c), Node(const_type[2]))
            for c in ['bv0', 'bv1']
        ]
    if is_set_type(const_type):
        return [Node(Node('as'), Node('emptyset'), Node(const_type))] + [
            Node(Node('singleton'), c) for c in get_constants(const_type[1])
        ]
    return []


def get_type(node):
    """Get the return type of the given node.

    Return :code:`None` if it can not be inferred.
    """
    if node.is_leaf() and node.data in __type_lookup:
        return __type_lookup[node.data]
    if is_boolean_constant(node):
        return Node('Bool')
    if is_bv_constant(node):
        return Node('_', 'BitVec', str(get_bv_width(node)))
    if is_int_constant(node):
        return Node('Int')
    if is_real_constant(node):
        return Node('Real')
    bvwidth = get_bv_width(node)
    if bvwidth != -1:
        return Node('_', 'BitVec', str(bvwidth))
    if has_name(node):
        if is_operator(node, 'ite'):
            return get_type(node[1])
        # stuff that returns Bool
        if get_name(node) in [
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
        # int theory
        if get_name(node) == '_' and len(node) == 3 and node[1] == 'divisible':
            return Node('Bool')
        # stuff that returns Int
        if get_name(node) in [
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
        # stuff that returns Real
        if get_name(node) in ['/', 'to_real', 'fp.to_real']:
            return Node('Real')
        if get_name(node) in ['+', '-', '*']:
            if any(map(lambda n: get_type(n) == 'Real', node[1:])):
                return Node('Real')
            else:
                return Node('Int')
    return None


def is_bv_type(node):
    """Return true if :code:`node` is a bit-vector sort."""
    if node.is_leaf() or len(node) != 3:
        return False
    if not has_name(node) or get_name(node) != '_':
        return False
    return node[1] == 'BitVec'


def is_set_type(node):
    """Return true if :code:`node` is a set sort."""
    if node.is_leaf() or len(node) != 2:
        return False
    if not has_name(node) or get_name(node) != 'Set':
        return False
    return True


def get_bv_width(node):
    """Return the bit-width of a bit-vector node.

    Asserts that :code:`node` is a bit-vector node.
    """
    if is_bv_constant(node):
        if node.is_leaf():
            data = node.data
            if data.startswith('#b'):
                return len(data[2:])
            if data.startswith('#x'):
                return len(data[2:]) * 4
        return int(node[2].data)
    if node in __type_lookup:
        bvtype = __type_lookup[node]
        assert is_bv_type(bvtype)
        return int(bvtype[2].data)
    if node.has_name():
        if node.get_name() in [
                'bvnot', 'bvand', 'bvor', 'bvneg', 'bvadd', 'bvmul', 'bvudiv',
                'bvurem', 'bvshl', 'bvshr', 'bvnand', 'bvnor', 'bvxor',
                'bvsub', 'bvsdiv', 'bvsrem', 'bvsmod', 'bvashr'
        ]:
            return get_bv_width(node[1])
        if node.get_name() == 'concat':
            assert len(node) == 3
            return get_bv_width(node[1]) + get_bv_width(node[2])
        if node.get_name() == 'bvcomp':
            return 1
        if is_indexed_operator(node, 'extend'):
            return int(node[0][2]) + get_bv_width(node[1])
        if is_indexed_operator(node, 'extract', 2):
            return int(node[0][2]) - int(node[0][3]) + 1
        if is_indexed_operator(node, 'repeat'):
            return int(node[0][2]) * get_bv_width(node[1])
        if is_indexed_operator(node, 'rotate'):
            return get_bv_width(node[1])
    return -1
