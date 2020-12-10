import argparse
import os
import sys

__version__ = "0.1"


def parse_options():
    """Configures the commandline parse and then parse the commandline options."""

    usage = "ddsmt.py [<options>] <infile> <outfile> <cmd> [<cmd options>]"
    aparser = argparse.ArgumentParser(usage=usage)
    aparser.add_argument("infile",
                         help="the input file (in SMT-LIB v2 format)")
    aparser.add_argument("outfile",
                         help="the output file")
    aparser.add_argument("cmd", nargs=argparse.REMAINDER,
                         help="the command (with optional arguments)")

    aparser.add_argument("-p", dest="nprocs", type=int, default=os.cpu_count(),
                         help="use nprocs parallel processes, default: {}".format(os.cpu_count()))
    aparser.add_argument("-c", dest="cmd_cc",
                         default=None,
                         help="optional second command (for cross "
                         "checking)")
    aparser.add_argument("-r", action="store_true", dest="randomized",
                         default=False,
                         help="randomize substitution subsets")
    aparser.add_argument("-b", action="store_true", dest="bfs",
                         default=False,
                         help="search for terms in breadth-first order ")
    aparser.add_argument("-t", dest="timeout", metavar="val",
                         default=None, type=float,
                         help="absolute: timeout for test runs in "
                         "seconds. relative: timeout is [val] "
                         "seconds longer than golden runtime. "
                         "dynamic: timeout is [val] seconds longer "
                         "than most recent successful test. "
                         "(default: absolute. When timeout is "
                         "unspecified, default is "
                         "1.5 * golden runtime.)")
    timeout_group = aparser.add_mutually_exclusive_group()
    timeout_group.add_argument("--rel", action="store_true",
                               dest="timeout_relative", default=False,
                               help="timeouts are relative to \
                                test time of input file")
    timeout_group.add_argument("--dyn", action="store_true",
                               dest="timeout_dynamic", default=False,
                               help="timeouts are relative to the runtime of "
                               "the most recent successful test")
    aparser.add_argument("--round", dest="roundtime", metavar="val",
                         default=None, type=float,
                         help="approximate time limit for testing "
                         "rounds in seconds")
    aparser.add_argument("-v", action="count", dest="verbosity", default=0,
                         help="increase verbosity")
    aparser.add_argument("--match-err", dest="match_err",
                         default=None,
                         help="match string in stderr to identify "
                         "failing input (default: stderr output)")
    aparser.add_argument("--match-err-cc", dest="match_err_cc",
                         default=None,
                         help="match string to identify failing input "
                         "for cross check command (default: "
                         "stderr output)")
    aparser.add_argument("--match-out", dest="match_out",
                         default=None,
                         help="match string in stdout to identify "
                         "failing input (default: stdout output)")
    aparser.add_argument("--match-out-cc", dest="match_out_cc",
                         default=None,
                         help="match string to identify failing input "
                         "for cross check command (default: "
                         "stdout output)")
    aparser.add_argument("--parser-test", action="store_true",
                         dest="parser_test", default=False,
                         help="run ddSMT in parser test mode "
                         "(parse only, does not require command "
                         "argument)")
    aparser.add_argument("--version", action="version",
                         version=__version__)
    return aparser.parse_args()
