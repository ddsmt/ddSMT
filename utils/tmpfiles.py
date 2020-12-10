import os
import shutil
import tempfile

from utils import options

# The temporary directory. Automatically deleted upon termination.
__TMPDIR = tempfile.TemporaryDirectory(prefix="ddsmt-")
__BINARY = os.path.join(__TMPDIR.name, 'binary')
__BINARY_CC = os.path.join(__TMPDIR.name, 'binary_cc')


def copy_binaries():
    """Copy the solver binary from :code:`cmd` to our temporary directory.
    If a cross check is defined, also copies this binary. After copying, it
    modifies the :code:`cmd` argument to use the copied binary."""
    shutil.copy(options.args().cmd[0], __BINARY)
    options.args().cmd[0] = __BINARY

    if options.args().cmd_cc:
        shutil.copy(options.args().cmd_cc[0], __BINARY_CC)
        options.args().cmd_cc[0] = __BINARY_CC


def get_tmp_filename():
    """Return a handle to a temporary file within our temporary directory."""
    return tempfile.TemporaryFile(dir=__TMPDIR.name)


def copy_to_tmp_file(source):
    """Copy the given source file to a new temporary file and return a file
    handle as returned by :code:`get_tmp_filename()`."""
    res = get_tmp_filename()
    shutil.copy(source, res.name)
    return res
