from ..nodes import Node
from .. import mutators_boolean


def test_de_morgan():
    m = mutators_boolean.DeMorgan()
    notfilter = [
        Node('=', '1', 'y'),
        Node('and', 'x', 'y'),
        Node('or', 'x', 'y'),
    ]
    exprs = {
        Node('not', ('and', 'x', 'y')):
        [Node('or', ('not', 'x'), ('not', 'y'))],
        Node('not', ('or', 'x', 'y')):
        [Node('and', ('not', 'x'), ('not', 'y'))],
    }
    for e in notfilter:
        assert not m.filter(e)
    for k, v in exprs.items():
        assert m.filter(k)
        assert m.mutations(k) == v
