import argparse

from . import argparsemod
from . import version


class CustomFormatter(argparse.HelpFormatter):
    """A custom formatter for printing the commandline help.

    It combines :code:`argparse.ArgumentDefaultsHelpFormatter` with the
    :code:`argparse.HelpFormatter`, slightly increases the width
    reserved for the options and removed defaults for the mutator
    options.
    """
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs, max_help_position=35)

    def _get_help_string(self, action):
        help = action.help
        if action.default is not None:
            if '%(default)' not in action.help:
                if action.default is not argparse.SUPPRESS:
                    defaulting_nargs = [
                        argparse.OPTIONAL, argparse.ZERO_OR_MORE
                    ]
                    if action.option_strings or action.nargs in defaulting_nargs:
                        help += ' (default: %(default)s)'
        return help


class DumpConfigAction(argparse.Action):
    """Dump the current config."""
    def __call__(self, parser, namespace, values, option_string=None):
        import pprint
        pprint.pprint(vars(namespace))


def parse_options(mutators):
    """Configures the commandline parse and then parse the commandline
    options."""

    usage = "ddsmt.py [<options>] <infile> <outfile> <cmd> [<cmd options>]"
    ap = argparsemod.ModularArgumentParser(
        usage=usage,
        formatter_class=CustomFormatter,
        modular_help_groups=['mutator help'])
    ap.add_argument("infile", help="the input file (in SMT-LIB v2 format)")
    ap.add_argument("outfile", help="the output file")
    ap.add_argument("cmd",
                    nargs=argparse.REMAINDER,
                    help="the command (with optional arguments)")

    ap.add_argument('--version', action='version', version=version.VERSION)
    ap.add_argument("-v",
                    action="count",
                    dest="verbosity",
                    default=0,
                    help="increase verbosity")
    ap.add_argument('--dump-config',
                    nargs=0,
                    action=DumpConfigAction,
                    help='dump configuration')
    ap.add_argument("--parser-test",
                    action="store_true",
                    help="only test the parser")
    ap.add_argument('--pretty-print',
                    action='store_true',
                    default=False,
                    help='pretty-print to output file')
    ap.add_argument('--wrap-lines',
                    action='store_true',
                    default=False,
                    help='wrap lines in output file')
    ap.add_argument('--strategy',
                    choices=['ddmin', 'naive'],
                    default='ddmin',
                    help='minimization strategy')

    apcheck = ap.add_argument_group('checker arguments')
    apcheck.add_argument(
        '-j',
        '--jobs',
        type=int,
        metavar='n',
        default=-2,
        help='number of parallel checks; #processors+n if n<=0')
    apcheck.add_argument('--memout',
                         type=int,
                         metavar='megabytes',
                         help='memout for individual checks')
    apcheck.add_argument("--timeout",
                         metavar='timeout',
                         type=float,
                         help="timeout for test runs in seconds "
                         "(default: 1.5 * golden runtime)")
    apcheck.add_argument(
        "--ignore-output",
        action="store_true",
        help="ignore stdout and stderr, only consider exit code")
    apcheck.add_argument(
        "--match-err",
        metavar='str',
        help="match string in stderr to identify failing input")
    apcheck.add_argument(
        "--match-out",
        metavar='str',
        help="match string in stdout to identify failing input")

    apcheck.add_argument("-c",
                         metavar='cmd-cc',
                         dest='cmd_cc',
                         help="cross check command")
    apcheck.add_argument(
        "--timeout-cc",
        metavar='timeout',
        type=float,
        help="timeout for test runs of the cross check in seconds "
        "(default: 1.5 * golden runtime)")
    apcheck.add_argument(
        "--ignore-output-cc",
        action="store_true",
        help=
        "ignore stdout and stderr, only consider exit code for cross check command"
    )
    apcheck.add_argument(
        "--match-err-cc",
        metavar='str',
        help=
        "match string in stderr to identify failing input for cross check command"
    )
    apcheck.add_argument(
        "--match-out-cc",
        metavar='str',
        help=
        "match string in stdout to identify failing input for cross check command"
    )

    argp_modes = ap.add_argument_group('special modes')
    mutators.collect_mutator_modes(argp_modes)

    mutators.collect_mutator_options(ap)

    res = ap.parse_args()

    if res.cmd_cc:
        res.cmd_cc = res.cmd_cc.split()

    return res


__PARSED_ARGS = None


def args():
    """Returns the commandline options.

    Calls :code:`parse_options()` if parsing has not yet happened.
    """
    global __PARSED_ARGS
    if __PARSED_ARGS is None:
        # make sure that options as a whole does not depend on other modules
        from . import mutators
        __PARSED_ARGS = parse_options(mutators)
    return __PARSED_ARGS


def add_mutator_argument(argparser, name, default, help_msg):
    dest = 'mutator_{}'.format(name.replace('-', '_'))
    grp = argparser.add_mutually_exclusive_group()
    grp.add_argument('--{}'.format(name),
                     action='store_true',
                     default=default,
                     dest=dest,
                     help=help_msg if not default else argparse.SUPPRESS)
    grp.add_argument('--no-{}'.format(name),
                     action='store_false',
                     default=default,
                     dest=dest,
                     help=help_msg if default else argparse.SUPPRESS)
