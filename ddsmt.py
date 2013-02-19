#! /usr/bin/env python3

# TODO: attributes currently handled as string only
#       -> no manipulation of attribute values

import os
import sys
import shlex
import shutil
import time

from optparse import OptionParser
from subprocess import Popen, PIPE

from ddsmtparser import DDSMTParser, DDSMTParseException, \
        SMTConstNode, \
        KIND_ASSERT, KIND_CONST, KIND_CONSTN, KIND_ESCOPE, KIND_FSCOPE, \
        KIND_LET, KIND_SETLOGIC, KIND_EXIT

g_infile  = ""
g_outfile = ""
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_opts = object
g_golden = 0

g_smtformula = None

NONE = 0
SCOPES = 1
CMDS = 2
NODES = 3
    

class DDSMTException (Exception):

    def __init__ (self, msg):
        self.msg = msg
    
    def __str__ (self):
        return "[ddsmt] Error: {0:s}".format(self.msg)




def _cleanup():
    if os.path.exists(g_tmpfile):
        os.remove(g_tmpfile)


def _log(verbosity, msg = "", update = False):
    global g_opts
    if g_opts.verbosity >= verbosity:
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
        out = str(root if root != None else g_smtformula.scopes)
        if not filename:
            sys.stdout.write(out)
            sys.stdout.write("\n")
        else:
            with open(filename, 'w') as outfile:
                outfile.write(out)
                outfile.write("\n")
    except IOError as e:
        raise DDSMTException (str(e))


def _run ():
    global g_cmd
    try:
        start = time.time()
        sproc = Popen(g_cmd, stdout=PIPE, stderr=PIPE)

        # TODO this works from 3.3 upwards
        # (out, err) = sproc.communicate(g_opts.timeout)  # TODO use out, err
        
        # TODO disable this from 3.3. upwards
        if g_opts.timeout:
            while (sproc.poll() == None):
                if time.time() - start > g_opts.timeout:
                    sproc.kill()
                time.sleep(1)

        (out, err) = sproc.communicate()
        _log (3)
        _log (3, "solver output: " + out.decode())
        return sproc.returncode

    # TODO this works from 3.3 upwards
    #except TimeoutExpired as e:
    #    sproc.kill()
    #    (out, err) = proc.communicate()
    except OSError as e:
        raise DDSMTException ("{0:s}: {1:s}".format(str(e), g_cmd[0]))


def _test ():
    global g_cmd
    # TODO compare output if option enabled?
    return _run() == g_golden


# TODO merge with _filter_cmds?
def _filter_scopes (filter_fun = None, root = None):
    global g_smtformula
    assert (g_smtformula)
    scopes = []
    to_visit = [root if root != None else g_smtformula.scopes]
    
    while to_visit:
        cur = to_visit.pop()
        if cur.is_subst():
            continue
        if filter_fun == None or filter_fun(cur):
            scopes.append(cur)
        to_visit.extend(cur.scopes) 
    return scopes


# TODO merge with _filter_scopes?
def _filter_cmds (filter_fun = None, root = None):
    cmds = []
    scopes = _filter_scopes (lambda x: x.kind not in (KIND_ESCOPE, KIND_FSCOPE))
    to_visit = [c for cmd_list in [s.cmds for s in scopes] for c in cmd_list]

    while to_visit:
        cur = to_visit.pop()
        if cur.is_subst():
            continue
        if filter_fun == None or filter_fun(cur):
            cmds.append(cur)
    return cmds


def _filter_terms (filter_fun = None, root = None):
    nodes = []
    asserts = _filter_cmds (lambda x: x.kind == KIND_ASSERT)
    to_visit = [root if root != None else \
            c.children[0] for c in asserts if not 
                    isinstance (c.children[0].get_subst().kind, SMTConstNode)]
    while to_visit:
        cur = to_visit.pop().get_subst()
        if filter_fun == None or filter_fun(cur):
            nodes.append(cur)
        if cur.children:
            to_visit.extend(cur.children)
    #nodes.sort(key = lambda x: x.id, reverse = True)
    #print ("#### nodes " + " ".join([str(n) + " [" + str(n.id) + "]" for n in nodes]))
    return nodes


def _cpy_substs (substs):
    global g_smtformula
    assert (g_smtformula)
    assert (substs in (SCOPES, CMDS, NODES))
    if substs == SCOPES:
        return g_smtformula.subst_scopes.copy()
    elif substs == CMDS:
        return g_smtformula.subst_cmds.copy()
    return g_smtformula.subst_nodes.copy()


#def _substitute_item (item, subst_fun, substs):
#    global g_smtformula
#    assert (g_smtformula)
#    assert (substs in (SCOPES, CMDS, NODES))
#    if substs == SCOPES:
#        g_smtformula.subst_scopes[item.id] = subst_fun(item)
#    elif substs == CMDS:
#        g_smtformula.subst_cmds[item.id] = subst_fun(item)
#    else:
#        g_smtformula.subst_nodes[item.id] = subst_fun(item)


def _reset_substitution (cpy_substs, substs):
    global g_smtformula
    assert (g_smtformula)
    assert (substs in (SCOPES, CMDS, NODES))
    if substs == SCOPES:
        g_smtformula.subst_scopes = cpy_substs
    elif substs == CMDS:
        g_smtformula.subst_cmds = cpy_substs
    else:
        g_smtformula.subst_nodes = cpy_substs


def _substitute (subst_fun, substs, superset):
    global g_smtformula
    assert (g_smtformula)
    assert (substs in (SCOPES, CMDS, NODES))

    nsubst_total = 0
    gran = len(superset)

    while gran > 0:
        subsets = [superset[s:s+gran] for s in range (0, len(superset), gran)]
        for subset in subsets:
            nsubst = 0
            cpy_substs = _cpy_substs (substs)

            for item in subset:
                # TODO maybe we have to handle this differently later on 
                # (in case that exps are substituted by exps rather than consts 
                # and vars)
                if not item.is_subst():
                    item.subst (subst_fun(item))
#                    _substitute_item (item, subst_fun, substs)
                    nsubst += 1
            if nsubst == 0:
                continue
            
            _dump (g_tmpfile)
           
            if _test():
                _dump (g_outfile)
                nsubst_total += nsubst
                _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
                         "substituted: {2:d}".format(
                              gran, len(subsets), nsubst), True)
            else:
                _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
                         "substituted: 0".format(gran, len(subsets)), True)
                _reset_substitution (cpy_substs, substs)

        gran = gran // 2

    return nsubst_total

                    
def _substitute_scopes ():
    global g_smtformula
    assert (g_smtformula)

    _log (2)
    _log (2, "substitute SCOPES:")

    nsubst_total = 0
    level = 1
    while True:
        scopes = _filter_scopes (lambda x: x.level == level and 
                                     x.kind not in (KIND_ESCOPE, KIND_FSCOPE))
        if not scopes:
            break
        nsubst_total += _substitute (lambda x: None, SCOPES, scopes)
        level += 1
        
    _log (2, "  > {0:d} scope(s) substituted in total".format(nsubst_total))
    return nsubst_total

        
def _substitute_cmds ():
    global g_smtformula
    assert (g_smtformula)

    _log (2)
    _log (2, "substitute COMMANDS:")

    nsubst_total = _substitute (lambda x: None, CMDS, 
            _filter_cmds (lambda x: x.kind not in (KIND_SETLOGIC, KIND_EXIT)))

    #nsubst_total = 0
    #cmds = _filter_cmds (lambda x: x.kind not in (KIND_SETLOGIC, KIND_EXIT))
    #gran = len(cmds)

    #while gran > 0:
    #    subsets = [cmds[s:s+gran] for s in range (0, len(cmds), gran)]
    #    for subset in subsets:
    #        cpy_subst_cmds = g_smtformula.subst_cmds.copy()
    #        nsubst = 0
    #        for cmd in subset:
    #            if cmd.get_subst() != None:
    #                g_smtformula.subst_cmds[cmd.id] = None
    #                nsubst += 1
    #        if nsubst == 0:
    #            continue

    #        _dump (g_tmpfile)
    #        if _test():
    #            _dump (g_outfile)
    #            nsubst_total += nsubst
    #            _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
    #                     "substituted: {2:d}".format(
    #                         gran, len(subsets), nsubst))
    #        else:
    #            _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
    #                     "substituted: 0".format(gran, len(subsets)))
    #            g_smtformula.subst_cmds = cpy_subst_cmds
    #    gran = gran // 2

    _log (2, "  > {0:d} command(s) substituted in total".format(nsubst_total))
    return nsubst_total


def _substitute_terms (subst_fun, filter_fun, cmds = None, msg = None):
    _log (2)
    _log (2, msg if msg != None else "substitute TERMS:")

    nsubst_total = 0
    #terms = []
    cmds = cmds if cmds else _filter_cmds (lambda x: x.kind == KIND_ASSERT)

    for cmd in cmds:
    #    terms.extend(_filter_terms(filter_fun, cmd.children[0]))
        assert (len(cmd.children) == 1)
        nsubst_total += _substitute (subst_fun, NODES,
            _filter_terms (filter_fun, cmd.children[0]))
    #nsubst_total += _substitute (subst_fun, NODES, terms)

    _log (2, "  > {0:d} term(s) substituted in total".format(nsubst_total))
    return nsubst_total


def _substitute_lets (cmds = None):
    _log (2)
    _log (2, "substitute LET nodes (by children term)")

    nsubst_total = 0 
    cmds = cmds if cmds else _filter_cmds (lambda x: x.kind == KIND_ASSERT)

    for cmd in cmds:
        assert (len(cmd.children) == 1)
        nsubst_total += _substitute (lambda x: x.children[-1], NODES,
                _filter_terms (lambda x: x.kind == KIND_LET))

    _log (2, "  > {0:d} let(s) substituted in total".format(nsubst_total))
    return nsubst_total

    #cmds = cmds if cmds else _filter_cmds (lambda x: x.kind == KIND_ASSERT)
    #for cmd in cmds:
    #    assert (cmd.kind == KIND_ASSERT)
    #    # search for 'top' lets
    #    to_visit = [cmd.children[0]]
    #    lets = []
    #    while to_visit:
    #        cur = to_visit.pop().get_subst()
    #        if cur.kind == KIND_LET:
    #            lets.append(cur)
    #        else:
    #           to_visit.extend(cur.children)
    #    # try to substitute lets (with all their variable bindings substituted
    #    # by constants) by their terms
    #    for let in lets:
    #        to_visit = [let]
    #        all_subst = True
    #        for b in let.children[0:-1]:  # var bindings
    #            if not b.is_subst():
    #                all_subst = False
    #                break
    #        if all_subst:
    #            # TODO




    

def ddsmt_main ():
    global g_tmpfile, g_outfile

    rounds = 0
    nsubst_total = 0
    nsubst = 1
    
    while nsubst:
        rounds += 1
        nsubst = 0

        ## debug
        #to_visit = [g_smtformula.scopes]
        #while to_visit:
        #    scope = to_visit.pop()
        #    print ("scope: " + str(scope.level) + 
        #           " kind: " + str(scope.kind) + 
        #           " vars: " + " ".join([str(f) for f in scope.funs]))
        #    if scope.prev:
        #        print ("  prev: " + str(scope.prev.level) + 
        #                " kind: " + str(scope.prev.kind) + 
        #                " vars: " + " ".join([str(f) for f in scope.prev.funs]))
        #    to_visit.extend(scope.scopes)

        #scopes = [g_smtformula.scopes]
        #while scopes:
        #    scope = scopes.pop()
        #    for sort in scope.sorts:
        #        print ("level " + str(scope.level) + ": " + str(sort))
        #        #if not scope.level == 0:
        #        #    print ("    prev: " + str(scope.prev.level) + ": " + str(scope.prev)) 
        #    scopes.extend(scope.scopes)
        ## end debug


        #_dump (g_outfile)  # TODO debug
        #nsubst += _substitute_scopes ()

        #nsubst += _substitute_cmds ()

        cmds = _filter_cmds (lambda x: x.kind == KIND_ASSERT)
        #_dump () # debug
        #print ("bv " + " -- ".join(str(t) + " [" + str(t.sort) + "]" for t in _filter_terms (lambda x: x.sort.is_bv_sort())))
        if g_smtformula.is_bv_logic:
            nsubst += _substitute_terms (
                    lambda x: g_smtformula.bvZeroConstNode(x.sort),
                    lambda x: 
                       x.sort and x.sort.is_bv_sort() and not x.is_bv_const(),
                    cmds,
                    "substitute BV TERMS with '0'")
        
        # TODO substitute Int, Real

        nsubst += _substitute_lets (cmds)
        

        #nsubst += _substitute_terms (
        #        lambda x: g_smtformula.boolConstNode("false"), 
        #        lambda x: x.sort == g_smtformula.sortNode("Bool"), 
        #        "substitute Boolean TERMS with 'false'")
        #nsubst += _substitute_terms (
        #        lambda x: g_smtformula.boolConstNode("true"), 
        #        lambda x: x.sort == g_smtformula.sortNode("Bool"), 
        #        "substitute Boolean TERMS with 'true'")

        nsubst_total += nsubst

    _log (2)
    _log (2, "rounds total: {}".format(rounds))
    _log (2, "substs total: {}".format(nsubst_total))
    # TODO log total reduction in %

    if nsubst_total == 0:
        sys.exit ("[ddsmt] unable to reduce input file")


if __name__ == "__main__":
    try:
        usage = "%prog [options] <infile> <outfile> \"<cmd> <cmd_options>\""
        oparser = OptionParser (usage)
        oparser.add_option ("-t", dest="timeout", metavar="val",
                            default=None, type="int",
                            help="timeout for test runs in seconds "\
                                 "(default: none)")
        oparser.add_option ("-v", action="count", dest="verbosity", default=0,
                            help="increase verbosity")
        # TODO add options here
        (g_opts, args) = oparser.parse_args ()

        #if len (args) != 3: TODO disabled for debugging
        #    oparser.error ("invalid number of arguments")

        g_infile = args[0]
        g_outfile = args[1]
        g_cmd = shlex.split(args[2])

        if not os.path.exists(g_infile):
            raise DDSMTException ("given input file does not exist")
        #if os.path.exists(g_outfile):
        #    raise DDSMTException ("given output file does already exist")

        _log (1, "input  file: '{0:s}'".format(g_infile))
        _log (1, "output file: '{0:s}'".format(g_outfile))
        _log (1, "command:     '{0:s}'".format(args[2]))

        # set recursion limit for pyparsing (default of 1000 is not enough)
        sys.setrecursionlimit(10000)

        parser = DDSMTParser()
        g_smtformula = parser.parse(g_infile)

        print (">>>>> parser done")
        shutil.copyfile(g_infile, g_tmpfile)
        g_cmd.append(g_tmpfile)
        g_golden = _run()
        
        _log (1)
        _log (1, "golden exit: {0:d}".format(g_golden))

        ddsmt_main ()
        
        #_cleanup()
        sys.exit(0)
    except (DDSMTParseException, DDSMTException) as e:
        #_cleanup()
        sys.exit(str(e))
    except KeyboardInterrupt as e:
        #_cleanup()
        sys.exit("[ddsmt] {0:s}".format(str(e)))
