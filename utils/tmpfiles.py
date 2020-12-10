import os
import shutil
import tempfile

from utils import options

__TMPDIR = tempfile.TemporaryDirectory(prefix="ddsmt-")
__BINARY = os.path.join(__TMPDIR.name, 'binary')
__BINARY_CC = os.path.join(__TMPDIR.name, 'binary_cc')


def copy_binaries():
    shutil.copy(options.args().cmd[0], __BINARY)
    options.args().cmd[0] = __BINARY

    if options.args().cmd_cc:
        shutil.copy(options.args().cmd_cc[0], __BINARY_CC)
        options.args().cmd_cc[0] = __BINARY_CC


def get_tmp_filename():
    return tempfile.TemporaryFile(dir=__TMPDIR.name)


def copy_to_tmp_file(source):
    res = get_tmp_filename()
    shutil.copy(source, res.name)
    return res