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
import shutil
import sys
import time
import tempfile

from argparse import ArgumentParser, REMAINDER
from multiprocessing import Pool
from subprocess import Popen, PIPE, TimeoutExpired
from collections import namedtuple

from utils import ddmin
from utils import options
from utils import tmpfiles
from utils import checker
from utils import smtlib
from utils.subst import Substitution
import utils.iter as iters
import utils.smtlib as smtlib


def setup_logging():
    logging.basicConfig(format='[ddSMT %(levelname)s] %(message)s')
    verbositymap = {
        0: logging.WARN,
        1: logging.INFO,
        2: logging.DEBUG,
    }
    logging.getLogger().setLevel(level=verbositymap.get(
        options.args().verbosity, logging.DEBUG))


class DDSMTException(Exception):
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return "[ddsmt] Error: {}".format(self.msg)


def ddsmt_main():
    options.args()
    setup_logging()

    if not os.path.exists(options.args().infile):
        raise DDSMTException("given input file does not exist")
    if os.path.isdir(options.args().infile):
        raise DDSMTException("given input file is a directory")
    if not options.args().parser_test and not options.args().cmd:
        raise DDSMTException("command missing")


    logging.info("input file:   '{}'".format(options.args().infile))
    logging.info("output file:  '{}'".format(options.args().outfile))
    logging.info("command:      '{}'".format(" ".join(map(str, options.args().cmd))))
    if options.args().cmd_cc:
        logging.info("command (cc): '{}'".format(options.args().cmd_cc))

    ifilesize = os.path.getsize(options.args().infile)

    start_time = time.time()
    with open(options.args().infile, 'r') as infile:
        exprs = list(smtlib.parse(infile.read()))
        nexprs = iters.count_exprs(exprs)

    logging.debug("")
    logging.debug("parsed {} s-expressions in {:.2f} seconds".format(
            nexprs, time.time() - start_time))

    if options.args().parser_test:
        smtlib.print_exprs(options.args().outfile, exprs)
        return

    tmpfiles.copy_binaries()
    checker.do_golden_runs()

    reduced_exprs, nreduced, ntests = ddmin.reduce(exprs)
    end_time = time.time()
    if nreduced:
        ofilesize = os.path.getsize(options.args().outfile)
        nreduced_exprs = iters.count_exprs(reduced_exprs)

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


if __name__ == "__main__":
    try:
        ddsmt_main()
    except DDSMTException as exc:
        sys.exit(str(exc))
    except MemoryError:
        sys.exit("[ddsmt] memory exhausted")
    except KeyboardInterrupt:
        sys.exit("[ddsmt] interrupted")
    sys.exit(0)
