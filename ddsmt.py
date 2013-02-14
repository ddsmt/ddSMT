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
                        KIND_CONST, KIND_ESCOPE, KIND_FSCOPE, \
                        KIND_ASSERT, KIND_SETLOGIC, KIND_EXIT

g_infile  = ""
g_outfile = ""
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_opts = object
g_golden = 0

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


def _dump (filename, root = None):
    global g_smtformula
    assert (g_smtformula)
    try:
        with open(filename, 'w') as outfile:
            outfile.write(str(root if root != None else g_smtformula.scopes))
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
        if g_smtformula.get_subst(cur) == None:
            continue
        if filter_fun == None or filter_fun(cur):
            scopes.append(cur)
        to_visit.extend(cur.scopes) 
    return scopes


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
        gran = len(scopes)

        if not scopes:
            break

        _log (2, "  level: {0:d}".format(level))

        while gran > 0:
            subsets = [scopes[s:s+gran] for s in range (0, len(scopes), gran)]
            for subset in subsets:
                cpy_subst_scopes = g_smtformula.subst_scopes.copy()
                nsubst = 0
                for scope in subset:
                    if g_smtformula.get_subst(scope) != None:
                        g_smtformula.subst_scopes[scope.id] = None
                        nsubst += 1
                if nsubst == 0:
                    continue

                _dump (g_tmpfile)
                if _test():
                    _dump (g_outfile)
                    nsubst_total += nsubst
                    _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
                             "substituted: {2:d}".format(
                                 gran, len(subsets), nsubst))
                else:
                    _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
                             "substituted: 0".format(gran, len(subsets)))
                    g_smtformula.subst_scopes = cpy_subst_scopes
            gran = gran // 2
        level += 1
        
    _log (2, "  > {0:d} scope(s) substituted in total".format(nsubst_total))
    return nsubst_total

        
# TODO merge with _filter_scopes?
def _filter_cmds (filter_fun = None, root = None):
    cmds = []
    scopes = _filter_scopes (lambda x: x.kind not in (KIND_ESCOPE, KIND_FSCOPE))
    to_visit = [c for cmd_list in [s.cmds for s in scopes] for c in cmd_list]

    while to_visit:
        cur = to_visit.pop()
        if g_smtformula.get_subst(cur) == None:
            continue
        if filter_fun == None or filter_fun(cur):
            cmds.append(cur)
    return cmds


def _substitute_cmds ():
    global g_smtformula
    assert (g_smtformula)

    _log (2)
    _log (2, "substitute COMMANDS:")

    nsubst_total = 0
    cmds = _filter_cmds (lambda x: x.kind not in (KIND_SETLOGIC, KIND_EXIT))
    gran = len(cmds)

    while gran > 0:
        subsets = [cmds[s:s+gran] for s in range (0, len(cmds), gran)]
        for subset in subsets:
            cpy_subst_cmds = g_smtformula.subst_cmds.copy()
            nsubst = 0
            for cmd in subset:
                if g_smtformula.get_subst(cmd) != None:
                    g_smtformula.subst_cmds[cmd.id] = None
                    nsubst += 1
            if nsubst == 0:
                continue

            _dump (g_tmpfile)
            if _test():
                _dump (g_outfile)
                nsubst_total += nsubst
                _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
                         "substituted: {2:d}".format(
                             gran, len(subsets), nsubst))
            else:
                _log (2, "  granularity: {0:d}, subsets: {1:d}, " \
                         "substituted: 0".format(gran, len(subsets)))
                g_smtformula.subst_cmds = cpy_subst_cmds
        gran = gran // 2

    _log (2, "  > {0:d} command(s) substituted in total".format(nsubst_total))
    return nsubst_total
    

def _filter_terms (filter_fun = None, root = None):
    nodes = []
    asserts = _filter_cmds (lambda x: x.kind == KIND_ASSERT)
    to_visit = root if root != None else \
            [c.children[0] for c in asserts if not 
                    g_smtformula.get_subst(c.children[0]).kind == KIND_CONST]
    while to_visit:
        cur = g_smtformula.get_subst(to_visit.pop())
        if filter_fun == None or filter_fun(cur):
            nodes.append(cur)
        if cur.children:
            to_visit.extend(cur.children)

    return nodes





#def _substitute_terms (subst_fun, filter_fun, msg = None):
#
#    _log (2)
#    _log (2, msg if msg != None else "substitute TERMS:")
#
#    nsubst_total = 0



def ddsmt_main ():
    global g_tmpfile, g_outfile

    rounds = 0
    nsubst_total = 0
    nsubst = 1
    
    while nsubst:
        rounds += 1
        nsubst = 0

        scopes = [g_smtformula.scopes]
        while scopes:
            scope = scopes.pop()
            for sort in scope.sorts:
                print ("level " + str(scope.level) + ": " + str(sort))
            scopes.extend(scope.scopes)


        _dump (g_outfile)
        nsubst += _substitute_scopes ()

        nsubst += _substitute_cmds ()
        print (_filter_terms ())


        nsubst_total += nsubst

    _log (2)
    _log (2, "rounds total: {0:d}".format(rounds))
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
        sys.setrecursionlimit(4000)

        parser = DDSMTParser()
        g_smtformula = parser.parse(g_infile)

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
