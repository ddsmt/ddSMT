#! /usr/bin/env python3
#
# ddSMT: a delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (c) 2013, Aina Niemetz
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

# TODO: attributes currently handled as string only
#       -> no manipulation of attribute values

import os
import sys
import shutil
import time
import random

from argparse import ArgumentParser, REMAINDER
from subprocess import Popen, PIPE
from parser.ddsmtparser import DDSMTParser, DDSMTParseException


__version__ = "0.9-beta"
__author__  = "Aina Niemetz <aina.niemetz@gmail.com>"


g_golden = 0
g_ntests = 0

g_args = None
g_smtformula = None
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"



class DDSMTException (Exception):

    def __init__ (self, msg):
        self.msg = msg
    
    def __str__ (self):
        return "[ddsmt] Error: {0:s}".format(self.msg)



def _cleanup():
    if os.path.exists(g_tmpfile):
        os.remove(g_tmpfile)


def _log(verbosity, msg = "", update = False):
    global g_args
    if g_args.verbosity >= verbosity:
        sys.stdout.write(" " * 80 + "\r")
        if update:
            sys.stdout.write("[ddsmt] {0:s}\r".format(msg))
            sys.stdout.flush()
        else:
            sys.stdout.write("[ddsmt] {0:s}\n".format(msg))


def _dump (filename = None, root = None):
    global g_smtformula
    assert (g_smtformula)
    try:
        g_smtformula.dump(filename, root)
    except IOError as e:
        raise DDSMTException (str(e))


def _run ():
    global g_args
    try:
        start = time.time()
        sproc = Popen(g_args.cmd, stdout=PIPE, stderr=PIPE)

        # TODO this works from 3.3 upwards
        # (out, err) = sproc.communicate(g_opts.timeout)  # TODO use out, err
        
        # TODO disable this from 3.3. upwards
        if g_args.timeout:
            while (sproc.poll() == None):
                if time.time() - start > g_args.timeout:
                    sproc.kill()
                time.sleep(1)

        (out, err) = sproc.communicate()
        #_log (3)
        #_log (3, "solver output: " + out.decode())
        return sproc.returncode

    # TODO this works from 3.3 upwards
    #except TimeoutExpired as e:
    #    sproc.kill()
    #    (out, err) = proc.communicate()
    except OSError as e:
        raise DDSMTException ("{0:s}: {1:s}".format(str(e), g_cmd[0]))


def _test ():
    global g_args, g_ntests
    # TODO compare output if option enabled?
    g_ntests += 1
    return _run() == g_golden


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
        if cur.id in visited:
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
                _log (2, "  granularity: {}, subsets: {}, substituted: {}" \
                         "".format(gran, len(subsets), nsubst), True)
                del (cpy_subsets[cpy_subsets.index(subset)])
            else:
                _log (2, "  granularity: {}, subsets: {}, substituted: 0" \
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
    _log (2, "  >> {0:d} scope(s) substituted in total".format(nsubst_total))
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
            _filter_terms (filter_fun, [c.children[-1] for c in cmds]),
            with_vars)
    _log (2, "  >> {} term(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total


#def _has_child_to_subst (term):
#    if not term.children:
#        return False
#    for child in term.children:
#        if child.get_subst().sort == term.sort:
#            return True
#    return False


#def _subst_term_with_child (term):
#    assert (term.children)
#    children = []
#    for child in term.children:
#        if child.get_subst().sort == term.sort:
#            children.append(child)
#    random.shuffle(children)
#    return term if not children else children[0]


def ddsmt_main ():
    global g_tmpfile, g_args, g_smtformula

    nrounds = 0
    nsubst_total  = 0
    nsubst_round  = 1
    nscopes_subst = 0
    ncmds_subst   = 0
    nterms_subst  = 0

    succeeded = "none"

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

        asserts = _filter_cmds (lambda x: x.is_assert())
        deffuns = _filter_cmds (lambda x: x.is_definefun())

        if deffuns:
            _log (2)
            _log (2, "substitute TERMs in DEFINE-FUNs:")

            if g_smtformula.is_bv_logic():
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.bvZeroConstNode(x.sort),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_bv_sort(),
                        deffuns, "substitute BV terms with '0'")
                if nsubst:
                    succeeded = "bv0_deffun"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "bv0_deffun":
                    break
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.add_fresh_declfunCmdNode(x.sort),
                        lambda x: not x.is_const()                   \
                                  and x.sort and x.sort.is_bv_sort() \
                                  and not g_smtformula.is_substvar(x),
                        deffuns, "substitute BV terms with fresh variables",
                        True)
                if nsubst:
                    succeeded = "bvvar_deffun"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "bvvar_deffun":
                    break

            if g_smtformula.is_int_logic() or g_smtformula.is_real_logic():
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.zeroConstNNode(),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_int_sort(),
                        deffuns, "substitute Int terms with '0'")
                if nsubst:
                    succeeded = "int0_deffun"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "int0_deffun":
                    break
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.add_fresh_declfunCmdNode(x.sort),
                        lambda x: not x.is_const()                    \
                                  and x.sort and x.sort.is_int_sort() \
                                  and not g_smtformula.is_substvar(x),
                        deffuns, "substitute Int terms with fresh variables",
                        True)
                if nsubst:
                    succeeded = "intvar_deffun"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "intvar_deffun":
                    break

            if g_smtformula.is_real_logic():
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.zeroConstDNode(),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_real_sort(),
                        deffuns, "substitute Int terms with '0'")
                if nsubst:
                    succeeded = "real0_deffun"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "real0_deffun":
                    break
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.add_fresh_declfunCmdNode(x.sort),
                        lambda x: not x.is_const()                     \
                                  and x.sort and x.sort.is_real_sort() \
                                  and not g_smtformula.is_substvar(x),
                        deffuns, "substitute Int terms with fresh variables",
                        True)
                if nsubst:
                    succeeded = "realvar_deffun"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "realvar_deffun":
                    break

            nsubst = _substitute_terms (
                    lambda x: x.children[-1].get_subst(),
                    lambda x: x.is_let(),
                    deffuns, "substitute LETs with child term")
            if nsubst:
                succeeded = "let_deffun"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "let_deffun":
                break

            nsubst = _substitute_terms (
                    lambda x: g_smtformula.boolConstNode("false"),
                    lambda x: not x.is_const() \
                              and x.sort and x.sort.is_bool_sort(),
                    deffuns, "substitute Boolean terms with 'false'")
            if nsubst:
                succeeded = "false_deffun"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "false_deffun":
                break

            nsubst = _substitute_terms (
                    lambda x: x.children[1].get_subst()                     \
                              if x.children[0].get_subst().is_false_const() \
                              else x.children[0].get_subst(),
                    lambda x: x.is_or()                                       \
                              and (x.children[0].get_subst().is_false_const() \
                                or x.children[1].get_subst().is_false_const()),
                    deffuns, "substitute (or term false) with term")
            if nsubst:
                succeeded = "or_deffun"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "or_deffun":
                break

            nsubst = _substitute_terms (
                    lambda x: g_smtformula.boolConstNode("true"),
                    lambda x: not x.is_const() \
                              and x.sort and x.sort.is_bool_sort(),
                    deffuns, "substitute Boolean terms with 'true'")
            if nsubst:
                succeeded = "true_deffun"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "true_deffun":
                break

            nsubst = _substitute_terms (
                    lambda x: x.children[1].get_subst()                    \
                              if x.children[0].get_subst().is_true_const() \
                              else x.children[0].get_subst(),
                    lambda x: x.is_and()                                     \
                              and (x.children[0].get_subst().is_true_const() \
                               or x.children[1].get_subst().is_true_const()),
                    deffuns, "substitute (and term true) with term")
            if nsubst:
                succeeded = "and_deffun"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "and_deffun":
                break
            
            if g_smtformula.is_arr_logic():
                nsubst = _substitute_terms (
                        lambda x: x.children[0],  # array
                        lambda x: x.is_write(),
                        deffuns, "substitute STOREs with array child")
                if nsubst:
                    succeeded = "store_deffun"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "store_deffun":
                    break

            nsubst = _substitute_terms (
                    lambda x: x.children[1],  # left child
                    lambda x: x.is_ite(),
                    deffuns, "substitute ITE with left child")
            if nsubst:
                succeeded = "iteleft_deffun"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "iteleft_deffun":
                break
            nsubst = _substitute_terms (
                    lambda x: x.children[2],  # right child
                    lambda x: x.is_ite(),
                    deffuns, "substitute ITE with right child")
            if nsubst:
                succeeded = "iteright_deffun"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "iteright_deffun":
                break


        if asserts:
            _log (2) 
            _log (2, "substitute TERMs in ASSERTs:")

            if g_smtformula.is_bv_logic():
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.bvZeroConstNode(x.sort),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_bv_sort(),
                        asserts, "substitute BV terms with '0'")
                if nsubst:
                    succeeded = "bv0_assert"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "bv0_assert":
                    break
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.add_fresh_declfunCmdNode(x.sort),
                        lambda x: not x.is_const()                   \
                                  and x.sort and x.sort.is_bv_sort() \
                                  and not g_smtformula.is_substvar(x),
                        asserts, "substitute BV terms with fresh variables",
                        True)
                if nsubst:
                    succeeded = "bvvar_assert"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "bvvar_assert":
                    break

            if g_smtformula.is_int_logic() or g_smtformula.is_real_logic():
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.zeroConstNNode(),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_int_sort(),
                        asserts, "substitute Int terms with '0'")
                if nsubst:
                    succeeded = "int0_assert"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "int0_assert":
                    break
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.add_fresh_declfunCmdNode(x.sort),
                        lambda x: not x.is_const()                    \
                                  and x.sort and x.sort.is_int_sort() \
                                  and not g_smtformula.is_substvar(x),
                        asserts, "substitute Int terms with fresh variables",
                        True)
                if nsubst:
                    succeeded = "intvar_assert"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "intvar_assert":
                    break

            if g_smtformula.is_real_logic():
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.zeroConstDNode(),
                        lambda x: not x.is_const() \
                                  and x.sort and x.sort.is_real_sort(),
                        asserts, "substitute Int terms with '0'")
                if nsubst:
                    succeeded = "real0_assert"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "real0_assert":
                    break
                nsubst = _substitute_terms (
                        lambda x: g_smtformula.add_fresh_declfunCmdNode(x.sort),
                        lambda x: not x.is_const()                     \
                                  and x.sort and x.sort.is_real_sort() \
                                  and not g_smtformula.is_substvar(x),
                        asserts, "substitute Int terms with fresh variables",
                        True)
                if nsubst:
                    succeeded = "realvar_assert"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "realvar_assert":
                    break

            nsubst = _substitute_terms (
                    lambda x: x.children[-1],
                    lambda x: x.is_let(),
                    asserts, "substitute LETs with child term")
            if nsubst:
                succeeded = "let_assert"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "let_assert":
                break

            nsubst = _substitute_terms (
                    lambda x: g_smtformula.boolConstNode("false"),
                    lambda x: not x.is_const() \
                              and x.sort and x.sort.is_bool_sort(),
                    asserts, "substitute Boolean terms with 'false'")
            if nsubst:
                succeeded = "false_assert"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "false_assert":
                break

            nsubst = _substitute_terms (
                    lambda x: x.children[1] if x.children[0].is_false_const() \
                              else x.children[0],
                    lambda x: x.is_or()                           \
                              and (x.children[0].is_false_const() \
                                   or x.children[1].is_false_const()),
                    asserts, "substitute (or term false) with term")
            if nsubst:
                succeeded = "or_assert"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "or_assert":
                break

            nsubst = _substitute_terms (
                    lambda x: g_smtformula.boolConstNode("true"),
                    lambda x: not x.is_const() \
                              and x.sort and x.sort.is_bool_sort(),
                    asserts, "substitute Boolean terms with 'true'")
            if nsubst:
                succeeded = "true_assert"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "true_assert":
                break

            nsubst = _substitute_terms (
                    lambda x: x.children[1] if x.children[0].is_true_const() \
                              else x.children[0],
                    lambda x: x.is_and()                         \
                              and (x.children[0].is_true_const() \
                                   or x.children[1].is_true_const()),
                    asserts, "substitute (and term true) with term")
            if nsubst:
                succeeded = "and_assert"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "and_assert":
                break

            if g_smtformula.is_arr_logic():
                nsubst = _substitute_terms (
                        lambda x: x.children[0],  # array
                        lambda x: x.is_write(),
                        asserts, "substitute STOREs with array child")
                if nsubst:
                    succeeded = "store_assert"
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "store_assert":
                    break

            nsubst = _substitute_terms (
                    lambda x: x.children[1],  # left child
                    lambda x: x.is_ite(),
                    asserts, "substitute ITE with left child")
            if nsubst:
                succeeded = "iteleft_assert"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "iteleft_assert":
                break
            nsubst = _substitute_terms (
                    lambda x: x.children[2],  # right child
                    lambda x: x.is_ite(),
                    asserts, "substitute ITE with right child")
            if nsubst:
                succeeded = "iteright_assert"
                nsubst_round += nsubst
                nterms_subst += nsubst
            elif succeeded == "iteright_assert":
                break

#        #nsubst += _substitute_terms (
#        #        lambda x: _subst_term_with_child(x),
#        #        lambda x: _has_child_to_subst(x),
#        #        cmds, "substitute TERMS with child")
#
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
                              default=None, type=int, 
                              help="timeout for test runs in seconds "\
                                   "(default: none)")
        aparser.add_argument ("-v", action="count", default=0, 
                              dest="verbosity", help="increase verbosity")
        aparser.add_argument ("-o", action="store_true", dest="optimize",
                              default=False, 
                              help="remove assertions and debug code")
        aparser.add_argument ("--version", action="version", 
                              version=__version__)
        g_args = aparser.parse_args()

        if not g_args.cmd:  # sepcial handling (nargs=REMAINDER)
            raise DDSMTException ("too few arguments")
        
        if g_args.optimize:
            sys.argv.remove("-o")
            os.execl(sys.executable, sys.executable, '-O', *sys.argv)
        else:
            if not os.path.exists(g_args.infile):
                raise DDSMTException ("given input file does not exist")
            if os.path.isdir(g_args.infile):
                raise DDSMTException ("given input file is a directory")
            #if os.path.exists(g_args.outfile):
            #    raise DDSMTException ("given output file does already exist")

            _log (1, "input  file: '{}'".format(g_args.infile))
            _log (1, "output file: '{}'".format(g_args.outfile))
            _log (1, "command:     '{}'".format(
                " ".join([str(c) for c in g_args.cmd])))

            ifilesize = os.path.getsize(g_args.infile)

            parser = DDSMTParser()
            g_smtformula = parser.parse(g_args.infile)

            #_dump(g_args.outfile)
            #sys.exit(0)

            _log (2, "parser done")

            shutil.copyfile(g_args.infile, g_tmpfile)
            g_args.cmd.append(g_tmpfile)
            g_golden = _run()
            
            _log (1)
            _log (1, "golden exit: {0:d}".format(g_golden))

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
