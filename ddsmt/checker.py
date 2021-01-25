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

import collections
import logging
import resource
import subprocess
import sys
import time

from . import nodes
from . import options
from . import tmpfiles

RunInfo = collections.namedtuple("RunInfo", ["exit", "out", "err", "runtime"])

__GOLDEN = None
__GOLDEN_CC = None


def limit_resources(timeout):
    """Apply resource limit given by ``--memout`` and timeout arguments."""
    if options.args().memout:
        resource.setrlimit(
            resource.RLIMIT_AS,
            (options.args().memout * 1024 * 1024, resource.RLIM_INFINITY))
    if timeout:
        resource.setrlimit(resource.RLIMIT_CPU, (timeout, timeout))


def execute(cmd, filename, timeout):
    """Execute the command on the file with a timeout and a memory limit."""
    if options.args().unchecked:
        return RunInfo(0, "unchecked", "unchecked", 0)
    proc = subprocess.Popen(cmd + [filename],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            preexec_fn=lambda: limit_resources(timeout))
    try:
        start = time.time()
        out, err = proc.communicate(timeout=timeout)
        runtime = time.time() - start
    except subprocess.TimeoutExpired:
        proc.kill()
        logging.debug(f'[!!] timeout: terminated after {timeout:.2f} seconds')
        return RunInfo(proc.returncode, None, None, timeout)
    return RunInfo(proc.returncode, out.decode(), err.decode(), runtime)


def matches_golden(golden, run, ignore_out, match_out, match_err):
    """Checks whether the ``run`` result matches the golden run, considering
    ``ignore_out``, ``match_out`` and ``match_err``.

    If ``ignore_out`` is true, only the exit code is compared.
    Otherwise, if either ``match_out`` or ``match_err`` are given, they
    need to match. Otherwise, both stdout and stderr must be the same.
    """
    if run.exit != golden.exit:
        return False

    if not ignore_out:
        if match_out or match_err:
            # we have --match-out or --match-err
            if match_out:
                if match_out not in run.out:
                    return False
            if match_err:
                if match_err not in run.err:
                    return False
        else:
            if golden.out != run.out:
                return False
            if golden.err != run.err:
                return False

    return True


def check(filename):
    """Check whether the given file behaves as the original input.

    First execute the command and then call ``matches_golden``. If a
    cross-check command is specified, do the same for that one as well.
    """
    ri = execute(options.args().cmd, filename, options.args().timeout)
    if not matches_golden(__GOLDEN, ri,
                          options.args().ignore_output,
                          options.args().match_out,
                          options.args().match_err):
        return False

    if options.args().cmd_cc:
        ri = execute(options.args().cmd_cc, filename,
                     options.args().timeout_cc)
        if not matches_golden(__GOLDEN_CC, ri,
                              options.args().ignore_output_cc,
                              options.args().match_out_cc,
                              options.args().match_err_cc):
            return False

    return True


def check_exprs(exprs):
    """Run the check on the given expressions.

    Returns (True,runtime) if the check was successful and (False,0)
    otherwise.
    """
    tmpfile = tmpfiles.get_tmp_filename()
    nodes.write_smtlib_to_file(tmpfile, exprs)
    return check(tmpfile)


def do_golden_runs():
    """Do the initial runs to obtain the golden run results."""
    global __GOLDEN
    global __GOLDEN_CC

    logging.info("")
    logging.info(
        f'starting initial run{", cross checking" if options.args().cmd_cc else ""}...'
    )
    logging.info("")

    __GOLDEN = execute(options.args().cmd, options.args().infile, None)

    logging.info(f'golden exit: {__GOLDEN.exit}')
    logging.info(f'golden err:\n{__GOLDEN.err}')
    logging.info(f'golden out:\n{__GOLDEN.out}')
    logging.info(f'golden runtime: {__GOLDEN.runtime:.2f} seconds')
    if options.args().match_out:
        logging.info(f'match (stdout): "{options.args().match_out}"')
        if options.args().match_out not in __GOLDEN.out:
            logging.error(
                f'Expected stdout to match "{options.args().match_out}"')
            sys.exit(1)
    if options.args().match_err:
        logging.info(f'match (stderr): "{options.args().match_err}"')
        if options.args().match_err not in __GOLDEN.err:
            logging.error(
                f'Expected stderr to match "{options.args().match_err}"')
            sys.exit(1)

    if options.args().timeout is None:
        options.args().timeout = round((__GOLDEN.runtime + 1) * 1.5, 2)
        logging.info(
            f'automatic timeout: {options.args().timeout:.2f} seconds')

    if options.args().cmd_cc:
        __GOLDEN_CC = execute(options.args().cmd_cc,
                              options.args().infile, None)

        logging.info("")
        logging.info(f'golden exit (cc): {__GOLDEN_CC.exit}')
        logging.info(f'golden err (cc):\n{__GOLDEN_CC.err}')
        logging.info(f'golden out (cc):\n{__GOLDEN_CC.out}')
        logging.info(f'golden runtime (cc): {__GOLDEN_CC.runtime:.2f} seconds')
        if options.args().match_out_cc:
            logging.info(
                f'match (cc) (stdout): "{options.args().match_out_cc}"')
        if options.args().match_err_cc:
            logging.info(
                f'match (cc) (stderr): "{options.args().match_err_cc}"')

        if options.args().timeout_cc is None:
            options.args().timeout_cc = round((__GOLDEN_CC.runtime + 1) * 1.5,
                                              2)
            logging.info(
                f'automatic timeout (cc): {options.args().timeout_cc:.2f} seconds'
            )
