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
        m = re.match('v([0-9]+)\\.([0-9]+)\\.([0-9]+)-([0-9]+)-g[a-z0-9]+',
                     GIT_VERSION)
        if m is not None:
            return '{}.{}.{}.dev{}'.format(m.group(1), m.group(2),
                                           int(m.group(3)) + 1, m.group(4))
    return GIT_VERSION


def version_from_package_metadata():
    """Tries to obtain a version string from git based on the pypi package
    information."""
    try:
        from importlib import metadata
    except ImportError:
        import importlib_metadata as metadata
    return metadata.version('ddSMT')


__dot_git = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..',
                         '.git')
if os.path.isdir(__dot_git) or os.path.isfile(__dot_git):
    VERSION = version_from_git(os.path.split(__dot_git)[0])
else:
    VERSION = version_from_package_metadata()
