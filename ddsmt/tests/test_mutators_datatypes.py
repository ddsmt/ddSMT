from ..nodes import Node
from .. import mutators_datatypes
from .. import smtlib
from ..mutator_utils import *
from .utils import *


def test_datatypes_get_mutators():
    d = mutators_datatypes.get_mutators()
    assert isinstance(d, dict)
    assert len(d) == 3


def test_datatypes_remove_constructor():
    m = mutators_datatypes.RemoveConstructor()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))

    n = Node(
        'declare-datatypes',
        (('Yin', '0'), ('Yang', '0')),
        (('yin', ), ('yang', )),
    )
    assert m.filter(n)
    assert check_mutations(m, n, [
        ('declare-datatypes', (('Yin', '0'), ('Yang', '0')), (
            (),
            ('yang', ),
        )),
        ('declare-datatypes', (('Yin', '0'), ('Yang', '0')), (('yin', ), ())),
    ])


def test_datatypes_remove_datatype():
    m = mutators_datatypes.RemoveDatatype()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))

    n = Node(
        'declare-datatypes',
        (
            ('Yin', '0'),
            ('Yang', '0'),
        ),
        (
            ('yin', ),
            ('yang', ),
        ),
    )
    assert m.filter(n)
    assert check_mutations(m, n, [
        ('declare-datatypes', (('Yang', '0'), ), (('yang', ), )),
        ('declare-datatypes', (('Yin', '0'), ), (('yin', ), )),
    ])


def test_datatypes_remove_datatype_identity():
    smtlib.reset_information()
    m = mutators_datatypes.RemoveDatatypeIdentity()
    assert isinstance(str(m), str)
    assert not m.filter(Node('x'))

    decl = Node(
        'declare-datatypes',
        (('a', '0'), ),
        ((
            ('r', ),
            ('b', ('c', ('_', 'BitVec', '3')), ('d', 'a')),
        ), ),
    )
    smtlib.collect_information([decl])
    n = Node('d', ('b', 'y', 'z'))
    assert m.filter(n)
    assert check_mutations(m, n, ['z'])
