#! /usr/bin/env python3
#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (C) 2013-2018, Aina Niemetz.
# Copyright (C) 2016-2017, Mathias Preiner.
# Copyright (C) 2018, Jane Lange.
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
from subprocess import Popen, PIPE, TimeoutExpired
from parser.ddsmtparser import DDSMTParser, DDSMTParseException
from collections import deque
from math import sqrt 

__version__ = "1.0"
__author__  = "Aina Niemetz <aina.niemetz@gmail.com>"


g_golden_exit = 0
g_golden_err = None
g_golden_runtime = 0
g_current_runtime = 0
g_ntests = 0
g_testtime = 0
g_args = None
g_smtformula = None
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_tmpbin = "/tmp/ddsmt-bin-" + str(os.getpid())


class DDSMTException (Exception):

    def __init__ (self, msg):
        self.msg = msg

    def __str__ (self):
        return "[ddsmt] Error: {}".format(self.msg)


class DDSMTCmd ():
    def __init__(self, cmd, timeout, log):
        self.cmd = cmd
        self.timeout = timeout
        self.log = log

    def run_cmd(self, is_golden = False):
        global g_golden_runtime
        self.process = Popen (self.cmd, stdout=PIPE, stderr=PIPE)
        start = time.time()
        try:
            if is_golden:
                self.out, self.err = self.process.communicate()
                g_golden_runtime = time.time() - start
                g_current_runtime = g_golden_runtime
            else:
                self.out, self.err = self.process.communicate(
                    timeout=self.timeout)
        except TimeoutExpired:
            self.process.kill()
            self.out, self.err = None, None
            self.log (2, "[!!] timeout: process terminated")
            if is_golden:
                raise DDSMTException ("initial run timed out")

        self.rcode = self.process.returncode
        return (self.out, self.err)

def _cleanup ():
    if os.path.exists(g_tmpfile):
        os.remove(g_tmpfile)
    if os.path.exists(g_tmpbin):
        os.remove(g_tmpbin)


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
    global g_args, g_golden_runtime, g_current_runtime
    try:
        if not g_args.timeout:
            cmd = DDSMTCmd(g_args.cmd, g_golden_runtime, _log)
        elif g_args.timeout_relative:
            cmd = DDSMTCmd(g_args.cmd, g_args.timeout + g_golden_runtime, _log)
        elif g_args.timeout_dynamic:
            cmd = DDSMTCmd(g_args.cmd, g_args.timeout + g_current_runtime, _log)
        else:
            cmd = DDSMTCmd(g_args.cmd, g_args.timeout, _log)
        (out, err) = cmd.run_cmd(is_golden)
        return (cmd.rcode, out, err)
    except OSError as e:
        raise DDSMTException("{}: {}".format(str(e), g_cmd[0]))


def _test ():
    global g_args, g_ntests, g_testtime
    g_ntests += 1
    start = time.time()
    (exitcode, out, err) = _run()
    g_testtime += time.time() - start
    return exitcode == g_golden_exit and \
        (g_args.cmpoutput in err.decode() or g_args.cmpoutput in out.decode())

def _filter_scopes (filter_fun, bfs, root = None):
    """_filter_scopes(filter_fun, bfs, root)
   
       Collect a list of scope nodes that fit a condition defined by given 
       filtering function filter_fun. Nodes are added to the list in the order 
       that they are visited in a depth-first search descending from a given 
       root.

       If no root is specified, search will begin from the root of the entire 
       formula.

       If bfs is True, nodes are visited in a breadth-first search instead.

       :filter_fun: Boolean function that returns True if a node should be 
                    added.
       :roots:      List of nodes from which to begin searching.
       :bfs:        Bool indicating whether to use breadth-first search.
       :return:     List of scope nodes that fit the filtering condition.
    """
    global g_smtformula
    assert (g_smtformula)
    scopes = []
    to_visit = [root if root else g_smtformula.scopes]
    while to_visit:
        if bfs:
            cur = to_visit.pop(0)
        else:
            cur = to_visit.pop()
        if cur.is_subst():
            continue
        if filter_fun(cur):
            scopes.append(cur)
        to_visit.extend(cur.scopes)
    return scopes

def _filter_cmds (filter_fun, bfs):
    """_filter_cmds(filter_fun, bfs)

       Collect a list of command nodes that fit a condition defined by given 
       filtering function filter_fun.

       If bfs is True, scopes will be collected by breadth-first search instead 
       of depth-first.

       :filter_fun: Boolean function that returns True if a node should be 
                    added.
       :bfs:        Bool indicating whether to use breadth-first search.
       :return:     List of command nodes that fit the filtering condition.
    """
    global g_smtformula
    assert (g_smtformula)
    cmds = []
    scopes = _filter_scopes (lambda x: x.is_regular(), bfs)
    to_visit = [c for cmd_list in [s.cmds for s in scopes] for c in cmd_list]
    to_visit.extend(g_smtformula.scopes.declfun_cmds.values())
    while to_visit:
        cur = to_visit.pop()
        if cur.is_subst():
            continue
        if filter_fun(cur):
            cmds.append(cur)
    return cmds

def _filter_terms (filter_fun, bfs, roots):
    """_filter_terms(filter_fun, bfs, roots) 
       
       Collect a list of term nodes that fit a condition defined by given 
       filtering function filter_fun. Nodes are added to the list in the order 
       that they are visited in a depth-first search descending from a given 
       list of roots.

       If bfs is True, nodes are visited in a breadth-first search instead.

       :filter_fun: Boolean function that returns True if a node should be 
                    added.
       :roots:      List of nodes from which to begin searching.
       :bfs:        Bool indicating whether to use breadth-first search.
       :return:     List of term nodes that fit the filtering condition.
    """
    nodes = []
    to_visit = roots
    visited = {}
    while to_visit:
        if bfs:
            cur = to_visit.pop(0).get_subst()
        else:
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
    return nodes

def _substitute (subst_fun, substlist, superset, randomized,  with_vars = False):
    """_substitute(subst_fun, substlist, superset, randomized, with_vars)

       Attempt to substitute nodes in contiguous subsets as defined by given 
       substitution function subst_fun. Remove substituted nodes from superset 
       when substitution was successful. 

       If randomized is True, shuffle superset before sampling each subset..

       :subst_fun:  Function used to determine node substitutions.
       :substlist:  Map from nodes in the input formula to their corresponding 
                    nodes in the reduced formula.
       :superset:   List of nodes to attempt to substitute.
       :randomized: Bool indicating whether to randomize subset selection.
       :with_vars:  Bool indicating whether the substitution creates new variables. 
       :return:     Total number of nodes substituted.
    """
    global g_smtformula, g_current_runtime

    assert (g_smtformula)
    assert (substlist in (g_smtformula.subst_scopes, g_smtformula.subst_cmds,
                          g_smtformula.subst_nodes))
    min_gran = 0.1 * sqrt(len(superset))
    nsubst_total = 0
    s = deque(superset) 
    gran = (len(s) + 1) // 2
    
    while gran > min_gran:
        for i in range ((len(s) + gran - 1) // gran):
            if randomized:
                random.shuffle(s)
            nsubst = 0
            cpy_substs = substlist.substs.copy()
            cpy_declfun_cmds = g_smtformula.scopes.declfun_cmds.copy()
            subset = []
            if len(s) == 0:
                return nsubst_total
            for j in range (gran):
                if len(s) == 0:
                    break
                item = s.popleft()
                if not item.is_subst():
                    item.subst (subst_fun(item))
                    subset.append(item)
                    nsubst += 1
                else: 
                    s.append(item)
            if nsubst == 0:
                continue
                
            _dump (g_tmpfile)
            start = time.time()
            if _test():
                g_current_runtime = time.time() - start
                nsubst_total += nsubst
                _log (2, "    granularity: {}, subset {} of {}:, substituted: {}" \
            	     "".format(gran, i, (len(superset)+gran-1)//gran, nsubst), True)
            else:
                _log (2, "    granularity: {}, subset {} of {}:, substituted: 0" \
            	     "".format(gran, i, (len(superset)+gran-1)//gran), True)
                substlist.substs = cpy_substs
                if with_vars:
                    for name in g_smtformula.scopes.declfun_cmds:
                        assert (g_smtformula.find_fun(name, scope = g_smtformula.scopes))
                        if name not in cpy_declfun_cmds:
                            g_smtformula.delete_fun(name)
                g_smtformula.scopes.declfun_cmds = cpy_declfun_cmds
                s.extend(subset)
        gran = gran // 2
    return nsubst_total

def _substitute_scopes (bfs, randomized):
    """_substitute_scopes(bfs, randomized)

       Attempt to remove scope nodes at each level of the formula by 
       substituting them with None. 

       :bfs:        Bool indicating whether to collect nodes in breadth-first 
                    order.
       :randomized: Bool indicating whether to randomize subset selection for
                    substitution.
       :return:     Total number of nodes substituted. 
    """
    global g_smtformula
    assert (g_smtformula)
    _log (2)
    _log (2, "substitute SCOPES:")
    ntests_prev = g_ntests
    nsubst_total = 0
    level = 1
    while True:
        scopes = _filter_scopes (lambda x: x.level == level and 
                                 x.is_regular(), bfs)
        if not scopes:
            break
        nsubst_total += _substitute (
                lambda x: None, g_smtformula.subst_scopes, scopes, randomized)
        level += 1
    _log (2, "  >> {} scope(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total

def _substitute_cmds (bfs, randomized, filter_fun = None):
    """_substitute_cmds(filter_fun, bfs, randomized)

       Attempt to remove command nodes as defined by a given filtering function 
       filter_fun by substituting them with None. 

       :bfs:        Bool indicating whether to collect nodes in breadth-first 
                    order.
       :randomized: Bool indicating whether to randomize subset selection for
                    substitution.
       :return:     Total number of nodes substituted. 
    """
    global g_smtformula
    assert (g_smtformula)
    _log (2)
    _log (2, "substitute COMMANDS:")
    ntests_prev = g_ntests
    filter_fun = filter_fun if filter_fun else \
            lambda x: not x.is_setlogic() and not x.is_exit()
    nsubst_total = _substitute (lambda x: None, g_smtformula.subst_cmds,
            _filter_cmds(filter_fun, bfs), randomized)
    _log (2, "  >> {} command(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total


def _substitute_terms (subst_fun, filter_fun, cmds, bfs, randomized, msg = None,
                       with_vars = False):
    """_substitute_terms(subst_fun, filter_fun, cmds, bfs, randomized, msg, 
                         with_vars)

       Attempt to substitute term nodes as defined by given substitution 
       function subst_fun and filtering condition filter_fun. Terms descend from
       a given command list cmds and are collected in the order indicated by the
       bfs parameter.

       :subst_fun:  Function used to determine node substitutions.
       :filter_fun: Function used to select terms to substitute.
       :cmds:       List of commands to substitute terms from.
       :bfs:        Bool indicating whether to collect nodes in breadth-first 
                    order.
       :randomized: Bool indicating whether to randomize subset selection.
       :msg:        String to write to the log.
       :with_vars:  Bool indicating whether the substitution creates new 
                    variables. 
       :return:     Total number of nodes substituted. 
    """
    _log (2)
    _log (2, msg if msg else "substitute TERMS:")
    ntests_prev = g_ntests
    terms = _filter_terms (filter_fun, bfs, [t for term_list in
                [c.children if c.is_getvalue() else [c.children[-1]] \
                        for c in cmds] for t in term_list])

    nsubst_total = _substitute (subst_fun, g_smtformula.subst_nodes, terms, \
                    randomized, with_vars)

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

        nsubst = _substitute_scopes (g_args.bfs, g_args.randomized)
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
           nsubst = _substitute_cmds (g_args.bfs, g_args.randomized)
        else:
           nsubst = _substitute_cmds (g_args.bfs, g_args.randomized, 
                                      lambda x: x.is_assert())
        if nsubst:
           succeeded = "cmds"
           nsubst_round += nsubst
           ncmds_subst += nsubst
        elif succeeded == "cmds":
           break

        cmds = [_filter_cmds (lambda x: x.is_definefun(), g_args.bfs),
                _filter_cmds (lambda x: x.is_assert(), g_args.bfs),
                _filter_cmds (lambda x: x.is_getvalue(), g_args.bfs)]
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
                            cmds[i], g_args.bfs, g_args.randomized, 
                            "  substitute BV terms with '0'")
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
                            cmds[i], g_args.bfs, g_args.randomized, 
                            "  substitute (bvor term false) with term")
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
                            cmds[i], g_args.bfs, g_args.randomized, 
                            "  substitute (bvand term true) with term")
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
                            cmds[i], g_args.bfs, g_args.randomized,
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
                            cmds[i], g_args.bfs, g_args.randomized, 
                            "  substitute Int terms with '0'")
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
                            cmds[i], g_args.bfs, g_args.randomized,
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
                            cmds[i], g_args.bfs, g_args.randomized, 
                            "  substitute Real terms with '0'")
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
                            cmds[i], g_args.bfs, g_args.randomized,
                            "  substitute Real terms with fresh variables",
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
                        cmds[i], g_args.bfs, g_args.randomized, 
                        "  substitute LETs with child term")
                if nsubst:
                    succeeded = "let_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "let_{}".format(i):
                    break

                nsubst = _substitute_terms (
                        lambda x: None,
                        lambda x: x.is_varb() and x.children[0].is_subst(),
                        cmds[i], g_args.bfs, g_args.randomized,
                        "  eliminate redundant variable bindings")
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
                        cmds[i], g_args.bfs, g_args.randomized, 
                        "  substitute Boolean terms with 'false'")
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
                        cmds[i], g_args.bfs, g_args.randomized, 
                        "  substitute (or term false) with term")
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
                        cmds[i], g_args.bfs, g_args.randomized, 
                        "  substitute Boolean terms with 'true'")
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
                        cmds[i], g_args.bfs, g_args.randomized,
                        "  substitute (and term true) with term")
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
                        cmds[i], g_args.bfs, g_args.randomized,
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
                            cmds[i], g_args.bfs, g_args.randomized,
                            "  substitute STOREs with array child")
                    if nsubst:
                        succeeded = "store_{}".format(i)
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == "store_{}".format(i):
                        break

                nsubst = _substitute_terms (
                        lambda x: x.children[1],  # left child
                        lambda x: x.is_ite(),
                        cmds[i], g_args.bfs, g_args.randomized,
                        "  substitute ITE with left child")
                if nsubst:
                    succeeded = "iteleft_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "iteleft_{}".format(i):
                    break
                nsubst = _substitute_terms (
                        lambda x: x.children[2],  # right child
                        lambda x: x.is_ite(),
                        cmds[i], g_args.bfs, g_args.randomized,
                        "  substitute ITE with right child")
                if nsubst:
                    succeeded = "iteright_{}".format(i)
                    nsubst_round += nsubst
                    nterms_subst += nsubst
                elif succeeded == "iteright_{}".format(i):
                    break

        nsubst_total += nsubst_round

    _log (1)
    _log (2, "total testing time: {0: .2f}".format(g_testtime))
    _log (1, "rounds total: {}".format(nrounds))
    _log (1, "tests  total: {}".format(g_ntests))
    _log (1, "substs total: {}".format(nsubst_total))
    _log (1)
    _log (1, "scopes substituted: {}".format(nscopes_subst))
    _log (1, "cmds   substituted: {}".format(ncmds_subst))
    _log (1, "terms  substituted: {}".format(nterms_subst))

    if nsubst_total == 0:
        sys.exit ("[ddsmt] unable to reduce input file")


def run_from_other_program(infile, outfile, cmd, options): 

        ifilesize = os.path.getsize(g_args.infile)

        parser = DDSMTParser()
        g_smtformula = parser.parse(infile)

        _log (2)
        _log (2, "parser: done")
        _log (3, "parser: maxrss: {} MiB".format(
            resource.getrusage(resource.RUSAGE_SELF).ru_maxrss/1000))

        shutil.copyfile(infile, g_tmpfile)
        shutil.copy(g_args.cmd[0], g_tmpbin)  # make copy of binary
        g_args.cmd[0] = g_tmpbin              # use copy for _run
        g_args.cmd.append(g_tmpfile)
        _log (1)
        _log (1, "starting initial run... ")
        (g_golden_exit, out, g_golden_err) = _run(True)
        if g_args.cmpoutput == None:
            g_args.cmpoutput = g_golden_err.decode()
        _log (1, "golden exit: {}".format(g_golden_exit))
        if g_args.cmpoutput:
            _log (1, "golden err: {}".format(g_args.cmpoutput))
        _log (1, "golden runtime: {0: .2f} seconds".format(g_golden_runtime))

        ddsmt_main ()

        ofilesize = os.path.getsize(outfile)

        _log (1)
        _log (1, "input file size:  {} B (100%)".format(ifilesize))
        _log (1, "output file size: {} B ({:3.2f}%)".format(
            ofilesize, ofilesize / ifilesize * 100))
        _cleanup()
        sys.exit(0)


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

        aparser.add_argument ("-r", action="store_true", dest="randomized", 
                              default=False, 
                              help="randomize substitution subsets")
        aparser.add_argument ("-b", action="store_true", dest="bfs",\
                              default=False, 
                              help="search for terms in breadth-first order ")
        aparser.add_argument ("-t", dest="timeout", metavar="val",\
                              default=None, type=float, \
                              help="absolute: timeout for test runs in "\
                                   "seconds. relative: timeout is [val] "\
                                   " seconds longer than golden runtime. " \
                                   "dynamic: timeout is [val] seconds longer "\
                                   "than most recent successful test. "\
                                   "(default: absolute. When timeout is "\
                                   "unspecified, default is golden runtime.)")
        timeout_group = aparser.add_mutually_exclusive_group()
        timeout_group.add_argument ("--rel", action="store_true", 
                              dest="timeout_relative", default=False, \
                              help="timeouts are relative to \
                                    test time of input file")
        timeout_group.add_argument ("--dyn", action="store_true", 
                              dest="timeout_dynamic", default=False, 
                              help="timeouts are relative to the runtime of"\
                                   "the most recent successful test")
        aparser.add_argument ("--round", dest="roundtime", metavar = "val", 
                              default=None, type=float, help="approximate time"\
                                   " limit for testing rounds in seconds")
        aparser.add_argument ("-v", action="count", default=0,
                              dest="verbosity", help="increase verbosity")
        aparser.add_argument ("-o", dest="cmpoutput",
                              help = "use exit code and search pattern string "\
                                     "to identify failing input (default: "\
                                     "error exit code and stderr output)") 
        aparser.add_argument ("--version", action="version",
                              version=__version__)
        g_args = aparser.parse_args()

## TODO profile debug
#        g_args.infile = "trash/testcase8.stp.smt2"
#        g_args.infile = "trash/noregions-fullmemite.stp.smt2"

# TODO profile debug
#        if not g_args.cmd:  # special handling (nargs=REMAINDER)
#            raise DDSMTException ("too few arguments")

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
        shutil.copy(g_args.cmd[0], g_tmpbin)  # make copy of binary
        g_args.cmd[0] = g_tmpbin              # use copy for _run
        g_args.cmd.append(g_tmpfile)
        _log (1)
        _log (1, "starting initial run... ")
        (g_golden_exit, out, g_golden_err) = _run(True)
        if g_args.cmpoutput == None:
            g_args.cmpoutput = g_golden_err.decode()
        _log (1, "golden exit: {}".format(g_golden_exit))
        if g_args.cmpoutput:
            _log (1, "golden err: {}".format(g_args.cmpoutput))
        _log (1, "golden runtime: {0: .2f} seconds".format(g_golden_runtime))

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
