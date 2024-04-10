#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2024 by the authors listed in the AUTHORS file
# at https://github.com/ddsmt/ddSMT/blob/master/AUTHORS.
#
# This file is part of ddSMT under the MIT license. See LICENSE for more
# information at https://github.com/ddsmt/ddSMT/blob/master/LICENSE.

import os
import shutil
import tempfile
import threading

from . import options

# The temporary directory. Automatically deleted upon termination.
__TMPDIR = None
__BINARY = None
__BINARY_CC = None
__FILEEXT = None


def init():
    """Create temporary directory, set filenames."""
    global __TMPDIR
    global __BINARY
    global __BINARY_CC
    global __FILEEXT
    __TMPDIR = tempfile.TemporaryDirectory(prefix="ddsmt-")
    __BINARY = os.path.join(__TMPDIR.name, 'binary')
    __BINARY_CC = os.path.join(__TMPDIR.name, 'binary_cc')
    __FILEEXT = os.path.splitext(options.args().infile)[1]


def copy_binaries():
    """Copy the solver binary from ``cmd`` to our temporary directory.

    If a cross check is defined, also copies this binary. After copying,
    it modifies the ``cmd`` argument to use the copied binary.
    """
    shutil.copy(options.args().cmd[0], __BINARY)
    options.args().cmd[0] = __BINARY

    if options.args().cmd_cc:
        shutil.copy(options.args().cmd_cc[0], __BINARY_CC)
        options.args().cmd_cc[0] = __BINARY_CC


def get_tmp_filename():
    """Return a filename within our temporary directory based on the pid."""
    return os.path.join(
        __TMPDIR.name,
        f'ddsmt-tmp-{os.getpid()}-{threading.get_ident()}{__FILEEXT}')


def copy_to_tmp_file(source):
    """Copy the given source file to a temporary file as returned by
    ``get_tmp_filename()``."""
    res = get_tmp_filename()
    shutil.copy(source, res.name)
    return res
