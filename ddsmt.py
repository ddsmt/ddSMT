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

from utils import options
from utils import tmpfiles
from utils import checker
from utils.subst import Substitution
import utils.iter as iters
import utils.smtlib as smtlib

g_tmp_dir = tempfile.mkdtemp(prefix="ddsmt-")
TMPFILE_PREFIX = os.path.join(g_tmp_dir, "ddsmt-tmp-{}.smt2")
g_tmpbin = os.path.join(g_tmp_dir, "binary")
g_tmpbin_cc = os.path.join(g_tmp_dir, "binary-cc")
g_tmpfile = TMPFILE_PREFIX.format(os.getpid())

RunInfo = namedtuple("RunInfo", ["exit", "out", "err", "runtime"])

g_golden_run = None
g_golden_run_cc = None
g_ntests = 0
g_args = None


def setup_logging():
    logging.basicConfig(format='[ddSMT %(levelname)s] %(message)s')
    verbositymap = {
        0: logging.WARN,
        1: logging.INFO,
        2: logging.DEBUG,
    }
    logging.getLogger().setLevel(
        level=verbositymap.get(options.args().verbosity, logging.DEBUG))


class DDSMTException(Exception):
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return "[ddsmt] Error: {}".format(self.msg)


def _cleanup():
    if os.path.exists(g_tmp_dir):
        shutil.rmtree(g_tmp_dir)


def _print_exprs(filename, exprs):
    with open(filename, 'w') as outfile:
        outfile.write(smtlib.to_str_iter(exprs))
        outfile.write('\n')


def _process_substitution(tup):
    exprs, subset, substs = tup

    subst = Substitution()
    for x, y in zip(subset, substs):
        subst.add(x, y)

    tmpfile = TMPFILE_PREFIX.format(os.getpid())
    test_exprs = subst.apply(exprs)
    _print_exprs(tmpfile, test_exprs)

    nreduced = 0
    runtime = 0
    start = time.time()
    if checker.check(tmpfile):
        runtime = time.time() - start
        nreduced = iters.count_exprs(exprs) - iters.count_exprs(test_exprs)
        exprs = test_exprs

    return exprs, nreduced, runtime


def _process_substitutions(pool, exprs, superset, superset_substs):
    assert len(superset) == len(superset_substs)

    global g_cur_runtime, g_ntests

    nreduced_total = 0
    nexprs = iters.count_exprs(exprs)

    gran = len(superset)
    while gran > 0:

        # Partition superset and superset_substs into lists of size gran
        subsets = [superset[s:s + gran] for s in range(0, len(superset), gran)]
        subsets_substs = [
            superset_substs[s:s + gran] for s in range(0, len(superset), gran)
        ]

        # Note: As soon as one of the processed was able to reduce the input
        # file we recompute the work_list with the updated expressions and same
        # granularity.
        restart = True
        while restart:
            restart = False
            work_list = [(exprs, x, y)
                         for x, y in zip(subsets, subsets_substs)]
            for i, result in enumerate(
                    pool.imap(_process_substitution, work_list, 1)):

                reduced_exprs, nreduced, runtime = result

                g_ntests += 1

                if nreduced:
                    exprs = reduced_exprs

                    # Print current working set to file
                    _print_exprs(g_args.outfile, exprs)

                    nreduced_total += nreduced
                    g_cur_runtime = runtime

                    # Remove already substituted expressions
                    subsets.pop(i)
                    subsets_substs.pop(i)

                    restart = True
                    break

                if options.args().verbosity >= 2:
                    sys.stdout.write(
                        "[ddSMT] granularity: {}, subset {} of {}, s-expressions: {}/{}\r"
                        .format(gran, i, len(subsets), nexprs - nreduced_total,
                                nexprs))

        # Update superset and remove already substituted expressions
        superset = [x for subset in subsets for x in subset]
        superset_substs = [x for subset in subsets_substs for x in subset]
        assert len(superset) == len(superset_substs)

        gran = gran // 2

    return exprs, nreduced_total


class PassDeleteAssert:
    def filter(self, x):
        return smtlib.is_assert(x)

    def subst(self, x):
        return None


def _reduce(exprs):

    passes = [PassDeleteAssert()]

    nreduced_total = 0
    with Pool(g_args.nprocs) as pool:

        # Delete commands
        #exprs_filtered = exprs[:]
        #exprs_substs = [None for x in exprs_filtered]
        #exprs, nreduced = _process_substitutions(pool,exprs, exprs_filtered,
        #                                         exprs_substs)
        #nreduced_total += nreduced

        for p in passes:
            exprs_filtered = iters.filter_exprs(exprs, p.filter)
            exprs_substs = list(map(p.subst, exprs_filtered))
            exprs, nreduced = _process_substitutions(pool, exprs,
                                                     exprs_filtered,
                                                     exprs_substs)
            nreduced_total += nreduced

    return exprs, nreduced_total


def ddsmt_main():
    global g_args
    global g_cur_runtime, g_cur_runtime_cc
    global g_golden_run, g_golden_run_cc

    g_args = options.args()
    setup_logging()

    if not os.path.exists(g_args.infile):
        raise DDSMTException("given input file does not exist")
    if os.path.isdir(g_args.infile):
        raise DDSMTException("given input file is a directory")
    if not g_args.parser_test and not g_args.cmd:
        raise DDSMTException("command missing")

    logging.info("input file:   '{}'".format(g_args.infile))
    logging.info("output file:  '{}'".format(g_args.outfile))
    logging.info("command:      '{}'".format(" ".join(map(str, g_args.cmd))))
    if g_args.cmd_cc:
        logging.info("command (cc): '{}'".format(g_args.cmd_cc))

    ifilesize = os.path.getsize(g_args.infile)

    start_time = time.time()
    with open(g_args.infile, 'r') as infile:
        exprs = list(smtlib.parse(infile.read()))
        nexprs = iters.count_exprs(exprs)

    logging.debug("")
    logging.debug("parsed {} s-expressions in {:.2f} seconds".format(
        nexprs,
        time.time() - start_time))

    if g_args.parser_test:
        _print_exprs(g_args.outfile, exprs)
        return

    tmpfiles.copy_binaries()
    checker.do_golden_runs()

    reduced_exprs, nreduced = _reduce(exprs)
    end_time = time.time()
    if nreduced:
        ofilesize = os.path.getsize(g_args.outfile)
        nreduced_exprs = iters.count_exprs(reduced_exprs)

        logging.info("")
        logging.info("runtime:         {:.2f} s".format(end_time - start_time))
        logging.info("tests:           {}".format(g_ntests))
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
    finally:
        _cleanup()
    sys.exit(0)
