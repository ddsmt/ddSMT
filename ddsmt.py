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
        KIND_ASSERT, KIND_CONST, KIND_CONSTN, KIND_CONSTD, \
        KIND_ESCOPE, KIND_FSCOPE, KIND_LSCOPE, \
        KIND_LET, KIND_SETLOGIC, KIND_EXIT

g_infile  = ""
g_outfile = ""
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_opts = object
g_golden = 0

g_ntests = 0

g_smtformula = None



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
    global g_cmd, g_ntests
    # TODO compare output if option enabled?
    g_ntests += 1
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
    scopes = _filter_scopes (
            lambda x: x.kind not in (KIND_ESCOPE, KIND_FSCOPE, KIND_LSCOPE))
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
                    c.children[0].get_subst().is_const()]
    while to_visit:
        cur = to_visit.pop().get_subst()
        if filter_fun == None or filter_fun(cur):
            nodes.append(cur)
        if cur.children:
            to_visit.extend(cur.children)
    #nodes.sort(key = lambda x: x.id, reverse = True)
    #print ("#### nodes " + " ".join([str(n) + " [" + str(n.id) + "]" for n in nodes]))
    return nodes


def _substitute (subst_fun, substlist, superset):
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

            for item in subset:
                # TODO maybe we have to handle this differently later on 
                # (in case that exps are substituted by exps rather than consts 
                # and vars)
                if not item.is_subst():
                    item.subst (subst_fun(item))
                    nsubst += 1
            if nsubst == 0:
                continue
            
            _dump (g_tmpfile)
           
            if _test():
                _dump (g_outfile)
                nsubst_total += nsubst
                _log (2, "  granularity: {}, subsets: {}, substituted: {}" \
                         "".format(gran, len(subsets), nsubst), True)
                del (cpy_subsets[cpy_subsets.index(subset)])
            else:
                _log (2, "  granularity: {}, subsets: {}, substituted: 0" \
                         "".format(gran, len(subsets)), True)
                substlist.substs = cpy_substs
        superset = [s for subset in cpy_subsets for s in subset]
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
        scopes = _filter_scopes (
                lambda x: x.level == level and 
                          x.kind not in (KIND_ESCOPE, KIND_FSCOPE, KIND_LSCOPE))
        if not scopes:
            break

        nsubst_total += _substitute (
                lambda x: None, g_smtformula.subst_scopes, scopes)
        level += 1
        
    _log (2, "  >> {0:d} scope(s) substituted in total".format(nsubst_total))
    return nsubst_total

        
def _substitute_cmds (filter_fun = None):
    global g_smtformula
    assert (g_smtformula)

    _log (2)
    _log (2, "substitute COMMANDS:")

    filter_fun = filter_fun if filter_fun else \
            lambda x: x.kind not in (KIND_SETLOGIC, KIND_EXIT)
    nsubst_total = _substitute (lambda x: None, g_smtformula.subst_cmds,
            _filter_cmds(filter_fun))
            #_filter_cmds (lambda x: x.kind not in (KIND_SETLOGIC, KIND_EXIT)))

    _log (2, "  >> {0:d} command(s) substituted in total".format(nsubst_total))
    return nsubst_total


def _substitute_terms (subst_fun, filter_fun, cmds = None, msg = None):
    _log (2)
    _log (2, msg if msg != None else "substitute TERMS:")

    nsubst_total = 0
    cmds = cmds if cmds else _filter_cmds (lambda x: x.kind == KIND_ASSERT)

    for cmd in cmds:
        assert (len(cmd.children) == 1)
        nsubst_total += _substitute (subst_fun, g_smtformula.subst_nodes,
            _filter_terms (filter_fun, cmd.children[0]))

    _log (2, "  >> {0:d} term(s) substituted in total".format(nsubst_total))
    return nsubst_total



def ddsmt_main ():
    global g_tmpfile, g_outfile

    nrounds = 0
    nsubst_total = 0
    nsubst = 1
    
    while nsubst:
        nrounds += 1
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


        nsubst += _substitute_scopes ()
        
        # initially, eliminate asserts only
        # -> prevent lots of likely unsuccessful testing when eliminating
        #    e.g. declare-funs previous to term substitution
        if nrounds > 1:
           nsubst += _substitute_cmds ()
        else:
           nsubst += _substitute_cmds (lambda x: x.kind == KIND_ASSERT)

        cmds = _filter_cmds (lambda x: x.kind == KIND_ASSERT)

        #_dump () # debug
        #print ("bv " + " -- ".join(str(t) + " [" + str(t.sort) + "]" for t in _filter_terms (lambda x: x.sort.is_bv_sort())))

        if g_smtformula.is_bv_logic():
            nsubst += _substitute_terms (
                    lambda x: g_smtformula.bvZeroConstNode(x.sort),
                    lambda x: 
                       x.sort and x.sort.is_bv_sort() and not x.is_const(),
                    cmds, "substitute BV TERMS with '0'")
        
        if g_smtformula.is_int_logic():
            nsubst += _substitute_terms (
                    lambda x: g_smtformula.zeroConstNode(KIND_CONSTN),
                    lambda x: x.sort == g_smtformula.sortNode("Int") \
                              and not x.is_const(),
                    cmds, "substitute Int Terms with '0'")

        if g_smtformula.is_real_logic():
            nsubst += _substitute_terms (
                    lambda x: g_smtformula.zeroConstNode(KIND_CONSTD),
                    lambda x: x.sort == g_smtformula.sortNode("Real") \
                              and not x.is_const(),
                    cmds, "substitute Real Terms with '0'")

        nsubst += _substitute_terms (
                lambda x: x.children[-1],
                lambda x: x.kind == KIND_LET,
                cmds, "substitute LETs with child term")

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
    _log (2, "rounds total: {}".format(nrounds))
    _log (2, "tests  total: {}".format(g_ntests))
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
        oparser.add_option ("-o", action="store_true", dest="optimize", 
                            default=False, 
                            help="remove assertions and debug code") # TODO
        (g_opts, args) = oparser.parse_args ()

        #if len (args) != 3: TODO disabled for debugging
        #    oparser.error ("invalid number of arguments")

        if g_opts.optimize:
            sys.argv.remove("-o")
            os.execl(sys.executable, sys.executable, '-O', *sys.argv)
        else:
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
            sys.setrecursionlimit(16000)

            parser = DDSMTParser()
            g_smtformula = parser.parse(g_infile)

            print (">>>>> parser done")
            shutil.copyfile(g_infile, g_tmpfile)
            g_cmd.append(g_tmpfile)
            g_golden = _run()
            
            _log (1)
            _log (1, "golden exit: {0:d}".format(g_golden))

            ddsmt_main ()
            
            _cleanup()
            sys.exit(0)
    except (DDSMTParseException, DDSMTException) as e:
        _cleanup()
        sys.exit(str(e))
    except KeyboardInterrupt as e:
        _cleanup()
        sys.exit("[ddsmt] {0:s}".format(str(e)))
