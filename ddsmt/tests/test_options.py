import pytest

from .. import mutators
from .. import options


def test_help(capsys):
    options.__PARSED_ARGS = None
    with pytest.raises(SystemExit):
        options.parse_options(mutators, ['--help'])
    captured = capsys.readouterr()
    assert 'usage: ddsmt.py [<options>] <infile> <outfile> <cmd> [<cmd options>]' in captured.out


def test_help_all(capsys):
    options.__PARSED_ARGS = None
    with pytest.raises(SystemExit):
        options.parse_options(mutators, ['--help-all'])
    captured = capsys.readouterr()
    assert '--[no-]core' in captured.out


def test_dump_config(capsys):
    options.__PARSED_ARGS = None
    with pytest.raises(SystemExit):
        options.parse_options(mutators, ['--dump-config'])
    captured = capsys.readouterr()
    assert "'dump_config': True," in captured.out


def test_no_options(capsys):
    options.__PARSED_ARGS = None
    with pytest.raises(SystemExit):
        options.parse_options(mutators, [])
    captured = capsys.readouterr()
    assert 'error: the following arguments are required: infile, outfile, cmd' in captured.err


def test_basic(capsys):
    options.__PARSED_ARGS = None
    options.parse_options(mutators, ['input.smt2', 'output.smt2', 'binary'])
    options.parse_options(mutators,
                          ['--no-core', 'input.smt2', 'output.smt2', 'binary'])
    options.parse_options(
        mutators,
        ['--no-core', '--constants', 'input.smt2', 'output.smt2', 'binary'])


def test_cmd_cc(capsys):
    options.__PARSED_ARGS = None
    options.parse_options(
        mutators,
        ['-c', 'other-binary', 'input.smt2', 'output.smt2', 'binary'])


def test_args(capsys):
    options.__PARSED_ARGS = None
    with pytest.raises(SystemExit):
        options.args()
    opts = options.args(['--no-core', 'input.smt2', 'output.smt2', 'binary'])
    assert options.args() == opts
