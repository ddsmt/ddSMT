import argparse
import os

def parse_options():
    """Configures the commandline parse and then parse the commandline options."""

    usage = "ddsmt.py [<options>] <infile> <outfile> <cmd> [<cmd options>]"
    ap = argparse.ArgumentParser(usage=usage)
    ap.add_argument("infile", help="the input file (in SMT-LIB v2 format)")
    ap.add_argument("outfile", help="the output file")
    ap.add_argument("cmd",
                    nargs=argparse.REMAINDER,
                    help="the command (with optional arguments)")

    ap.add_argument("-p",
                    dest="nprocs",
                    type=int,
                    default=os.cpu_count(),
                    help="use nprocs parallel processes, default: {}".format(
                        os.cpu_count()))
    ap.add_argument("-c",
                    dest="cmd_cc",
                    help="cross check command")
    ap.add_argument("-t",
                    dest="timeout",
                    type=float,
                    help="timeout for test runs in seconds, "\
                         "default: 1.5 * golden runtime")
    ap.add_argument("--timeout-cc",
                    dest="timeout_cc",
                    type=float,
                    help="timeout for test runs of the cross check in seconds, "\
                         "default: 1.5 * golden runtime")
    ap.add_argument("-v",
                    action="count",
                    dest="verbosity",
                    default=0,
                    help="increase verbosity")
    ap.add_argument("--match-err",
                    dest="match_err",
                    help="match string in stderr to identify "\
                         "failing input (default: stderr output)")
    ap.add_argument("--match-err-cc",
                    dest="match_err_cc",
                    help="match string to identify failing input for "\
                         "cross check command (default: stderr output)")
    ap.add_argument("--match-out",
                    dest="match_out",
                    help="match string in stdout to identify "\
                         "failing input (default: stdout output)")
    ap.add_argument("--match-out-cc",
                    dest="match_out_cc",
                    help="match string to identify failing input "
                         "for cross check command (default: stdout output)")
    ap.add_argument("--parser-test",
                    action="store_true",
                    dest="parser_test",
                    help="run ddSMT in parser test mode "\
                         "(parses only, does not require command argument)")
    res = ap.parse_args()

    if res.cmd_cc:
        res.cmd_cc = res.cmd_cc.split()

    return res

__PARSED_ARGS = None

def args():
    """Returns the commandline options. Calls :code:`parse_options()` if parsing has not yet happened."""
    global __PARSED_ARGS
    if __PARSED_ARGS is None:
        __PARSED_ARGS = parse_options()
    return __PARSED_ARGS
