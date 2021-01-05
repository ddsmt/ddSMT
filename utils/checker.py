import collections
import logging
import resource
import subprocess
import sys
import time

from . import options
from . import parser
from . import smtlib
from . import tmpfiles

RunInfo = collections.namedtuple("RunInfo", ["exit", "out", "err", "runtime"])

__GOLDEN = None
__GOLDEN_CC = None


def limit_memory():
    """Apply memory limit given by :code:`--memout`."""
    if options.args().memout != 0:
        resource.setrlimit(
            resource.RLIMIT_AS,
            (options.args().memout * 1024 * 1024, resource.RLIM_INFINITY))


def execute(cmd, filename, timeout):
    """Execute the command on the file with a timeout."""
    proc = subprocess.Popen(cmd + [filename],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            preexec_fn=limit_memory)
    try:
        start = time.time()
        out, err = proc.communicate(timeout=timeout)
        runtime = time.time() - start
    except subprocess.TimeoutExpired:
        proc.kill()
        logging.debug(
            "[!!] timeout: terminated after {:.2f} seconds".format(timeout))
        return RunInfo(proc.returncode, None, None, timeout)
    return RunInfo(proc.returncode, out.decode(), err.decode(), runtime)


def matches_golden(golden, run, match_out, match_err):
    """Checks whether the :code:`run` result matches the golden run,
    considering :code:`match_out` and :code:`match_err`."""
    if run.exit != golden.exit:
        return False

    if match_out:
        if match_out not in run.out:
            return False
    elif golden.out != run.out:
        return False

    if match_err:
        if match_err not in run.err:
            return False
    elif golden.err != run.err:
        return False

    return True


def check(filename):
    """Check whether the given file behaves as the original input."""
    ri = execute(options.args().cmd, filename, options.args().timeout)
    if not matches_golden(__GOLDEN, ri,
                          options.args().match_out,
                          options.args().match_err):
        return False

    if options.args().cmd_cc:
        ri = execute(options.args().cmd_cc, filename,
                     options.args().timeout_cc)
        if not matches_golden(__GOLDEN_CC, ri,
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
    parser.write_smtlib_to_file(tmpfile, exprs)

    runtime = 0
    start = time.time()
    if check(tmpfile):
        runtime = time.time() - start
        return True, runtime

    return False, 0


def check_substitution(exprs, subst):
    """Run the check on the given expressions with substitutions applied.

    Returns (nreduced,test_exprs,runtime) if the check was successful
    where nreduced is the number of removed nodes and test_exprs the new
    expressions. Otherwise returns (0,[],0).
    """
    test_exprs = subst.apply(exprs)

    success, runtime = check_exprs(test_exprs)

    nreduced = 0
    if success:
        nreduced = smtlib.node_count(exprs) - smtlib.node_count(test_exprs)
        return nreduced, test_exprs, runtime

    return 0, [], 0


def do_golden_runs():
    """Do the initial runs to obtain the golden run results."""
    global __GOLDEN
    global __GOLDEN_CC

    logging.info("")
    logging.info("starting initial run{}... ".format(
        "" if not options.args().cmd_cc else ", cross checking"))
    logging.info("")

    __GOLDEN = execute(options.args().cmd, options.args().infile, None)

    logging.info('golden exit: {}'.format(__GOLDEN.exit))
    logging.info('golden err:\n{}'.format(__GOLDEN.err))
    logging.info('golden out:\n{}'.format(__GOLDEN.out))
    logging.info('golden runtime: {0: .2f} seconds'.format(__GOLDEN.runtime))
    if options.args().match_out:
        logging.info('match (stdout): "{}"'.format(options.args().match_out))
    if options.args().match_err:
        logging.info('match (stderr): "{}"'.format(options.args().match_err))

    if options.args().match_out:
        if options.args().match_out not in __GOLDEN.out:
            logging.error('Expected stdout to match "{}"'.format(
                options.args().match_out))
            sys.exit(1)

    if options.args().match_err:
        if options.args().match_err not in __GOLDEN.err:
            logging.error('Expected stderr to match "{}"'.format(
                options.args().match_err))
            sys.exit(1)

    if options.args().timeout is None:
        options.args().timeout = (__GOLDEN.runtime + 1) * 1.5
        logging.info('automatic timeout: {}'.format(options.args().timeout))

    if options.args().cmd_cc:
        __GOLDEN_CC = execute(options.args().cmd_cc,
                              options.args().infile, None)

        logging.info("")
        logging.info("golden exit (cc): {}".format(__GOLDEN_CC.exit))
        logging.info("golden err (cc):\n{}".format(__GOLDEN_CC.err))
        logging.info("golden out (cc):\n{}".format(__GOLDEN_CC.out))
        logging.info("golden runtime (cc): {0: .2f} seconds".format(
            __GOLDEN_CC.runtime))
        if options.args().match_out_cc:
            logging.info("match (cc) (stdout): '{}'".format(
                options.args().match_out_cc))
        if options.args().match_err_cc:
            logging.info("match (cc) (stderr): '{}'".format(
                options.args().match_err_cc))

        if options.args().timeout_cc is None:
            options.args().timeout_cc = (__GOLDEN_CC.runtime + 1) * 1.5
            logging.info('automatic timeout (cc): {}'.format(
                options.args().timeout_cc))
