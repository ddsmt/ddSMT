import pytest
from ..nodes import Node


def test_has_ident():
    assert not Node('x').has_ident()
    assert Node('_', 'BitVec', 3).has_ident()
    assert Node('assert', 'x', 'x').has_ident()


def test_get_ident():
    with pytest.raises(AssertionError):
        Node('x').get_ident()
    assert Node('_', 'BitVec', 3).get_ident() == '_'
    assert Node('assert', 'x', 'x').get_ident() == 'assert'
