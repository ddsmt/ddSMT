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


def version_from_git(gitdir):
    """Tries to obtain a version string from git based on the last tag."""
    import re
    import subprocess
    try:
        GIT_VERSION = subprocess.check_output(
            ['git', 'describe', '--tags'], cwd=gitdir,
            stderr=subprocess.PIPE).decode('utf8').strip()
    except subprocess.CalledProcessError:
        cnum = subprocess.check_output(['git', 'rev-list', 'HEAD', '--count'],
                                       cwd=gitdir).decode('utf8').strip()
        cid = subprocess.check_output(['git', 'rev-parse', '--short', 'HEAD'],
                                      cwd=gitdir).decode('utf8').strip()
        GIT_VERSION = 'v0.0-{}-g{}'.format(cnum, cid)
    if re.match('^v[0-9.]+$', GIT_VERSION) is not None:
        return GIT_VERSION[1:]
    else:
        m = re.match('v([0-9]+)\\.([0-9]+)-([0-9]+)-g[a-z0-9]+', GIT_VERSION)
        if m is not None:
            return '{}.{}.dev{}'.format(m.group(1),
                                        int(m.group(2)) + 1, m.group(3))
    return GIT_VERSION


def version_from_package_metadata():
    """Tries to obtain a version string from git based on the pypi package
    information."""
    try:
        from importlib import metadata
    except ImportError:
        import importlib_metadata as metadata
    return metadata.version('ddSMT')


__git_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..',
                         '.git')
if os.path.isdir(__git_dir):
    VERSION = version_from_git(__git_dir)
else:
    VERSION = version_from_package_metadata()
