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

import os
import shutil
import tempfile

from . import options

# The temporary directory. Automatically deleted upon termination.
__TMPDIR = tempfile.TemporaryDirectory(prefix="ddsmt-")
__BINARY = os.path.join(__TMPDIR.name, 'binary')
__BINARY_CC = os.path.join(__TMPDIR.name, 'binary_cc')


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
    return os.path.join(__TMPDIR.name, "ddsmt-tmp-{}.smt2".format(os.getpid()))


def copy_to_tmp_file(source):
    """Copy the given source file to a temporary file as returned by
    ``get_tmp_filename()``."""
    res = get_tmp_filename()
    shutil.copy(source, res.name)
    return res
