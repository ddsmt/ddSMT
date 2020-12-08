#! /usr/bin/env python3
#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (C) 2013-2019, Aina Niemetz.
# Copyright (C) 2016-2019, Mathias Preiner.
# Copyright (C) 2018, Jane Lange.
# Copyright (C) 2018, Andres Noetzli.
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


g_golden_exit = 0
g_golden_exit_cc = 0
g_golden_err = None
g_golden_err_cc = None
g_golden_out = None
g_golden_out_cc = None
g_golden_runtime = 0
g_golden_runtime_cc = 0
g_current_runtime = 0
g_ntests = 0
g_testtime = 0
g_args = None
g_smtformula = None
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_tmpbin = "/tmp/ddsmt-bin-" + str(os.getpid())
g_tmpbin_cc = "/tmp/ddsmt-bin-cc-" + str(os.getpid())


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
                g_golden_runtime += time.time() - start
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
    if os.path.exists(g_tmpbin_cc):
        os.remove(g_tmpbin_cc)


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


def _run (cmd, is_golden = False):
    global g_args, g_golden_runtime, g_current_runtime
    try:
        if not g_args.timeout:
            _cmd = DDSMTCmd (cmd, 1.5 * g_golden_runtime, _log)
        elif g_args.timeout_relative:
            _cmd = DDSMTCmd (cmd, g_args.timeout + g_golden_runtime, _log)
        elif g_args.timeout_dynamic:
            _cmd = DDSMTCmd (cmd, g_args.timeout + g_current_runtime, _log)
        else:
            _cmd = DDSMTCmd (cmd, g_args.timeout, _log)
        (out, err) = _cmd.run_cmd(is_golden)
        return (_cmd.rcode, out, err)
    except OSError as e:
        raise DDSMTException("{}: {}".format(str(e), _cmd[0]))


def _test ():
    global g_args, g_ntests, g_testtime
    g_ntests += 1
    start = time.time()
    res_cmp_cc = True
    (exit_code, out, err) = _run(g_args.cmd)
    res_cmp = exit_code == g_golden_exit
    if g_args.match_out:
        if g_args.match_err:
            res_cmp = res_cmp and \
                (g_args.match_err in err.decode()
                 and g_args.match_out in out.decode())
        else:
            res_cmp = res_cmp and \
                (g_golden_err == err.decode()
                 and g_args.match_out in out.decode())
    elif g_args.match_err:
        res_cmp = res_cmp and \
            (g_args.match_err in err.decode()
             and g_golden_out == out.decode())
    else:
        res_cmp = res_cmp and \
            (g_golden_err == err.decode()
             and g_golden_out == out.decode())

    if res_cmp and g_args.cmd_cc:
        (exit_code_cc, out_cc, err_cc) = _run(g_args.cmd_cc)
        res_cmp_cc = exit_code_cc == g_golden_exit_cc
        if g_args.match_out_cc:
            if g_args.match_err_cc:
                res_cmp_cc = res_cmp_cc and \
                    (g_args.match_err_cc in err_cc.decode()
                     and g_args.match_out_cc in out_cc.decode())
            else:
                res_cmp_cc = res_cmp_cc and \
                    (g_golden_err_cc == err_cc.decode()
                     and g_args.match_out_cc in out_cc.decode())
        elif g_args.match_err_cc:
            res_cmp_cc = res_cmp_cc and \
                (g_args.match_err_cc in err_cc.decode()
                 and g_golden_out_cc == out_cc.decode())
        else:
            res_cmp_cc = res_cmp_cc and \
                (g_golden_err_cc == err_cc.decode()
                 and g_golden_out_cc == out_cc.decode())

    g_testtime += time.time() - start

    return res_cmp and res_cmp_cc


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
    scopes = _filter_scopes (lambda x: True, bfs)
    to_visit = [c for cmd_list in [s.cmds for s in scopes] for c in cmd_list]
    to_visit.extend(g_smtformula.scopes.declfun_cmds.values())
    while to_visit:
        cur = to_visit.pop()
        if cur.is_subst():
            continue
        if filter_fun(cur):
            cmds.append(cur)
    return cmds

def _get_roots_from_commands(cmds):
    """_get_roots_from_commands(cmds):

        Collect all root term nodes from a list of commands.

        :cmds:   List of commands from which to search the roots.
        :return: List of root term nodes.

    """
    return [t for term_list in
                [c.children if c.is_getvalue() else [c.children[-1]] \
                    for c in cmds] for t in term_list]

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
        if cur.is_fun() and cur.children and cur.is_subst():
            continue
        if filter_fun(cur):
            nodes.append(cur)
        if cur.children:
            to_visit.extend(cur.children)
    return nodes

def _substitute (subst_fun, substlist, superset, randomized,
                 with_vars = False):
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
       :with_vars:  Bool indicating whether the substitution creates new
                    variables.
       :return:     Total number of nodes substituted.
    """
    global g_smtformula, g_current_runtime

    assert (g_smtformula)
    assert (substlist is g_smtformula.substs)
    nsubst_total = 0
    gran = len(superset)

    while gran > 0:
        start_time = time.time()
        if randomized:
            subsets = [random.sample(superset, gran) for s in range(
                       0, len(superset), gran)]
        else:
            subsets = [superset[s:s+gran] for s in range (
                       0, len(superset), gran)]
        tests_performed = 0
        for subset in subsets:
            if g_args.roundtime:
                if time.time() - start_time > g_args.roundtime:
                    _log (2, "[!!] test round timeout: reducing granularity")
                    break
            tests_performed += 1
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
            start = time.time()
            if _test():
                g_current_runtime = time.time() - start
                _dump (g_args.outfile)
                nsubst_total += nsubst
                _log (2, "    granularity: {}, subset {} of {}, " \
                         "substituted: {}".format(gran, tests_performed,
                      len(subsets), nsubst), True)
                superset = list(set(superset) - set(subset))
            else:
                _log (2, "    granularity: {}, subset {} of {}, "\
                         "substituted: 0".format(gran, tests_performed,
                      len(subsets)), True)
                substlist.substs = cpy_substs
                if with_vars:
                    for name in g_smtformula.scopes.declfun_cmds:
                        assert (g_smtformula.find_fun(
                            name, scope = g_smtformula.scopes))
                        if name not in cpy_declfun_cmds:
                            g_smtformula.delete_fun(name)
                g_smtformula.scopes.declfun_cmds = cpy_declfun_cmds
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
    _log (2, "----------------------------------------------------------------")
    _log (2, "substitute SCOPES:")
    _log (2, "----------------------------------------------------------------")
    ntests_prev = g_ntests
    nsubst_total = 0
    level = 1
    while True:
        scopes = _filter_scopes (lambda x: x.level == level, bfs)
        if not scopes:
            break
        nsubst_total += _substitute (
                lambda x: None, g_smtformula.substs, scopes, randomized)
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
    _log (2, "----------------------------------------------------------------")
    _log (2, "substitute COMMANDS:")
    _log (2, "----------------------------------------------------------------")
    ntests_prev = g_ntests
    filter_fun = filter_fun if filter_fun else \
            lambda x: not x.is_setlogic() and not x.is_exit()
    nsubst_total = _substitute (lambda x: None, g_smtformula.substs,
            _filter_cmds(filter_fun, bfs), randomized)
    _log (2, "  >> {} command(s) substituted in total".format(nsubst_total))
    _log (3, "  >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total


def _substitute_terms (subst_fun, filter_fun, cmds, bfs, randomized, msg = None,
                       with_vars = False):
    """_substitute_terms(subst_fun, filter_fun, cmds, bfs, randomized, msg,
                         with_vars)

       Attempt to substitute term nodes as defined by given substitution
       function subst_fun and filtering condition filter_fun. Terms descend
       from a given command list cmds and are collected in the order indicated
       by the bfs parameter.

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
    terms = _filter_terms (filter_fun, bfs, _get_roots_from_commands(cmds))

    nsubst_total = _substitute (subst_fun, g_smtformula.substs, terms, \
                    randomized, with_vars)

    _log (2, "    >> {} term(s) substituted in total".format(nsubst_total))
    _log (3, "    >> {} test(s)".format(g_ntests - ntests_prev))
    return nsubst_total


# Simplification passes

class PassConstZero:
    def filter(self, x):
        return not x.is_const() \
               and x.sort \
               and (x.sort.is_bv_sort() \
                    or x.sort.is_fp_sort() \
                    or x.sort.is_int_sort() \
                    or x.sort.is_real_sort() \
                    or x.sort.is_str_sort())

    def subst(self, x):
        return g_smtformula.zeroConstNodeOfSort(x.sort)

    def msg(self):
        return "substitute terms with constant value '0'"


class PassFreshVar:
    def filter(self, x):
        return not x.is_const() \
               and x.children \
               and x.sort \
               and not g_smtformula.is_substvar(x)

    def subst(self, x):
        return g_smtformula.add_fresh_declfunCmdNode(x.sort)

    def msg(self):
        return "substitute terms with fresh variables"

class PassLetPullBody:
    def filter(self, x):
        return x.is_let()

    def subst(self, x):
        return x.children[-1]

    def msg(self):
        return "substitute LETs with body"

class PassQuantPullBody:
    def filter(self, x):
        return x.is_quant()

    def subst(self, x):
        return x.children[-1]

    def msg(self):
        return "substitute quantifier with body"

class PassShortenSymbols:
    cache = set()
    num_symbols = 0
    prefix = "_s"

    def filter(self, x):
        return x.is_fun() and x not in self.cache \
                and len(x.name) > (len(self.prefix) + len(str(self.num_symbols)))

    def subst(self, x):
        name = "{}{}".format(self.prefix, self.num_symbols)
        self.num_symbols += 1
        self.cache.add(x)
        return type(x)(name, x.sort, x.sorts, x.indices, x.children)

    def msg(self):
        return "shorten symbols"

class PassElimVarBind:
    def __init__(self, cmds):
        varbinds = _filter_terms(lambda x: x.is_varb(), g_args.bfs,
                                 _get_roots_from_commands(cmds))
        self.varb_vars_map = \
                dict((vb.var.name, vb.children[0]) for vb in varbinds)

    def filter(self, x):
        return x.is_fun() and x.name in self.varb_vars_map
        return x.is_varb() and x.children[0].is_subst()

    def subst(self, x):
        return self.varb_vars_map[x.name]

    def msg(self):
        return "eliminate redundant variable bindings"

class PassConstBool:
    def __init__(self, value):
        assert value in ("true", "false")
        self.value = value

    def filter(self, x):
        return not x.is_const() and x.sort and x.sort.is_bool_sort()

    def subst(self, x):
        return g_smtformula.boolConstNode(self.value)

    def msg(self):
        return "substitute Boolean terms with '{}'".format(self.value)

class PassPullChild:
    def __init__(self, position):
        assert position >= 0
        self.position = position

    def filter(self, x):
        return x.is_fun_app() and self.position < len(x.children) and \
               x.sort == x.children[self.position].get_subst().sort

    def subst(self, x):
        return x.children[self.position]

    def msg(self):
        return "substitute with children[{}]".format(self.position)

class PassInlineDefFun:

    def __init__(self):
        deffuns = _filter_cmds(lambda x: x.is_definefun(), g_args.bfs)
        self.def_fun_map = dict()
        for df in deffuns:
            fun = df.children[0]
            body = df.children[-1]
            if not df.children[1]:
                self.def_fun_map[fun.name] = body

    def filter(self, x):
        return x.is_fun() and x.name in self.def_fun_map

    def subst(self, x):
        return self.def_fun_map[x.name]

    def msg(self):
        return "inline 0-arity define-funs"

class PassCompactAndOr:
    def filter(self, x):
        if x.is_and() or x.is_or() or x.is_bvand() or x.is_bvor():
            for c in x.children:
                c = c.get_subst()
                if c.is_true_const() \
                   or c.is_false_const() \
                   or c.is_true_bvconst() \
                   or c.is_false_bvconst():
                    return True
        return False

    def subst(self, x):
        non_const = [c.get_subst() for c in x.children \
                        if not c.get_subst().is_true_const() and \
                           not c.get_subst().is_false_const() and \
                           not c.get_subst().is_true_bvconst() and \
                           not c.get_subst().is_false_bvconst()]
        if len(non_const) > 1:
            return type(x)(x.fun, x.kind, x.sort, non_const)
        return non_const[0]

    def msg(self):
        return "eliminate true/false/#b1/#b0 in and/or/bvand/bvor"



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

        for i in range(0, len(cmds)):
            if cmds[i]:
                _log(2)
                _log (2, "---------------------------------------------------"\
                         "-------------")
                _log (2, "substitute TERMs in {} cmds:".format(cmds_msgs[i]))
                _log (2, "---------------------------------------------------"\
                         "-------------")

                # Create passes in each iteration, since a pass may initialize
                # data structures based on the current formula
                passes = [PassConstZero(), PassFreshVar(), PassLetPullBody(),
                          PassQuantPullBody(),
                          PassElimVarBind(cmds[i]),
                          PassConstBool('true'), PassConstBool('false'),
                          PassPullChild(0), PassPullChild(1), PassPullChild(2),
                          PassInlineDefFun(), PassCompactAndOr(),
                          PassShortenSymbols()]

                pass_num = 0
                do_break = False
                for p in passes:
                    pass_ident = "pass{}_{}".format(pass_num, i)
                    pass_num += 1

                    # PassFreshVar is the only pass for now that introduces
                    # fresh variables
                    pass_creates_new_vars = isinstance(p, PassFreshVar)

                    nsubst = _substitute_terms(
                                p.subst, p.filter,
                                cmds[i], g_args.bfs, g_args.randomized,
                                '  {}'.format(p.msg()),
                                pass_creates_new_vars)
                    if nsubst:
                        succeeded = pass_ident
                        nsubst_round += nsubst
                        nterms_subst += nsubst
                    elif succeeded == pass_ident:
                        do_break = True
                        break

                if do_break:
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
        sys.exit ("[ddsmt] unable to minimize input file")

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

        aparser.add_argument ("-c", dest="cmd_cc",
                              default=None,
                              help="optional second command (for cross "\
                                   "checking)")
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
                                   "seconds longer than golden runtime. " \
                                   "dynamic: timeout is [val] seconds longer "\
                                   "than most recent successful test. "\
                                   "(default: absolute. When timeout is "\
                                   "unspecified, default is " \
                                   "1.5 * golden runtime.)")
        timeout_group = aparser.add_mutually_exclusive_group()
        timeout_group.add_argument ("--rel", action="store_true",
                              dest="timeout_relative", default=False, \
                              help="timeouts are relative to \
                                    test time of input file")
        timeout_group.add_argument ("--dyn", action="store_true",
                              dest="timeout_dynamic", default=False,
                              help="timeouts are relative to the runtime of "\
                                   "the most recent successful test")
        aparser.add_argument ("--round", dest="roundtime", metavar = "val",
                              default=None, type=float,
                              help="approximate time limit for testing "\
                                   "rounds in seconds")
        aparser.add_argument ("-v", action="count", dest="verbosity", default=0,
                              help="increase verbosity")
        aparser.add_argument ("--match-err", dest="match_err",
                              default=None,
                              help = "match string in stderr to identify "\
                                     "failing input (default: stderr output)")
        aparser.add_argument ("--match-err-cc", dest="match_err_cc",
                              default=None,
                              help = "match string to identify failing input "
                                     "for cross check command (default: "\
                                     "stderr output)")
        aparser.add_argument ("--match-out", dest="match_out",
                              default=None,
                              help = "match string in stdout to identify "\
                                     "failing input (default: stdout output)")
        aparser.add_argument ("--match-out-cc", dest="match_out_cc",
                              default=None,
                              help = "match string to identify failing input "
                                     "for cross check command (default: "\
                                     "stdout output)")
        aparser.add_argument ("--parser-test", action="store_true",
                              dest="parser_test", default=False,
                              help="run ddSMT in parser test mode "\
                                   "(parse only, does not require command "\
                                   "argument)")
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

        if not g_args.parser_test and not g_args.cmd:
            raise DDSMTException ("command missing")

        if g_args.cmd_cc:
            _log (1, "input  file:           '{}'".format(g_args.infile))
            _log (1, "output file:           '{}'".format(g_args.outfile))
            _log (1, "command:               '{}'".format(
                " ".join([str(c) for c in g_args.cmd])))
            _log (1, "command (cross check): '{}'".format(g_args.cmd_cc))
        else:
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

        if g_args.parser_test:
            _dump(g_args.outfile)
            sys.exit(0)

        shutil.copyfile(g_args.infile, g_tmpfile)  # copy input file

        shutil.copy(g_args.cmd[0], g_tmpbin)       # copy binary
        g_args.cmd[0] = g_tmpbin                   # use copy
        g_args.cmd.append(g_tmpfile)

        _log (1)
        _log (1, "starting initial run{}... ".format(
            "" if not g_args.cmd_cc else ", cross checking"))
        _log (1)

        (g_golden_exit, g_golden_out, g_golden_err) = _run(g_args.cmd, True)
        g_golden_out = g_golden_out.decode()
        g_golden_err = g_golden_err.decode()
        _log (1, "golden exit: {}".format(g_golden_exit))
        _log (1, "golden err: '{}'".format(g_golden_err))
        _log (1, "golden out: '{}'".format(g_golden_out))
        _log (1, "golden runtime: {0: .2f} seconds".format(g_golden_runtime))
        if g_args.match_out:
            _log (1, "match string (stdout): '{}'".format(g_args.match_out))
        if g_args.match_err:
            _log (1, "match string (stderr): '{}'".format(g_args.match_err))

        if g_args.cmd_cc:
            g_args.cmd_cc = g_args.cmd_cc.split()
            shutil.copy(g_args.cmd_cc[0], g_tmpbin_cc) # copy cross check binary
            g_args.cmd_cc[0] = g_tmpbin_cc             # use copy
            g_args.cmd_cc.append(g_tmpfile)
            (g_golden_exit_cc, g_golden_out_cc, g_golden_err_cc) = \
                    _run(g_args.cmd_cc, True)
            g_golden_out_cc = g_golden_out_cc.decode()
            g_golden_err_cc = g_golden_err_cc.decode()
            _log (1)
            _log (1, "golden exit (cross check): {}".format(
                g_golden_exit_cc))
            _log (1, "golden err (cross check): '{}'".format(
                g_golden_err_cc))
            _log (1, "golden out (cross check): '{}'".format(
                g_golden_out_cc))
            _log (1, "golden runtime (cross check): {0: .2f} seconds".format(
                g_golden_runtime_cc))
            if g_args.match_out_cc:
                _log (1, "match string (cross check) (stdout): "\
                         "'{}'".format(g_args.match_out_cc))
            if g_args.match_err_cc:
                _log (1, "match string (cross check) (stderr): "\
                         "'{}'".format(g_args.match_err_cc))

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
