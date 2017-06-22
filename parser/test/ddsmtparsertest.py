#! /usr/bin/env python3
#
# ddSMT: a delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (C) 2017, Aina Niemetz.
# 
# This file is part of ddSMT.
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
# along with ddSMT.  If not, see <http://www.gnu.org/licenses/>.
#

import os
import filecmp
import resource
import shutil
import sys
import re

from argparse import ArgumentParser, REMAINDER
sys.path.insert(1, os.path.join(sys.path[0], '../../'))
from parser.ddsmtparser import DDSMTParser, DDSMTParseException
from parser.smtparser import SMTParser


__author__  = "Aina Niemetz <aina.niemetz@gmail.com>"


g_args = None
g_smtformula = None
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_reg = None


class DDSMTParserTestException (Exception):

    def __init__ (self, msg):
        self.msg = msg
   
    def __str__ (self):
        return "[ddsmtparsertest] Error: {}".format(self.msg)



def _cleanup ():
    if os.path.exists(g_tmpfile):
        os.remove(g_tmpfile)



def _log (verbosity, msg = "", update = False):
    global g_args
    if g_args.verbosity >= verbosity:
        sys.stdout.write(" " * 80 + "\r")
        if update:
            sys.stdout.write("[ddsmtparsertest] {}\r".format(msg))
            sys.stdout.flush()
        else:
            sys.stdout.write("[ddsmtparsertest] {}\n".format(msg))



def _dump (filename = None, root = None):
    global g_smtformula
    assert (g_smtformula)
    try:
        g_smtformula.dump(filename, root)
    except IOError as e:
        raise DDSMTException (str(e))



def _cmp (file1, file2):
    with open (file1, "rU") as f1, open (file2, "rU") as f2:
        f1str = re.sub(
                r'set-info :source\s*\|.*?\|',
                lambda x: re.sub(
                    SMTParser.COMMENT, SMTParser.PLACEHOLDER, x.group(0)),
                f1.read(),
                flags=re.DOTALL)
        f1str = re.sub (
                r'".*?"', 
                lambda x: re.sub(
                    SMTParser.COMMENT, SMTParser.PLACEHOLDER, x.group(0)),
                f1str,
                flags=re.DOTALL)
        f1str = re.sub(r';[^\n]*\n', ' ' , f1str)
        f2str = re.sub(
                r'set-info :source\s*\|.*?\|',
                lambda x: re.sub(
                    SMTParser.COMMENT, SMTParser.PLACEHOLDER, x.group(0)),
                f2.read(),
                flags=re.DOTALL)
        f2str = re.sub (
                r'".*?"', 
                lambda x: re.sub(
                    SMTParser.COMMENT, SMTParser.PLACEHOLDER, x.group(0)),
                f2str,
                flags=re.DOTALL)
        f2str = re.sub(r';[^\n]*\n', ' ' , f2str)
        f1str = re.sub(r'@::@', ';', f1str)
        f1str = g_reg.sub(r'\1',f1str)
        f2str = re.sub(r'@::@', ';', f2str)
        f2str = g_reg.sub(r'\1',f2str)
    return True




if __name__ == "__main__":
    try:
        usage="ddsmtparsertest.py [<options>] [<infile(dir)>]"
        aparser = ArgumentParser (usage=usage)
        aparser.add_argument ("-v", action="count", default=0, 
                              dest="verbosity", help="increase verbosity")
        aparser.add_argument (
                "infilesdir", 
                nargs = "?",
                default = None,
                type = str,
                help = "the input file (directory), " \
                       "all input files in SMT-LIB v2 format)")
        g_args = aparser.parse_args()
        g_reg = re.compile(r'\s*([(]|[)])\s*')
        nbugs = 0

        if g_args.infilesdir:
            if not os.path.exists(g_args.infilesdir):
                raise DDSMTParserTestException (
                        "given input file (dir) does not exist")

            if os.path.isdir(g_args.infilesdir):
                infiles = [os.path.join(g_args.infilesdir, f)
                    for f in os.listdir(g_args.infilesdir)
                    if os.path.isfile(os.path.join(g_args.infilesdir, f)) \
                       and f.endswith(".smt2")]
            else:
                infiles = [g_args.infilesdir]

            for infile in infiles:
                _cleanup ()
                parser = DDSMTParser()
                g_smtformula = parser.parse(infile)

                _log (1, "parser: done")
                _log (2, "parser: maxrss: {} MiB".format(
                    resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1000))

                _dump (g_tmpfile)
                _log (1, "dumper: done")
                _log (1)

                if not _cmp (infile, g_tmpfile):
                    bugfile = "bug-ddsmtparsertest-" + os.path.basename(infile)
                    shutil.copyfile(g_tmpfile, bugfile)
                    nbugs += 1
                    _log (1, "bug: " + bugfile)
            _log (0, "{} bugs found".format(nbugs)) 
            _cleanup()
            sys.exit(0)
    except (DDSMTParseException, DDSMTParserTestException) as e:
        _cleanup()
        sys.exit(str(e))
    except MemoryError as e:
        _cleanup()
        sys.exit("[ddsmtparsertest] memory exhausted")
    except KeyboardInterrupt as e:
        _cleanup()
        sys.exit("[ddsmtparsertest] interrupted")
