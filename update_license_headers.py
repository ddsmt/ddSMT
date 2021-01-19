#! /usr/bin/env python3

import argparse
import glob
import os
import textwrap

HEADER_TEMPLATE = """
ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
Copyright (C) 2013-2021, Aina Niemetz.
Copyright (C) 2016-2021, Mathias Preiner.
Copyright (C) 2020-2021, Gereon Kremer.
Copyright (C) 2018, Jane Lange.
Copyright (C) 2018, Andres Noetzli.

This file is part of ddSMT.

ddSMT is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

ddSMT is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with ddSMT.  If not, see <https://www.gnu.org/licenses/>.
"""


def parse_options():
    """Parse command line options into ``global ARGS``."""
    global ARGS
    ap = argparse.ArgumentParser(
        usage='update_license_headers.py [<options>] <basedir>')
    ap.add_argument('basedir', help='base directory of the ddSMT directory')
    ARGS = ap.parse_args()


def prepare_header():
    """Return new header as list of strings."""
    return [
        s.strip() for s in textwrap.indent(HEADER_TEMPLATE, '# ',
                                           lambda line: True).split('\n')
    ]


def list_files():
    """Iterable over all files that should get the copyright header."""
    yield f'{ARGS.basedir}/bin/ddsmt'
    yield from glob.iglob(f'{ARGS.basedir}/ddsmt/*.py')


def update_file(filename, new_header):
    """Read the filename and add or update the copyright header.

    Keep an existing shebang in place
    """
    stat = os.stat(filename)
    cur = open(filename).read().split('\n')

    start = 0
    try:
        start = next(x for x in enumerate(cur)
                     if x[1].strip() != '' and not x[1].startswith('#'))[0]
    except StopIteration:
        # No actual code was found, probably an __init__.py
        pass

    new = []
    if cur[0].startswith('#!'):
        new.append(cur[0])

    new.extend(new_header)
    new.extend(cur[start:])

    open(filename, 'w').write('\n'.join(new))
    os.utime(filename, ns=(stat.st_atime_ns, stat.st_mtime_ns))


if __name__ == '__main__':
    parse_options()
    header = prepare_header()
    for filename in list_files():
        print(filename)
        update_file(filename, header)
