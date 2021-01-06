#! /usr/bin/env python3
#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (C) 2013-2019, Aina Niemetz.
# Copyright (C) 2016-2020, Mathias Preiner.
# Copyright (C) 2018, Jane Lange.
# Copyright (C) 2018, Andres Noetzli.
#
# This file is part of ddSMT.
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
# along with ddSMT.  If not, see <http://www.gnu.org/licenses/>.
#

import logging
import os
import pprint
import sys
import time

from . import checker
from . import ddmin
from . import ddnaive
from . import options
from . import parser
from . import tmpfiles
from . import smtlib


def check_options():
    if options.args().max_threads != 1:
        # configure number of threads
        if options.args().max_threads <= 0:
            options.args(
            ).max_threads = os.cpu_count() + options.args().max_threads
        logging.info('Using up to %d threads.', options.args().max_threads)

    if options.args().dump_config:
        pprint.pprint(vars(options.args()))

    # check input file
    if not os.path.isfile(options.args().infile):
        raise Exception('input file is not a regular file')

    if options.args().parser_test:
        # only parse and print
        exprs = parser.parse_smtlib(open(options.args().infile).read())
        print(parser.render_smtlib(exprs))
        sys.exit(0)

    # check executable
    if not options.args().cmd:
        raise Exception('No executable was specified as command')
    if not os.path.isfile(options.args().cmd[0]):
        raise Exception('Command "{}" is not a regular file'.format(
            options.args().cmd[0]))
    if not os.access(options.args().cmd[0], os.X_OK):
        raise Exception('Command "{}" is not executable'.format(
            options.args().cmd[0]))


def setup_logging():
    logging.basicConfig(format='[ddSMT %(levelname)s] %(message)s')
    verbositymap = {
        0: logging.WARN,
        1: logging.INFO,
        2: logging.DEBUG,
    }
    logging.getLogger().setLevel(
        level=verbositymap.get(options.args().verbosity, logging.DEBUG))


def ddsmt_main():
    setup_logging()
    check_options()

    logging.info("input file:   '{}'".format(options.args().infile))
    logging.info("output file:  '{}'".format(options.args().outfile))
    logging.info("command:      '{}'".format(" ".join(
        map(str,
            options.args().cmd))))
    if options.args().cmd_cc:
        logging.info("command (cc): '{}'".format(options.args().cmd_cc))

    ifilesize = os.path.getsize(options.args().infile)

    start_time = time.time()
    with open(options.args().infile, 'r') as infile:
        exprs = list(parser.parse_smtlib(infile.read()))
        nexprs = smtlib.node_count(exprs)

    logging.debug("parsed {} s-expressions in {:.2f} seconds".format(
        nexprs,
        time.time() - start_time))

    if options.args().parser_test:
        parser.write_smtlib_to_file(options.args().outfile, exprs)
        return

    tmpfiles.copy_binaries()
    checker.do_golden_runs()

    if options.args().strategy == 'ddmin':
        reduced_exprs, ntests = ddmin.reduce(exprs)
    elif options.args().strategy == 'naive':
        reduced_exprs, ntests = ddnaive.reduce(exprs)
    end_time = time.time()
    if reduced_exprs != exprs:
        ofilesize = os.path.getsize(options.args().outfile)
        nreduced_exprs = smtlib.node_count(reduced_exprs)

        logging.info("")
        logging.info("runtime:         {:.2f} s".format(end_time - start_time))
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
    except Exception as e:
        sys.exit(str(e))
    sys.exit(0)


if __name__ == "__main__":
    main()
