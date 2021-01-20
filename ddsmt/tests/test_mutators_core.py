from ..nodes import Node
from .. import mutators_core
from .. import smtlib


def test_constants():
    exprs = [Node('declare-const', 'x', 'Real')]
    smtlib.collect_information(exprs)
    m = mutators_core.Constants()
    assert m.filter(Node('x'))
    assert m.filter(Node('=', 'x', '1'))
    assert not m.filter(Node('y'))
    assert m.mutations(Node('x')) == [Node('0.0'), Node('1.0')]
    assert m.mutations(Node('=', 'x', '1')) == [Node('false'), Node('true')]


def test_erase_node():
    m = mutators_core.EraseNode()
    assert m.filter(Node('x'))
    assert m.mutations(Node('x')) == [None]


def test_erase_named_node():
    m = mutators_core.EraseNode()
    m.ident = 'assert'
    assert m.filter(Node('assert', 'x'))
    assert not m.filter(Node('x'))
    assert m.mutations(Node(Node('assert'), Node('true'))) == [None]


def test_merge_with_children():
    node = Node(Node('+'), Node('x'), Node(Node('+'), Node('x'), Node('y')))
    m = mutators_core.MergeWithChildren()
    assert m.filter(node)
    assert list(m.mutations(node)) == [
        Node(Node('+'), Node('x'), Node('x'), Node('y'))
    ]


def test_replace_by_child():
    x = Node('x')
    y = Node('y')
    node = Node(Node('+'), x, y)
    m = mutators_core.ReplaceByChild()
    assert m.filter(node)
    assert not m.filter(x)
    assert list(m.mutations(node)) == [x, y]


def test_replace_by_variable():
    v1 = Node('v1')
    x = Node('x')
    v3 = Node('v3')
    exprs = [
        Node(Node('declare-const'), v1, Node('Int')),
        Node(Node('declare-const'), x, Node('Int')),
        Node(Node('declare-const'), Node('v2'), Node('Bool')),
        Node(Node('declare-const'), v3, Node('Int'))
    ]
    smtlib.collect_information(exprs)

    c = Node('42')
    node = Node(Node('+'), x, c)

    m = mutators_core.ReplaceByVariable()
    m.repl_mode = 'inc'
    assert m.filter(node)
    assert m.filter(x)
    assert not m.filter(c)
    assert list(m.mutations(node)) == [v1, x, v3]
    assert list(m.mutations(x)) == []
    assert list(m.mutations(v1)) == [x, v3]
    assert list(m.mutations(v3)) == [x]

    m.repl_mode = 'dec'
    assert list(m.mutations(node)) == [v1, x, v3]
    assert list(m.mutations(x)) == [v1, v3]
    assert list(m.mutations(v1)) == []
    assert list(m.mutations(v3)) == [v1]


def test_sort_children():
    node = Node(Node('+'), Node('123'), Node(Node('*'), Node('y'), Node('2')),
                Node('x'))
    expected = Node(Node('+'), Node('123'), Node('x'),
                    Node(Node('*'), Node('y'), Node('2')))

    m = mutators_core.SortChildren()
    assert not m.filter(Node('x'))
    assert not m.filter(Node('123'))
    assert m.filter(node)
    assert m.filter(expected)
    assert list(m.mutations(node)) == [expected]
    assert list(m.mutations(expected)) == []


def test_top_level_binary_reduction():
    m = mutators_core.TopLevelBinaryReduction()
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
    mut = [
        {
            e.id: None,
            f.id: None,
            g.id: None,
            h.id: None,
            i.id: None
        },
        {
            a.id: None,
            b.id: None,
            c.id: None,
            d.id: None
        },
        {
            g.id: None,
            h.id: None,
            i.id: None
        },
        {
            e.id: None,
            f.id: None
        },
        {
            c.id: None,
            d.id: None
        },
        {
            a.id: None,
            b.id: None
        },
    ]
    assert list(m.global_mutations(a, exprs)) == mut


def test_top_level_binary_reduction_named():
    m = mutators_core.TopLevelBinaryReduction()
    m.ident = 'assert'
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
    mut = [
        {
            f.id: None,
            h.id: None,
            i.id: None
        },
        {
            b.id: None,
            d.id: None
        },
    ]
    assert list(m.global_mutations(a, exprs)) == mut
