import cProfile
import difflib
import glob
import io
import logging
import multiprocessing
import os
import subprocess

from . import nodeio
from . import options


class NodeLoopChecker:
    def __init__(self):
        self.__seen = set()

    def add(self, exprs):
        if options.args().check_loops:
            exprt = tuple(exprs)
            if exprt in self.__seen:
                logging.error(
                    'The following input has already been seen before:')
                logging.error(f'\n{nodeio.write_smtlib_to_str(exprs)}')
                assert False
            self.__seen.add(exprt)


class Profiler:
    """A simple wrapper around cProfile that can be used as context manager,
    honors the ``--profile`` option and automatically writes the results to a
    file. To accumulate all profiles for one process, it uses a static profiler
    and uses a filename pattern that includes the process id.

    Profiling in the main process is somewhat special, as it is enabled
    globally and should thus not be enabled again by a worker function
    that happens to be executed in the main process. Thus, to enable
    profiling in the main process, the Profiler needs to be created with
    ``is_main=True`` to confirm that the caller is aware that it is
    running within the main process. Except for one call in the main
    function, this argument should never be set to True.
    """

    enabled = options.args().profile
    # static profiler, global within one process
    profiler = None

    def __init__(self, is_main=False):
        """Create a profiler."""
        if Profiler.enabled:
            if multiprocessing.parent_process() is None:
                self.enabled = True
                self.filename = '.profile.prof'
            else:
                self.enabled = True
                self.filename = f'.profile-{os.getpid()}.prof'
            if Profiler.profiler is None:
                Profiler.profiler = cProfile.Profile()

    def __enter__(self):
        """Start profiling, if ``--profile`` was given."""
        if Profiler.enabled and self.enabled:
            Profiler.profiler.enable()

    def __exit__(self, type, value, traceback):
        """Stop profiling and write results to file."""
        if Profiler.enabled and self.enabled:
            try:
                Profiler.profiler.disable()
                Profiler.profiler.dump_stats(self.filename)
            except KeyboardInterrupt as e:
                logging.warn(f'Writing {self.filename} was interrupted.'
                             'To avoid corrupted data, we remove this file.')
                os.unlink(self.filename)
                raise e


def __render_profile(infiles, dotfile, pngfile):
    """Helper method to render profile data from a set of input files to a
    png."""
    cmd = [
        'gprof2dot', '--node-label=self-time-percentage',
        '--node-label=total-time', '--node-label=total-time-percentage', '-f',
        'pstats', '-o', dotfile, *infiles
    ]
    try:
        subprocess.run(cmd)
    except FileNotFoundError:
        logging.warn('gprof2dot was not found. Try "pip install gprof2dot".')
        return False

    try:
        subprocess.run(['dot', '-Tpng', '-o', pngfile, dotfile])
    except FileNotFoundError:
        logging.warn('dot was not found. Try "apt install graphviz".')
        return False
    return True


def render_profiles():
    """Convenience function to directly render profiling data to png.

    Splits the data into two parts, the main process and the combination
    of all other processes. Uses ``gprof2dot`` and ``dot``, and will try
    to print helpful error messages if they are not available.
    """
    logging.debug('Rendering profile data')
    if __render_profile(['.profile.prof'], '.profile.dot', 'profile.png'):
        logging.chat('Profile data for main process is in profile.png')

    files = [f for f in glob.glob('.*.prof') if f != '.profile.prof']
    if files:
        if __render_profile(files, '.profile-workder.dot',
                            'profile-worker.png'):
            logging.chat(
                'Profile data for worker processes is in profile-worker.png')


__DIFF_ID = 0


def __render_for_diff(exprs):
    f = io.StringIO()
    for expr in exprs:
        nodeio.__write_smtlib_pretty(f, expr)
    return f.getvalue()


def dump_diff(description, before, after):
    if not options.args().dump_diffs:
        return
    global __DIFF_ID
    b = __render_for_diff(before).splitlines(keepends=True)
    a = __render_for_diff(after).splitlines(keepends=True)

    diff = difflib.unified_diff(b, a)

    __DIFF_ID += 1
    with open(f'.simp-{__DIFF_ID}.diff', 'w') as out:
        out.write(f'{description}\n')
        out.writelines(diff)
