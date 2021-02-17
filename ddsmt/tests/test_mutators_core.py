from ..nodes import Node
from .. import mutators_core
from .. import options
from .. import smtlib
from .utils import *


def test_binary_reduction():
    m = mutators_core.BinaryReduction()
    assert isinstance(str(m), str)
    assert not hasattr(m, 'filter')
    a = Node('a')
    b = Node('b')
    c = Node('c')
    d = Node('d')
    e = Node('e')
    f = Node('f')
    g = Node('g')
    h = Node('h')
    i = Node('i')
    exprs = [a, b, c, d, e, f, g, h, i]
    mut = [[a, b, c, d], [e, f, g, h, i], [a, b, c, d, e, f],
           [a, b, c, d, g, h, i], [a, b, e, f, g, h, i], [c, d, e, f, g, h, i]]
    assert check_global_mutations(m, b, exprs, [])
    assert check_global_mutations(m, a, exprs, mut)

    assert check_mutations(m, Node('and', 'a', 'b', 'c'), [])
    n = Node('and', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j')
    assert check_mutations(m, n, [
        Node('and', 'a', 'b', 'c', 'd'),
        Node('e', 'f', 'g', 'h', 'i', 'j'),
        Node('and', 'a', 'b', 'c', 'd', 'e', 'f', 'g'),
        Node('and', 'a', 'b', 'c', 'd', 'h', 'i', 'j'),
        Node('and', 'a', 'e', 'f', 'g', 'h', 'i', 'j'),
        Node('b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'),
    ])


def test_binary_reduction_named():
    m = mutators_core.BinaryReduction()
    m.ident = 'assert'
    assert isinstance(str(m), str)
    assert not hasattr(m, 'filter')
    a = Node('a')
    b = Node('assert', 'b')
    c = Node('c')
    d = Node('assert', 'd')
    e = Node('e')
    f = Node('assert', 'f')
    g = Node('g')
    h = Node('assert', 'h')
    i = Node('assert', 'i')
    exprs = [a, b, c, d, e, f, g, h, i]
    mut = [[a, b, c, d, e, g], [a, c, e, f, g, h, i]]
    assert check_global_mutations(m, a, exprs, mut)


def test_constants():
    smtlib.reset_information()
    m = mutators_core.Constants()
    assert isinstance(str(m), str)
    exprs = [Node('declare-const', 'x', 'Real'), Node('#b1011')]
    assert not m.filter(Node('x'))
    assert list(m.mutations(Node('x'))) == []
    smtlib.collect_information(exprs)
    assert m.filter(Node('x'))
    assert m.filter(Node('#b1011'))
    assert m.filter(Node('=', 'x', '1'))
    assert not m.filter(Node('y'))

    # can't handle this case without BV const normalization
    # else this should be an empty set
    assert check_mutations(
        m, Node('#b0'),
        [Node('_', 'bv0', 1), Node('_', 'bv1', 1)])
    assert check_mutations(m, Node('_', 'bv0', 1), [])

    assert check_mutations(
        m, Node('#b1011'),
        [Node('_', 'bv0', 4), Node('_', 'bv1', 4)])
    assert check_mutations(m, Node('x'), [Node('0.0'), Node('1.0')])
    assert check_mutations(m, Node('=', 'x', '1'),
                           [Node('false'), Node('true')])


def test_erase_node():
    m = mutators_core.EraseNode()
    assert isinstance(str(m), str)
    assert m.filter(Node('x'))
    assert check_mutations(m, Node('x'), [None])


def test_erase_named_node():
    m = mutators_core.EraseNode()
    m.ident = 'assert'
    assert isinstance(str(m), str)
    assert m.filter(Node('assert', 'x'))
    assert not m.filter(Node('x'))
    assert check_mutations(m, Node(Node('assert'), Node('true')), [None])


def test_merge_with_children():
    node = Node(Node('+'), Node('x'), Node(Node('+'), Node('x'), Node('y')))
    m = mutators_core.MergeWithChildren()
    assert isinstance(str(m), str)
    assert m.filter(node)
    assert check_mutations(m, node,
                           [Node(Node('+'), Node('x'), Node('x'), Node('y'))])


def test_replace_by_child():
    smtlib.collect_information([
        Node('declare-const', 'x', 'Int'),
        Node('declare-const', 'y', 'Int'),
    ])
    node = Node('+', 'x', 'y')
    m = mutators_core.ReplaceByChild()
    assert isinstance(str(m), str)
    assert m.filter(node)
    assert not m.filter(Node('x'))
    assert check_mutations(m, node, ['x', 'y'])
    smtlib.reset_information()


def test_replace_by_variable():
    smtlib.reset_information()
    options.args(['in', 'out', 'bin'])

    x = Node('x')
    c = Node('42')
    node = Node(Node('+'), x, c)
    m = mutators_core.ReplaceByVariable()
    assert isinstance(str(m), str)
    assert check_mutations(m, Node('x'), [])

    m.repl_mode = 'inc'
    assert isinstance(str(m), str)
    assert check_mutations(m, node, [])

    v1 = Node('v1')
    v3 = Node('v3')
    exprs = [
        Node(Node('declare-const'), v1, Node('Int')),
        Node(Node('declare-const'), x, Node('Int')),
        Node(Node('declare-const'), Node('v2'), Node('Bool')),
        Node(Node('declare-const'), v3, Node('Int'))
    ]

    smtlib.collect_information(exprs)
    assert m.filter(node)
    # we should not replace the x from the declare-const
    assert not m.filter(x)
    # but we should replace another x from somewhere else
    assert m.filter(Node('x'))
    assert not m.filter(c)
    assert check_mutations(m, node, [v1, x, v3])
    assert check_mutations(m, x, [])
    assert check_mutations(m, v1, [x, v3])
    assert check_mutations(m, v3, [x])

    m.repl_mode = 'dec'
    assert check_mutations(m, node, [v1, x, v3])
    assert check_mutations(m, x, [v1, v3])
    assert check_mutations(m, v1, [])
    assert check_mutations(m, v3, [v1])


def test_sort_children():
    node = Node(Node('+'), Node('123'), Node(Node('*'), Node('y'), Node('2')),
                Node('x'))
    expected = Node(Node('+'), Node('123'), Node('x'),
                    Node(Node('*'), Node('y'), Node('2')))

    m = mutators_core.SortChildren()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))
    assert not m.filter(Node('123'))
    assert m.filter(node)
    assert m.filter(expected)
    assert check_mutations(m, node, [expected])
    assert check_mutations(m, expected, [])
