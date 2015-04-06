#! /usr/bin/env python3
#
# ddSMT: a delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (c) 2013-2015, Aina Niemetz
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
import random
import resource
import sys
import shutil
import time

from argparse import ArgumentParser, REMAINDER
from subprocess import Popen, PIPE
from threading import Thread
from parser.ddsmtparser import DDSMTParser, DDSMTParseException


__version__ = "0.9-beta"
__author__  = "Aina Niemetz <aina.niemetz@gmail.com>"


g_golden_exit = 0
g_golden_err = None
g_ntests = 0

g_args = None
g_smtformula = None
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"


class DDSMTException (Exception):

    def __init__ (self, msg):
        self.msg = msg
   
    def __str__ (self):
        return "[ddsmt] Error: {}".format(self.msg)


class DDSMTCmd (Thread):

    def __init__ (self, cmd, timeout, log):
        Thread.__init__(self)
        self.cmd = cmd
        self.timeout = timeout
        self.log = log

    def run (self):
        self.process = Popen (self.cmd, stdout=PIPE, stderr=PIPE)
        self.out, self.err = self.process.communicate()
        self.rcode = self.process.returncode

    def run_cmd (self, is_golden = False):
        self.start()
        self.join (self.timeout)
        if self.is_alive():
            self.process.terminate()
            self.join()
            if is_golden:
                raise DDSMTException ("initial run timed out")
            self.log ("[!!] timeout: process terminated")
        return (self.out, self.err)


def _cleanup ():
    if os.path.exists(g_tmpfile):
        os.remove(g_tmpfile)


def _log (verbosity, msg = "", update = False):
    global g_args
    if g_args.verbosity >= verbosity:
        sys.stdout.write(" " * 80 + "\r")
        if update:
            sys.stdout.write("[ddsmt] {}\r".format(msg))
            sys.stdout.flush()
        else:
            sys.stdout.write("[ddsmt] {}\n".format(msg))


def _dump (filename = None, root = None):
    global g_smtformula
    assert (g_smtformula)
    try:
        g_smtformula.dump(filename, root)
    except IOError as e:
        raise DDSMTException (str(e))


def _run (is_golden = False):
    global g_args
    try:
        start = time.time()
        cmd = DDSMTCmd (g_args.cmd, g_args.timeout, _log)
        (out, err) = cmd.run_cmd(is_golden)
        return (cmd.rcode, err)
    except OSError as e:
        raise DDSMTException ("{}: {}".format(str(e), g_cmd[0]))


def _test ():
    global g_args, g_ntests
    g_ntests += 1
    (exitcode, err) = _run()
    if g_args.cmpoutput:
        return exitcode == g_golden_exit and err == g_golden_err
    return exitcode == g_golden_exit


def _filter_scopes (filter_fun, root = None):
    global g_smtformula
    assert (g_smtformula)
    scopes = []
    to_visit = [root if root else g_smtformula.scopes]
    while to_visit:
        cur = to_visit.pop()
        if cur.is_subst():
            continue
        if filter_fun(cur):
            scopes.append(cur)
        to_visit.extend(cur.scopes)
    return scopes

def _filter_cmds (filter_fun):
    global g_smtformula
    assert (g_smtformula)
    cmds = []
    scopes = _filter_scopes (lambda x: x.is_regular())
    to_visit = [c for cmd_list in [s.cmds for s in scopes] for c in cmd_list]
    to_visit.extend(g_smtformula.scopes.declfun_cmds.values())
    while to_visit:
        cur = to_visit.pop()
        if cur.is_subst():
            continue
        if filter_fun(cur):
            cmds.append(cur)
    return cmds

def _filter_terms (filter_fun, roots):
    nodes = []
    to_visit = roots
    visited = {}
    while to_visit:
        cur = to_visit.pop().get_subst()
        if not cur or cur.id in visited:
            continue
        visited[cur.id] = cur
        if cur.is_fun() and cur.children and cur.children[0].is_subst():
            continue
        if filter_fun(cur):
            nodes.append(cur)
        if cur.children:
            to_visit.extend(cur.children)
    nodes.sort(key = lambda x: x.id)
    return nodes

def _substitute (subst_fun, substlist, superset, with_vars = False):
    global g_smtformula
    assert (g_smtformula)
    assert (substlist in (g_smtformula.subst_scopes, g_smtformula.subst_cmds, 
                          g_smtformula.subst_nodes))
    nsubst_total = 0
    gran = len(superset)

    while gran > 0:
        subsets = [superset[s:s+gran] for s in range (0, len(superset), gran)]
        cpy_subsets = subsets[0:]

        for subset in subsets:
            nsubst = 0
            cpy_substs = substlist.substs.copy()
            cpy_declfun_cmds = g_smtformula.scopes.declfun_cmds.copy()
            for item in subset:
                if not item.is_subst():
                    item.subst (subst_fun(item))
                    nsubst += 1
            if nsubst == 0:
                continue
            
            _dump (g_tmpfile)
           
            if _test():
                _dump (g_args.outfile)
                nsubst_total += nsubst
                _log (2, "    granularity: {}, subsets: {}, substituted: {}" \
                         "".format(gran, len(subsets), nsubst), True)
                del (cpy_subsets[cpy_subsets.index(subset)])
            else:
                _log (2, "    granularity: {}, subsets: {}, substituted: 0" \
                         "".format(gran, len(subsets)), True)
                substlist.substs = cpy_substs
                if with_vars:
                    for name in g_smtformula.scopes.declfun_cmds:
                        assert (g_smtformula.find_fun(
                            name, scope = g_smtformula.scopes))
                        if name not in cpy_declfun_cmds:
                            g_smtformula.delete_fun(name)
                g_smtformula.scopes.declfun_cmds = cpy_declfun_cmds
        superset = [s for subset in cpy_subsets for s in subset]
        gran = gran // 2
    return nsubst_total


def _substitute_scopes ():
    global g_smtformula
    assert (g_smtformula)
    _log (2)
    _log (2, "substitute SCOPES:")
    ntests_prev = g_ntests
    nsubst_total = 0
    level = 1
    while True:
        scopes = _filter_scopes (lambda x: x.level == level and x.is_regular())
        if not scopes:
            break
        nsubst_total += _substitute (
                lambda x: None, g_smtformula.subst_scopes, scopes)
        level += 1
    _log (2, "  >> {} scope(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total

        
def _substitute_cmds (filter_fun = None):
    global g_smtformula
    assert (g_smtformula)
    _log (2)
    _log (2, "substitute COMMANDS:")
    ntests_prev = g_ntests
    filter_fun = filter_fun if filter_fun else \
            lambda x: not x.is_setlogic() and not x.is_exit()
    nsubst_total = _substitute (lambda x: None, g_smtformula.subst_cmds,
            _filter_cmds(filter_fun))
    _log (2, "  >> {} command(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total


def _substitute_terms (subst_fun, filter_fun, cmds, msg = None,
                       with_vars = False):
    _log (2)
    _log (2, msg if msg else "substitute TERMS:")
    ntests_prev = g_ntests
    nsubst_total = _substitute (
            subst_fun,
            g_smtformula.subst_nodes,
            _filter_terms (filter_fun, [t for term_list in 
                [c.children if c.is_getvalue() else [c.children[-1]] \
                        for c in cmds] for t in term_list]),
            with_vars)

    _log (2, "    >> {} term(s) substituted in total".format(nsubst_total))
    _log (3, "    >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total


def ddsmt_main ():
    global g_tmpfile, g_args, g_smtformula

    nrounds = 0
    nsubst_total  = 0
    nsubst_round  = 1
    nscopes_subst = 0
    ncmds_subst   = 0
    nterms_subst  = 0

    succeeded = "none"

    sf = g_smtformula

    while nsubst_round:
        nsubst_round = 0
        nsubst = 0
        nrounds += 1

        nsubst = _substitute_scopes ()
        if nsubst:
            succeeded = "scopes"
            nsubst_round += nsubst
            nscopes_subst += nsubst
        elif succeeded == "scopes":
            break
        
        # initially, eliminate asserts only
        # -> prevent lots of likely unsuccessful testing when eliminating
        #    e.g. declare-funs previous to term substitution
        if nrounds > 1:
           nsubst = _substitute_cmds ()
        else:
           nsubst = _substitute_cmds (lambda x: x.is_assert())
        if nsubst:
           succeeded = "cmds"
           nsubst_round += nsubst
           ncmds_subst += nsubst
        elif succeeded == "cmds": 
           break

        cmds = [_filter_cmds (lambda x: x.is_definefun()), 
                _filter_cmds (lambda x: x.is_assert()),
                _filter_cmds (lambda x: x.is_getvalue())]
        cmds_msgs = ["'define-fun'", "'assert'", "'get-value'"]

        for i in range(0,len(cmds)):
            if cmds[i]:
                _log(2)
                _log (2, "substitute TERMs in {} cmds:".format(cmds_msgs[i]))
                
                if sf.is_bv_logic():
                    nsubst = _substitute_terms (
                            lambda x: sf.bvZeroConstNode(x.sort),
                            lambda x: not x.is_const() \
                                      and x.sort and x.sort.is_bv_sort(),
                            cmds[i], "  substitute BV terms with '0'")
                    if nsubst:
                        succeeded = "bv0_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "bv0_{}".format(i):
                        break
                    nsubst = _substitute_terms (
                            lambda x: x.children[1].get_subst() \
                                if x.children[0].get_subst().is_false_bvconst()\
                                else x.children[0].get_subst(),
                            lambda x: x.is_bvor() and \
                                (x.children[0].get_subst().is_false_bvconst() \
                                 or 
                                 x.children[1].get_subst().is_false_bvconst()),
                            cmds[i], "  substitute (bvor term false) with term")
                    if nsubst:
                        succeeded = "bvor_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "bvor_{}".format(i):
                        break
                    nsubst = _substitute_terms (
                            lambda x: x.children[1].get_subst() \
                                if x.children[0].get_subst().is_true_bvconst() \
                                else x.children[0].get_subst(),
                            lambda x: x.is_and() and \
                                (x.children[0].get_subst().is_true_bvconst() \
                                 or 
                                 x.children[1].get_subst().is_true_bvconst()),
                            cmds[i], "  substitute (bvand term true) with term")
                    if nsubst:
                        succeeded = "bvand_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "bvand_{}".format(i):
                        break
                    nsubst = _substitute_terms (
                            lambda x: sf.add_fresh_declfunCmdNode(x.sort),
                            lambda x: not x.is_const()                   \
                                      and x.sort and x.sort.is_bv_sort() \
                                      and not sf.is_substvar(x),
                            cmds[i], 
                            "  substitute BV terms with fresh variables",
                            True)
                    if nsubst:
                        succeeded = "bvvar_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "bvvar_{}".format(i):
                        break

                if sf.is_int_logic() or sf.is_real_logic():
                    nsubst = _substitute_terms (
                            lambda x: sf.zeroConstNNode(),
                            lambda x: not x.is_const() \
                                      and x.sort and x.sort.is_int_sort(),
                            cmds[i], "  substitute Int terms with '0'")
                    if nsubst:
                        succeeded = "int0_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "int0_{}".format(i):
                        break
                    nsubst = _substitute_terms (
                            lambda x: sf.add_fresh_declfunCmdNode(x.sort),
                            lambda x: not x.is_const()                    \
                                      and x.sort and x.sort.is_int_sort() \
                                      and not sf.is_substvar(x),
                            cmds[i], 
                            "  substitute Int terms with fresh variables",
                            True)
                    if nsubst:
                        succeeded = "intvar_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "intvar_{}".format(i):
                        break

                if sf.is_real_logic():
                    nsubst = _substitute_terms (
                            lambda x: sf.zeroConstDNode(),
                            lambda x: not x.is_const() \
                                      and x.sort and x.sort.is_real_sort(),
                            cmds[i], "  substitute Int terms with '0'")
                    if nsubst:
                        succeeded = "real0_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "real0_{}".format(i):
                        break
                    nsubst = _substitute_terms (
                            lambda x: sf.add_fresh_declfunCmdNode(x.sort),
                            lambda x: not x.is_const()                     \
                                      and x.sort and x.sort.is_real_sort() \
                                      and not sf.is_substvar(x),
                            cmds[i], 
                            "  substitute Int terms with fresh variables",
                            True)
                    if nsubst:
                        succeeded = "realvar_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "realvar_{}".format(i):
                        break

                nsubst = _substitute_terms (
                        lambda x: x.children[-1].get_subst(),
                        lambda x: x.is_let(),
                        cmds[i], "  substitute LETs with child term")
                if nsubst:
                    succeeded = "let_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "let_{}".format(i):
                    break

                nsubst = _substitute_terms (
                        lambda x: None,
                        lambda x: x.is_varb() and x.children[0].is_subst(),
                        cmds[i], "  eliminate redundant variable bindings")
                if nsubst:
                    succeeded = "varb_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "varb_{}".format(i):
                    break
                    
                nsubst = _substitute_terms (
                        lambda x: sf.boolConstNode("false"),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_bool_sort(),
                        cmds[i], "  substitute Boolean terms with 'false'")
                if nsubst:
                    succeeded = "false_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "false_{}".format(i):
                    break

                nsubst = _substitute_terms (
                        lambda x: x.children[1].get_subst() \
                                if x.children[0].get_subst().is_false_const() \
                                else x.children[0].get_subst(),
                        lambda x: x.is_or() \
                                and (x.children[0].get_subst().is_false_const()\
                                or x.children[1].get_subst().is_false_const()),
                        cmds[i], "  substitute (or term false) with term")
                if nsubst:
                    succeeded = "or_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "or_{}".format(i):
                    break

                nsubst = _substitute_terms (
                        lambda x: sf.boolConstNode("true"),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_bool_sort(),
                        cmds[i], "  substitute Boolean terms with 'true'")
                if nsubst:
                    succeeded = "true_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "true_{}".format(i):
                    break

                nsubst = _substitute_terms (
                        lambda x: x.children[1].get_subst() \
                                if x.children[0].get_subst().is_true_const() \
                                else x.children[0].get_subst(),
                        lambda x: x.is_and() \
                                and (x.children[0].get_subst().is_true_const() \
                                or x.children[1].get_subst().is_true_const()),
                        cmds[i], "  substitute (and term true) with term")
                if nsubst:
                    succeeded = "and_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "and_{}".format(i):
                    break
            
                nsubst = _substitute_terms (
                        lambda x: sf.add_fresh_declfunCmdNode(x.sort),
                        lambda x: not x.is_const()                   \
                                  and x.sort and x.sort.is_bool_sort() \
                                  and not sf.is_substvar(x),
                        cmds[i], 
                        "  substitute Boolean terms with fresh variables",
                        True)
                if nsubst:
                    succeeded = "boolvar_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "boolvar_{}".format(i):
                    break

                if sf.is_arr_logic():
                    nsubst = _substitute_terms (
                            lambda x: x.children[0],  # array
                            lambda x: x.is_write(),
                            cmds[i], "  substitute STOREs with array child")
                    if nsubst:
                        succeeded = "store_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "store_{}".format(i):
                        break

                nsubst = _substitute_terms (
                        lambda x: x.children[1],  # left child
                        lambda x: x.is_ite(),
                        cmds[i], "  substitute ITE with left child")
                if nsubst:
                    succeeded = "iteleft_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "iteleft_{}".format(i):
                    break
                nsubst = _substitute_terms (
                        lambda x: x.children[2],  # right child
                        lambda x: x.is_ite(),
                        cmds[i], "  substitute ITE with right child")
                if nsubst:
                    succeeded = "iteright_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "iteright_{}".format(i):
                    break

        nsubst_total += nsubst_round

    _log (1)
    _log (1, "rounds total: {}".format(nrounds))
    _log (1, "tests  total: {}".format(g_ntests))
    _log (1, "substs total: {}".format(nsubst_total))
    _log (1)
    _log (1, "scopes substituted: {}".format(nscopes_subst))
    _log (1, "cmds   substituted: {}".format(ncmds_subst))
    _log (1, "terms  substituted: {}".format(nterms_subst))

    if nsubst_total == 0:
        sys.exit ("[ddsmt] unable to reduce input file")


if __name__ == "__main__":
    try:
        usage="ddsmt.py [<options>] <infile> <outfile> <cmd> [<cmd options>]"
        aparser = ArgumentParser (usage=usage)
        aparser.add_argument ("infile", 
                              help="the input file (in SMT-LIB v2 format)")
        aparser.add_argument ("outfile",
                              help="the output file")
        aparser.add_argument ("cmd", nargs=REMAINDER, 
                              help="the command (with optional arguments)")

        aparser.add_argument ("-t", dest="timeout", metavar="val",
                              default=None, type=float, 
                              help="timeout for test runs in seconds "\
                                   "(default: none)")
        aparser.add_argument ("-v", action="count", default=0, 
                              dest="verbosity", help="increase verbosity")
        aparser.add_argument ("-o", action="store_true", dest="cmpoutput",
                              default = False,
                              help = "use err exit code AND err output "\
                                     "to identify failing input (default:"\
                                     "err exit code only)")
        aparser.add_argument ("-O", action="store_true", dest="optimize",
                              default=False, 
                              help="remove assertions and debug code")
        aparser.add_argument ("--version", action="version", 
                              version=__version__)
        g_args = aparser.parse_args()

## TODO profile debug
#        g_args.infile = "trash/testcase8.stp.smt2"
#        g_args.infile = "trash/noregions-fullmemite.stp.smt2"

# TODO profile debug
#        if not g_args.cmd:  # special handling (nargs=REMAINDER)
#            raise DDSMTException ("too few arguments")
        
        if g_args.optimize:
            for i in range(0, len(sys.argv)):
                if sys.argv[i][0] == '-' and 'O' in sys.argv[i]:
                    if len(sys.argv[i]) > 2:
                        sys.argv[i] = sys.argv[i].replace("O", "")
                        break
                    else:
                        sys.argv.remove("-O")
                        break
            os.execl(sys.executable, sys.executable, '-O', *sys.argv)
        else:
            if not os.path.exists(g_args.infile):
                raise DDSMTException ("given input file does not exist")
            if os.path.isdir(g_args.infile):
                raise DDSMTException ("given input file is a directory")
            #if os.path.exists(g_args.outfile):
            #    raise DDSMTException ("given output file does already exist")
            if not g_args.cmd:
                raise DDSMTException ("command missing")

            _log (1, "input  file: '{}'".format(g_args.infile))
            _log (1, "output file: '{}'".format(g_args.outfile))
            _log (1, "command:     '{}'".format(
                " ".join([str(c) for c in g_args.cmd])))

            ifilesize = os.path.getsize(g_args.infile)

            parser = DDSMTParser()
            g_smtformula = parser.parse(g_args.infile)

            #### debug
            #to_visit = [g_smtformula.scopes]
            #while to_visit:
            #    scope = to_visit.pop()
            #    print ("level: {}\ncommands: {}\nsorts: {}\nfuns:{}".format(
            #        scope.level, 
            #        " ".join([str(c) for c in scope.cmds]), 
            #        " ".join([str(s) for s in scope.sorts]), 
            #        " ".join([str(f) for f in scope.funs])))
            #    to_visit.extend(scope.scopes)
            #######

            _log (2)
            _log (2, "parser: done")
            _log (3, "parser: maxrss: {} MiB".format(
                resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1000))

            #_dump(g_args.outfile)
            #sys.exit(0)
            ######
            #_dump(g_args.outfile)
            #sys.exit(0)
            #######

            shutil.copyfile(g_args.infile, g_tmpfile)
            g_args.cmd.append(g_tmpfile)
            _log (1)
            _log (1, "starting initial run... ")
            (g_golden_exit, g_golden_err) = _run(True)
            _log (1, "golden exit: {}".format(g_golden_exit))
            if g_args.cmpoutput:
                _log (1, "golden err: {}".format(
                            str(g_golden_err.decode()).strip()))
            ddsmt_main ()
            
            ofilesize = os.path.getsize(g_args.outfile)

            _log (1)
            _log (1, "input file size:  {} B (100%)".format(ifilesize))
            _log (1, "output file size: {} B ({:3.2f}%)".format(
                ofilesize, ofilesize / ifilesize * 100))
            _cleanup()
            sys.exit(0)
    except (DDSMTParseException, DDSMTException) as e:
        _cleanup()
        sys.exit(str(e))
    except MemoryError as e:
        _cleanup()
        sys.exit("[ddsmt] memory exhausted")
    except KeyboardInterrupt as e:
        _cleanup()
        sys.exit("[ddsmt] interrupted")
