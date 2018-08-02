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
from parser.ddsmtparser import SMTNode, SMTFunAppNode
from parser.ddsmtparser import  DDSMTParser, DDSMTParseException
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
                self.out, self.err = self.process.communicate(timeout=self.timeout)
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
            sys.stdout.write("[hddsmt] {}\r".format(msg))
            sys.stdout.flush()
        else:
            sys.stdout.write("[hddsmt] {}\n".format(msg))


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
            cmd = DDSMTCmd (g_args.cmd, g_golden_runtime, _log)
        elif g_args.timeout_relative:
            cmd = DDSMTCmd (g_args.cmd, g_args.timeout + g_golden_runtime, _log)
        elif g_args.timeout_dynamic:
            cmd = DDSMTCmd (g_args.cmd, g_args.timeout + g_current_runtime, _log)
        else:
            cmd = DDSMTCmd (g_args.cmd, g_args.timeout, _log)
        (out, err) = cmd.run_cmd(is_golden)
        return (cmd.rcode, out, err)
    except OSError as e:
        raise DDSMTException ("{}: {}".format(str(e), g_cmd[0]))


def _test ():
    global g_args, g_ntests, g_testtime
    g_ntests += 1
    start = time.time()
    (exitcode, out, err) = _run()
    g_testtime += time.time() - start
    return exitcode == g_golden_exit and \
        (g_args.cmpoutput in err.decode() or g_args.cmpoutput in out.decode())

def _filter_scopes_hdd (filter_fun, scopes):
    """_filter_scopes_hdd (filter_fun, scopes)
   
       Collect a sublist from a given list of scope nodes that fit a condition
       defined by given filtering function filter_fun.

       :filter_fun: Boolean function that returns True if a node should be added.
       :scopes:     List of scope nodes to filter from.
       :return:     List of scope nodes that fit the filtering condition.
    """
    nodes = []
    for s in scopes:
        if s.get_subst() and filter_fun(s):
            nodes.append(s)
    return nodes

def _filter_scopes (filter_fun, bfs, root = None):
    """_filter_scopes (filter_fun, bfs, root)
   
       Collect a list of scope nodes that fit a condition defined by given filtering 
       function filter_fun. Nodes are added to the list in the order that they 
       are visited in a depth-first search descending from a given root.

       If no root is specified, search will begin from the root of the entire formula.

       If bfs is True, nodes are visited in a breadth-first search instead.

       :filter_fun: Boolean function that returns True if a node should be added.
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

def _filter_cmds_hdd (filter_fun, cmds):
    """_filter_cmds_hdd (filter_fun, cmds)
   
       Collect a sublist from a given list of commands that fit a condition
       defined by given filtering function filter_fun.

       :filter_fun: Boolean function that returns True if a node should be added.
       :scopes:     List of command nodes to filter from.
       :return:     List of command nodes that fit the filtering condition.
    """
    nodes = []
    for c in cmds:
        if not c.is_subst() and filter_fun(c):
            nodes.append(c)
    return nodes

def _filter_cmds (filter_fun, bfs):
    """_filter_cmds(filter_fun, bfs)

       Collect a list of command nodes that fit a condition defined by given filtering 
       function filter_fun.

       If bfs is True, scopes will be collected by breadth-first search instead of 
       depth-first.

       :filter_fun:  Boolean function that returns True if a node should be added.
       :scopes: 
       :bfs:         Bool indicating whether to use breadth-first search.
       :return:      List of command nodes that fit the filtering condition.
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

def _filter_terms_hdd (filter_fun, terms):
    """_filter_terms_hdd(filter_fun, bfs)
   
       Collect a sublist from a given list of term nodes that fit a condition
       defined by given filtering function filter_fun.

       :filter_fun: Boolean function that returns True if a node should be added.
       :scopes:     List of term nodes to filter from.
       :return:     List of term nodes that fit the filtering condition.
    """

    nodes = []
    for t in terms:
        if t.get_subst() and filter_fun(t.get_subst()):
            nodes.append(t)
    return nodes

def _filter_terms (filter_fun, bfs, roots):
    """_filter_terms(filter_fun, bfs, roots) 
       
       Collect a list of term nodes that fit a condition defined by given filtering 
       function filter_fun. Nodes are added to the list in the order that they 
       are visited in a depth-first search descending from a given list of roots.

       If bfs is True, nodes are visited in a breadth-first search instead.

       :filter_fun: Boolean function that returns True if a node should be added.
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
        #if cur.is_fun() and cur.children and cur.children[0].is_subst():
        #    continue
        if filter_fun(cur.get_subst()):
            nodes.append(cur)
        if cur.get_subst().children:
            to_visit.extend(cur.children)
    return nodes

def _substitute (subst_fun, substlist, superset, randomized,  with_vars = False):
    """_substitute(subst_fun, substlist, superset, randomized, with_vars)

       Attempt to substitute nodes in contiguous subsets as defined by given 
       substitution function subst_fun. Remove substituted nodes from superset 
       when substitution was successful. 

       If randomized is True, sample subsets randomly rather than splitting 
       into contiguous subsets.

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

def _substitute_scopes_hdd (scopes, randomized):
    """_substitute_scopes_hdd (scopes, randomized)

       Attempt to remove scope nodes from a given list by substituting them
       with None. 

       :scopes:     List of scope nodes to attempt to remove.
       :randomized: Bool indicating whether to randomize subset selection for
                    substitution.
       :return:     Total number of nodes substituted. 
    """
    global g_smtformula
    assert (g_smtformula)
    _log (2)
    _log (2, "substitute SCOPES:")
    ntests_prev = g_ntests
    nsubst_total = _substitute (lambda x: None, g_smtformula.subst_scopes,
                                scopes, randomized)
    
    _log (2, "  >> {} scope(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total

def _substitute_cmds_hdd (cmds, randomized):
    """_substitute_cmds_hdd (cmds, randomized)

       Attempt to remove command nodes from a given list by substituting them
       with None. 

       :cmds:       List of command nodes to attempt to remove.
       :randomized: Bool indicating whether to randomize subset selection for
                    substitution.
       :return:     Total number of nodes substituted. 
    """
    global g_smtformula
    assert (g_smtformula)
    _log (2)
    _log (2, "substitute COMMANDS:")
    ntests_prev = g_ntests
    nsubst_total = _substitute (lambda x: None, g_smtformula.subst_cmds,
                                cmds, g_args.randomized)

    _log (2, "  >> {} command(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total

def _substitute_terms_hdd (subst_fun, filter_fun, terms, randomized, msg = None,
                       with_vars = False):
    """_substitute_terms_hdd (subst_fun, filter_fun, terms, randomized, msg, 
        with_vars)

       Attempt to substitute term nodes from a given list as defined by given 
       substitution function subst_fun. 

       :subst_fun:  Function used to determine node substitutions.
       :terms:      List of terms to attempt to substitute.
       :randomized: Bool indicating whether to randomize subset selection.
       :msg:        String to write to the log.
       :with_vars:  Bool indicating whether the substitution creates new 
                    variables. 
       :return:     Total number of nodes substituted. 
    """
    _log (2)
    _log (2, msg if msg else "substitute TERMS:")
    ntests_prev = g_ntests
    terms =_filter_terms_hdd (filter_fun, terms)
    nsubst_total = _substitute (subst_fun, g_smtformula.subst_nodes, terms, 
                    randomized, with_vars)

    _log (2, "    >> {} term(s) substituted in total".format(nsubst_total))
    _log (3, "    >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total

def reduce_degree (terms, randomized, msg = None):
    """reduce_degree (terms, randomized, msg)

       Attempt to substitute nodes from a given list with each of their
       non-constant children. 

       :terms:      List of terms to attempt to substitute.
       :randomized: Bool indicating whether to randomize subset selection.
       :msg:        String to write to the log.
       :return:     Total number of nodes substituted. 
    """
    index = 0
    nsubst_total = 0
    ntests_prev = g_ntests
    _log (2)
    _log (2, msg if msg else "substitute TERMS:")
    while terms:
        terms = _filter_terms_hdd (lambda x: len(x.children) > index, terms)
        to_sub = _filter_terms_hdd (lambda x:
                 not x.children[index].get_subst().is_const(), terms)
        nsubst_total +=  _substitute (lambda x: x.children[index].get_subst(),
                         g_smtformula.subst_nodes, to_sub, randomized)
        index += 1

    _log (2, "    >> {} term(s) substituted in total".format(nsubst_total))
    _log (3, "    >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total

def coarse_hdd ():
    """coarse_hdd ()

       Walk from roots to leaves in 3 phases, attempting to make substitutions
       at each level. First phase removes scope nodes and commands within
       each scope. Second phase replaces terms with constants and free 
       variables, then replaces the remaining internal nodes with child nodes.
       Third phase removes definitions and declarations of functions with no 
       applications in the formula. 

       These phases are repeated until a fixed point is reached.
    """
    global g_tmpfile, g_args, g_smtformula
    sf = g_smtformula

    nsubst_total = 0
    nscopes_subst = 0
    ncmds_subst = 0
    nterms_subst = 0
    nsubst_round = 1
    nrounds = 0
    maxrounds = 10 
    
    while nsubst_round and nrounds < maxrounds:
        scopes = _filter_scopes (lambda x: x.level == 0 and x.is_regular(), g_args.bfs)
        nrounds += 1 
        nsubst_round = 0
        level = 0
        _dump(g_tmpfile)
        if nrounds > 1: #pass to eliminate definitions of functions that aren't called 
            _log(1, "removing redundant definitions and declarations")
            cmds = _filter_cmds (lambda x: not (x.is_definefun() or x.is_declfun() or x.is_declconst()), g_args.bfs) 
            all_funapps = _filter_terms(lambda x: isinstance(x, SMTFunAppNode), g_args.bfs, [t for c in
                cmds for t in c.children if isinstance(t, SMTNode)])
            names = [t.get_subst().fun.name for t in all_funapps]
            definitions = _filter_cmds(lambda x: x.is_definefun() or x.is_declfun() or x.is_declconst(), g_args.bfs)
            to_remove = [d for d in definitions if not d.children[0].name in names]
            nsubst_round += _substitute_cmds_hdd (to_remove, g_args.randomized)
            ncmds_subst += nsubst_round
            _log(1, "removed {} commands".format(nsubst_round))

        terms = []
        while scopes:
            _log(1, "scopes and commands at level {}:".format(level))
            temp_scopes = []
            cmds = []

            if scopes:
                nsubst = _substitute_scopes_hdd (scopes, g_args.randomized)
                for node in scopes:
                    if node.get_subst(): 
                        temp_scopes.extend(node.get_subst().scopes)
                        cmds.extend(node.get_subst().cmds)
                scopes = temp_scopes
                nsubst_round += nsubst
                nscopes_subst += nsubst

            if cmds: #no declarations 
                nsubst = _substitute_cmds_hdd (_filter_cmds_hdd 
                         (lambda x: not (x.is_declfun() or x.is_definefun() or x.is_declconst()), cmds), g_args.randomized)

                for node in cmds: 
                    if node.get_subst() and node.get_subst().is_getvalue():
                        terms.extend(node.get_subst().children)
                    elif node.get_subst() and node.get_subst().children:
                        for c in node.get_subst().children:
                            if isinstance(c, SMTNode):
                                terms.append(c)
                nsubst_round += nsubst
                ncmds_subst += nsubst
            level += 1

        level = 0
        while terms:
            _log(1, "terms at level {}:".format(level))
            nsubst = 1
            while nsubst: 
                nsubst = 0

                nsubst += _substitute_terms_hdd (
                    lambda x: sf.boolConstNode("false"),
                    lambda x: not x.is_const() \
                        and x.sort and x.sort.is_bool_sort(),
                    terms, g_args.randomized, 
                "  substitute Boolean terms with 'false'")

                nsubst += _substitute_terms_hdd (
                    lambda x: sf.boolConstNode("true"),
                    lambda x: not x.is_const() \
                        and x.sort and x.sort.is_bool_sort(),
                    terms, g_args.randomized, 
                "  substitute Boolean terms with 'true'")

                nsubst += _substitute_terms_hdd (
                   lambda x: x.children[1].get_subst() \
                       if x.children[0].get_subst().is_true_const()\
                       else x.children[0].get_subst(),
                   lambda x: x.is_and() and \
                       (x.children[0].get_subst().is_true_const() \
                    or
                    x.children[1].get_subst().is_true_const()),
                   terms, g_args.randomized, 
                   "  substitute (and term true) with term")

                nsubst += _substitute_terms_hdd (
                   lambda x: x.children[1].get_subst() \
                       if x.children[0].get_subst().is_false_const()\
                       else x.children[0].get_subst(),
                   lambda x: x.is_or() and \
                       (x.children[0].get_subst().is_false_const() \
                    or
                    x.children[1].get_subst().is_false_const()),
                   terms, g_args.randomized, 
                   "  substitute (or term false) with term")

                if sf.is_bv_logic():
                    nsubst += _substitute_terms_hdd (
                            lambda x: sf.bvZeroConstNode(x.sort),
                            lambda x: not x.is_const() \
                                      and x.sort and x.sort.is_bv_sort(),
                            terms, g_args.randomized, 
                            "  substitute BV terms with '0'")

                    nsubst += _substitute_terms_hdd (
                           lambda x: x.children[1].get_subst() \
                               if x.children[0].get_subst().is_false_bvconst()\
                               else x.children[0].get_subst(),
                           lambda x: x.is_bvor() and \
                               (x.children[0].get_subst().is_false_bvconst() \
                        	or
                        	x.children[1].get_subst().is_false_bvconst()),
                           terms, g_args.randomized, 
                           "  substitute (bvor term false) with term")

                    nsubst += _substitute_terms_hdd (
                           lambda x: x.children[1].get_subst() \
                               if x.children[0].get_subst().is_true_bvconst() \
                               else x.children[0].get_subst(),
                           lambda x: x.is_and() and \
                               (x.children[0].get_subst().is_true_bvconst() \
                        	or
                        	x.children[1].get_subst().is_true_bvconst()),
                           terms, g_args.randomized, 
                           "  substitute (bvand term true) with term")

                    nsubst += _substitute_terms_hdd (
                            lambda x: sf.add_fresh_declfunCmdNode(x.sort),
                            lambda x: not x.is_const()                   \
                                      and x.sort and x.sort.is_bv_sort() \
                                      and not sf.is_substvar(x),
                            terms, g_args.randomized,
                            "  substitute BV terms with fresh variables",
                            True)

                if sf.is_int_logic() or sf.is_real_logic():
                    nsubst += _substitute_terms_hdd (
                            lambda x: sf.zeroConstNNode(),
                            lambda x: not x.is_const() \
                                      and x.sort and x.sort.is_int_sort(),
                            terms, g_args.randomized, 
                            "  substitute Int terms with '0'")
                    nsubst += _substitute_terms_hdd (
                            lambda x: sf.add_fresh_declfunCmdNode(x.sort),
                            lambda x: not x.is_const()                    \
                                      and x.sort and x.sort.is_int_sort() \
                                      and not sf.is_substvar(x),
                            terms, g_args.randomized,
                            "  substitute Int terms with fresh variables",
                            True)

                if sf.is_real_logic():
                    nsubst += _substitute_terms_hdd (
                            lambda x: sf.zeroConstDNode(),
                            lambda x: not x.is_const() \
                                      and x.sort and x.sort.is_real_sort(),
                            terms, g_args.randomized, 
                            "  substitute Real terms with '0'")
                    nsubst += _substitute_terms_hdd (
                            lambda x: sf.add_fresh_declfunCmdNode(x.sort),
                            lambda x: not x.is_const()                     \
                                      and x.sort and x.sort.is_real_sort() \
                                      and not sf.is_substvar(x),
                            terms, g_args.randomized,
                            "  substitute Real terms with fresh variables",
                            True)

                nsubst += _substitute_terms_hdd (
                        lambda x: x.children[-1].get_subst(),
                        lambda x: x.is_let(),
                        terms, g_args.randomized, 
                        "  substitute LETs with child term")

                nsubst += _substitute_terms_hdd (
                        lambda x: None,
                        lambda x: x.is_varb() and x.children[0].is_subst(),
                        terms, g_args.randomized,
                        "  eliminate redundant variable bindings")

                if sf.is_arr_logic():
                   nsubst += _substitute_terms_hdd (
                           lambda x: x.children[0],  # array
                           lambda x: x.is_write(),
                           terms, g_args.randomized,
                           "  substitute STOREs with array child")

                nsubst += reduce_degree (terms, g_args.randomized,
                        "  substitute internal nodes with child")
 
                nsubst_round += nsubst
                nterms_subst += nsubst

            temp_terms = []
            for node in terms:
                if node.get_subst():
                    temp_terms.extend([c.get_subst() for c in node.get_subst().children])
            
            terms = temp_terms
            level += 1

        _dump (g_args.outfile)
        nsubst_total += nsubst_round

    _log (1)
    _log (1, "total testing time: {0: .2f}".format(g_testtime))
    _log (1, "rounds total: {}".format(nrounds))
    _log (1, "tests  total: {}".format(g_ntests))
    _log (1, "substs total: {}".format(nsubst_total))
    _log (1)
    _log (1, "scopes substituted: {}".format(nscopes_subst))
    _log (1, "cmds   substituted: {}".format(ncmds_subst))
    _log (1, "terms  substituted: {}".format(nterms_subst))
    

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

        aparser.add_argument ("-r", action="store_true", dest="randomized",\
                              default=False, help="randomize substitution subsets ")
        aparser.add_argument ("-b", action="store_true", dest="bfs",\
                              default=False, help="search for terms in breadth-first order ")
        aparser.add_argument ("-t", dest="timeout", metavar="val",\
                              default=None, type=float, \
                              help="absolute: timeout for test runs in seconds " \
                                   "relative: timeout is [val] seconds longer than golden runtime" \
                                   "dynamic: timeout is [val] seconds longer than most recent successful test"\
                                   "(default: absolute. When timeout is unspecified, default is golden runtime.)")
        timeout_group = aparser.add_mutually_exclusive_group()
        timeout_group.add_argument ("--rel", action="store_true", dest="timeout_relative",\
                              default=False, help="timeouts are relative to test time of input file")
        timeout_group.add_argument ("--dyn", action="store_true", dest="timeout_dynamic",\
                              default=False, help="timeouts are relative to the runtime of the "\
                                   "most recent successful test")
        aparser.add_argument ("--round", dest="roundtime", metavar = "val", default=None,
                              type=float, help="approximate time limit for testing rounds in seconds")
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

        coarse_hdd ()
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
