import argparse
import os

from . import argparsemod
from . import version


class ToggleAction(argparse.Action):
    """A simple :code:`argparse.Action` class that is used for option pairs of
    the form :code:`--option` and :code:`--no-option`."""
    def __init__(self, opt_name, default=True, dest=None, help=None):
        super(ToggleAction,
              self).__init__([f'--{opt_name}', f'--no-{opt_name}'],
                             dest=dest,
                             nargs=0,
                             help=help,
                             default=default)

    def _get_value(self, option_string):
        """Figure out whether the option shall be true or false."""
        return not option_string.startswith('--no-')

    def __call__(self, parser, namespace, values, option_string=None):
        """Set the option depending on which option was used."""
        setattr(namespace, self.dest, self._get_value(option_string))


class CustomFormatter(argparse.ArgumentDefaultsHelpFormatter,
                      argparse.HelpFormatter):
    """A custom formatter for printing the commandline help.

    Uses :code:`argparse.ArgumentDefaultsHelpFormatter` to print default
    values, but avoids printing for :code:`ToggleAction` options and
    :code:`None` defaults. Furthermore uses the
    :code:`argparse.HelpFormatter`, to slightly increase the width
    reserved for the options.
    """
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs, max_help_position=35)

    def _get_help_string(self, action):
        """Render the help string.

        Appends the default, if needed.
        """
        if action.default is None or isinstance(action, ToggleAction):
            return action.help
        return super(CustomFormatter, self)._get_help_string(action)

    def _format_action_invocation(self, action):
        """Formats the options for the help page, uses a special formatting for
        :code:`ToggleAction` options."""
        if isinstance(action, ToggleAction):
            name = action.option_strings[0][2:]
            return ', '.join([f'--[no-]{name}'] + action.option_strings[2:])
        return super(CustomFormatter, self)._format_action_invocation(action)


class DumpConfigAction(argparse.Action):
    """Dump the current config using :code:`pprint`."""
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
                    choices=['ddmin', 'hierarchical'],
                    default='ddmin',
                    help='minimization strategy')

    apcheck = ap.add_argument_group('checker arguments')
    apcheck.add_argument('--unchecked',
                         action='store_true',
                         help='assume every change is okay without checking')
    apcheck.add_argument('-j',
                         '--jobs',
                         type=int,
                         metavar='n',
                         default=os.cpu_count() - 2,
                         help='number of parallel checks')
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
