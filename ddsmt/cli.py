#! /usr/bin/env python3
#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in the AUTHORS file.
#
# ddSMT is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ddSMT is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ddSMT.  If not, see <https://www.gnu.org/licenses/>.

import logging
import os
import pprint
import sys
import time

from . import checker
from . import strategy_ddmin
from . import strategy_hierarchical
from . import mutators
from . import nodes
from . import options
from . import tmpfiles
from . import smtlib


class DDSMTException(Exception):
    def __init__(self, msg):
        self.__msg = msg

    def __str__(self):
        return "[ddsmt] Error: {}".format(self.__msg)


def check_options():
    # check input file
    if not os.path.isfile(options.args().infile):
        raise DDSMTException('input file is not a regular file')

    if options.args().parser_test:
        # only parse and print
        exprs = list(nodes.parse_smtlib(open(options.args().infile).read()))
        print(nodes.render_smtlib(exprs))
        sys.exit(0)

    # check executable
    if not options.args().cmd:
        raise DDSMTException('No executable was specified as command')
    if not os.path.isfile(options.args().cmd[0]):
        raise DDSMTException('Command "{}" is not a regular file'.format(
            options.args().cmd[0]))
    if not os.access(options.args().cmd[0], os.X_OK):
        raise DDSMTException('Command "{}" is not executable'.format(
            options.args().cmd[0]))


def setup_logging():
    logging.CHAT = 25
    logging.addLevelName(logging.CHAT, "CHAT")
    logging.chat = lambda msg, *args, **kwargs: logging.log(
        logging.CHAT, msg, *args, **kwargs)
    logging.TRACE = 5
    logging.addLevelName(logging.TRACE, "TRACE")
    logging.trace = lambda msg, *args, **kwargs: logging.log(
        logging.TRACE, msg, *args, **kwargs)
    logging.basicConfig(format='[ddSMT %(levelname)s] %(message)s')
    verbositymap = {
        -2: logging.ERROR,
        -1: logging.WARN,
        0: logging.CHAT,
        1: logging.INFO,
        2: logging.DEBUG,
        3: logging.TRACE,
    }
    verbosity = options.args().verbosity - options.args().quietness
    logging.getLogger().setLevel(
        level=verbositymap.get(verbosity, logging.DEBUG))


def ddsmt_main():
    start_time_process = time.process_time()
    # general setup
    setup_logging()
    check_options()

    # show what we are going to do
    logging.info("input file:   '{}'".format(options.args().infile))
    logging.info("output file:  '{}'".format(options.args().outfile))
    logging.info("command:      '{}'".format(" ".join(
        map(str,
            options.args().cmd))))
    if options.args().cmd_cc:
        logging.info("command (cc): '{}'".format(options.args().cmd_cc))

    # parse the input
    start_time = time.time()
    with open(options.args().infile, 'r') as infile:
        exprs = list(nodes.parse_smtlib(infile.read()))
        nexprs = nodes.count_exprs(exprs)

    logging.debug("parsed {} s-expressions in {:.2f} seconds".format(
        nexprs,
        time.time() - start_time))

    if options.args().parser_test:
        nodes.write_smtlib_to_file(options.args().outfile, exprs)
        return

    # disable unused theories
    mutators.auto_detect_theories(exprs)
    # copy binaries to temp folder
    tmpfiles.copy_binaries()
    # perform golden runs to see what the solver is doing
    checker.do_golden_runs()

    # do the reduction
    if options.args().strategy == 'ddmin':
        reduced_exprs, ntests = strategy_ddmin.reduce(exprs)
    elif options.args().strategy == 'hierarchical':
        reduced_exprs, ntests = strategy_hierarchical.reduce(exprs)
    end_time = time.time()

    # show the results
    if reduced_exprs != exprs:
        ifilesize = os.path.getsize(options.args().infile)
        ofilesize = os.path.getsize(options.args().outfile)
        nreduced_exprs = nodes.count_exprs(reduced_exprs)

        logging.info("")
        logging.info("runtime:         {:.2f} s".format(end_time - start_time))
        logging.debug("main process:   {:.2f} s".format(time.process_time()
                                                        - start_time_process))
        logging.info("tests:           {}".format(ntests))
        logging.info("input file:")
        logging.info("  file size:     {} B".format(ifilesize))
        logging.info("  s-expressions: {}".format(nexprs))
        logging.info("reduced file:")
        logging.info("  file size:     {} B ({:3.1f}%)".format(
            ofilesize, ofilesize / ifilesize * 100))
        logging.info("  s-expressions: {} ({:3.1f}%)".format(
            nreduced_exprs, nreduced_exprs / nexprs * 100))
    else:
        logging.warning("unable to minimize input file")


def main():
    try:
        ddsmt_main()
    except MemoryError:
        sys.exit("[ddsmt] memory exhausted")
    except KeyboardInterrupt:
        sys.exit("[ddsmt] interrupted")
    except DDSMTException as e:
        sys.exit(e)
    sys.exit(0)


if __name__ == "__main__":
    main()
