from .. import parser


def test_basic():
    assert list(parser.parse_smtlib('(reset)')) == [('reset', )]
