#! /usr/bin/env python3

# TODO: attributes currently handled as string only
#       -> no manipulation of attribute values

import os
import sys
import shlex
import shutil
import time

from pyparsing import *
from optparse import OptionParser
from subprocess import Popen, PIPE

KIND_ANNOTN = "!"
KIND_EXISTS = "exists"
KIND_FORALL = "forall"
KIND_LET    = "let"

KIND_ANNFUN = "annotated fun symbol"
KIND_FUN    = "var or fun symbol"
KIND_VARB   = "var binding"

KIND_SCOPE  = "scope"
KIND_ESCOPE = "exists scope"
KIND_FSCOPE = "forall scope"

KIND_SORT   = "sort"
KIND_ASORT  = "array sort"
KIND_BVSORT = "bv sort"

KIND_CONST  = "const bool"
KIND_CONSTB = "const bin"
KIND_CONSTD = "const dec"
KIND_CONSTN = "const num"
KIND_CONSTH = "const hex"
KIND_CONSTS = "const string"

KIND_AND    = "and"
KIND_IMPL   = "implies"
KIND_ITE    = "ite"
KIND_NOT    = "not"
KIND_OR     = "or"
KIND_XOR    = "xor"

KIND_EQ     = "="
KIND_DIST   = "distinct"
KIND_LE     = "<="
KIND_LT     = "<"
KIND_GE     = ">="
KIND_GT     = ">"

KIND_ABS    = "abs"
KIND_ADD    = "+"
KIND_DIV    = "div"
KIND_MOD    = "mod"
KIND_MUL    = "*"
KIND_NEG    = "neg"
KIND_SUB    = "-"
KIND_RDIV   = "/"

KIND_ISI    = "is_int"
KIND_TOI    = "to_int"
KIND_TOR    = "to_real"

KIND_CONC   = "concat"
KIND_EXTR   = "extract"
KIND_REP    = "repeat"
KIND_ROL    = "rotate-left"
KIND_ROR    = "rotate-right"
KIND_SEXT   = "sign-extend"
KIND_ZEXT   = "zero-extend"

KIND_BVADD  = "bvadd"
KIND_BVAND  = "bvand"
KIND_BVASHR = "bvashr"
KIND_BVCOMP = "bvcomp"
KIND_BVLSHR = "bvlshr"
KIND_BVMUL  = "bvmul"
KIND_BVNAND = "bvnand"
KIND_BVNEG  = "bvneg"
KIND_BVNOR  = "bvnor"
KIND_BVNOT  = "bvnot"
KIND_BVOR   = "bvor"
KIND_BVSDIV = "bvsdiv"
KIND_BVSGE  = "bvsge"
KIND_BVSGT  = "bvsgt"
KIND_BVSHL  = "bvshl"
KIND_BVSLE  = "bvsle"
KIND_BVSLT  = "bvslt"
KIND_BVSMOD = "bvsmod"
KIND_BVSREM = "bvsrem"
KIND_BVSUB  = "bvsub"
KIND_BVUGE  = "bvuge"
KIND_BVUGT  = "bvugt"
KIND_BVUDIV = "bvudiv"
KIND_BVULE  = "bvule"
KIND_BVULT  = "bvult"
KIND_BVUREM = "bvurem"
KIND_BVXNOR = "bvxnor"
KIND_BVXOR  = "bvxor"

KIND_SELECT = "select"
KIND_STORE  = "store"

KIND_ASSERT    = "assert"
KIND_CHECKSAT  = "check-sat"
KIND_DECLFUN   = "declare-fun"
KIND_DEFFUN    = "define-fun"
KIND_DECLSORT  = "declare-sort"
KIND_DEFSORT   = "define-sort"
KIND_GETASSERT = "get-assertions"
KIND_GETASSIGN = "get-assignment"
KIND_GETPROOF  = "get-proof"
KIND_GETUCORE  = "get-unsat-core"
KIND_GETVALUE  = "get-value"
KIND_GETOPT    = "get-option"
KIND_GETINFO   = "get-info"
KIND_EXIT      = "exit"
KIND_PUSH      = "push"
KIND_POP       = "pop"
KIND_SETLOGIC  = "set-logic"
KIND_SETINFO   = "set-info"
KIND_SETOPT    = "set-option"


g_const_kinds = \
    [ KIND_CONST, KIND_CONSTB, KIND_CONSTD, KIND_CONSTN, KIND_CONSTH, 
      KIND_CONSTS ]

g_fun_kinds   = \
    [ KIND_ABS,    KIND_ADD,    KIND_AND,    KIND_BVADD,  KIND_BVAND,
      KIND_BVASHR, KIND_BVCOMP, KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, 
      KIND_BVNEG,  KIND_BVNOR,  KIND_BVNOT,  KIND_BVOR,   KIND_BVSDIV,
      KIND_BVSGE,  KIND_BVSGT,  KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT, 
      KIND_BVSMOD, KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,
      KIND_BVUDIV, KIND_BVULE,  KIND_BVULT,  KIND_BVUREM, KIND_BVXNOR, 
      KIND_BVXOR,  KIND_CONC,   KIND_DIST,   KIND_DIV,    KIND_EQ,
      KIND_EXTR,   KIND_GE,     KIND_GT,     KIND_IMPL,   KIND_ISI,
      KIND_ITE,    KIND_LE,     KIND_LT,     KIND_MOD,    KIND_MUL,
      KIND_NEG,    KIND_NOT,    KIND_OR,     KIND_RDIV,   KIND_REP,
      KIND_ROL,    KIND_ROR,    KIND_SELECT, KIND_SEXT,   KIND_STORE,
      KIND_SUB,    KIND_TOI,    KIND_TOR,    KIND_XOR,    KIND_ZEXT]

g_bv_fun_kinds = \
    [ 
      KIND_CONC,   KIND_EXTR,   KIND_REP,    KIND_ROL,    KIND_ROR,
      KIND_SEXT,   KIND_ZEXT,   KIND_BVADD,  KIND_BVAND,  KIND_BVASHR, 
      KIND_BVCOMP, KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, KIND_BVNEG,  
      KIND_BVNOR,  KIND_BVNOT,  KIND_BVOR,   KIND_BVSDIV, KIND_BVSGE,
      KIND_BVSGT,  KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT,  KIND_BVSMOD, 
      KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,  KIND_BVUDIV,
      KIND_BVULE,  KIND_BVULT,  KIND_BVUREM, KIND_BVXNOR, KIND_BVXOR ]

g_arr_fun_kinds = \
    [ KIND_SELECT, KIND_STORE ]

g_cmd_kinds   = \
    [ KIND_ASSERT,   KIND_CHECKSAT, KIND_DECLFUN,   KIND_DEFFUN, 
      KIND_DECLSORT, KIND_DEFSORT,  KIND_GETASSERT, KIND_GETASSIGN, 
      KIND_GETPROOF, KIND_GETUCORE, KIND_GETVALUE,  KIND_GETOPT,
      KIND_GETINFO,  KIND_EXIT,     KIND_PUSH,      KIND_POP,
      KIND_SETLOGIC, KIND_SETINFO,  KIND_SETOPT ]


g_infile  = ""
g_outfile = ""
g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_opts = object
g_golden = 0

g_logic = ""
g_is_bv_logic = False

g_scopes = None
g_cur_scope = g_scopes

g_subst_scopes = {}
g_subst_cmds = {}
g_subst_nodes = {}


class DDSMTException (Exception):

    def __init__ (self, msg):
        self.msg = msg
    
    def __str__ (self):
        return "[ddsmt] Error: {0:s}".format(self.msg)


class DDSMTParseException (Exception):

    def __init__ (self, line, col, msg):
        self.line = line
        self.col = col
        self.msg = msg
    
    def __str__ (self):
        return "[ddsmt] {0:s}:{1:d}:{2:d}: {3:s}".format(
                g_infile.strip().split("/")[-1], self.line, self.col, self.msg)


class SMTNode:

    g_id = 0

    def __init__ (self, kind, sort = None, children = []):
        assert (isinstance (children, list))
        SMTNode.g_id += 1
        self.id = SMTNode.g_id
        self.kind = kind
        self.sort = sort
        if (kind == KIND_LET):
            assert (len(children) == 2)
            self.children = children[0]
            self.children.extend([children[1]])
        else:
            self.children = children

    def __str__ (self):
        if self.kind == KIND_LET:
            assert (self.children)
            return "({0:s} ({1:s}) {2:s})".format(
                    self.kind,
                    " ".join([str(c) for c in self.children[0:-1]]),
                    str(self.children[-1]))
        return "({0:s}{1:s})".format(self.kind, self.children2str())

    def children2str(self):
        for c in self.children: assert (not isinstance(c, list)) # TODO DEBUG
        return " " + " ".join([str(c) for c in self.children]) \
                            if self.children else ""
        #res = [""]
        #for c in self.children:
        #    if isinstance(c, list):
        #        res.append("({0:s})".format(
        #            " ".join([str(cc) for cc in c])))
        #    else:
        #        res.append(str(c))
        #return " ".join( [s for s in res]) if len(self.children) > 0 else ""

    def get_subst (self):
        global g_subst_nodes
        return g_subst_nodes[self.id] if self.id in g_subst_nodes else self


class SMTFunNode (SMTNode):

    def __init__ (self, name, kind, sort, sorts = [], indices = []):
        assert (kind in (KIND_FUN, KIND_ANNFUN))
        assert (isinstance (sorts, list))
        assert (isinstance (indices, list))
        super().__init__(kind, sort)
        self.name = name
        self.sorts = sorts      # signature sorts
        self.indices = [int(s.value) for s in indices]

    def __str__ (self):
        if self.indices == []:
            return self.name
        return "(_ {0:s} {1:s})".format(
                self.name, " ".join([str(s) for s in self.indices]))

    @classmethod
    def find_fun (cls, name, scope):
        while scope:
            if name in scope.funs:
                return scope.funs[name]
            scope = scope.prev
        return None

    @classmethod
    def delete_fun (cls, name, scope):
        while scope:
            if name in scope.funs:
                assert (isinstance (scope.funs[name], SMTFunNode))
                del scope.funs[name]
            scope = scope.prev

    @classmethod
    def add_fun (cls, name, kind, sort, sorts, indices, scope):
        assert (cls.find_fun (name, scope) == None)
        scope.funs[name] = SMTFunNode (name, kind, sort, sorts, indices)
        return scope.funs[name]

    @classmethod
    def funNode (cls, name, kind, sort, sorts = [], indices = [], scope = None):
        global g_scopes
        scope = scope if scope != None else g_scopes
        fun = cls.find_fun (name, scope)
        if not fun:
            return cls.add_fun (name, kind, sort, sorts, indices, scope)
        return fun


class SMTAnFunNode (SMTNode):

    def __init__ (self, attribs, kind, sort, children):
        assert (len(children) == 1)
        assert (kind == KIND_ANNOTN)
        super().__init__(kind, sort, children)
        self.attribs = attribs

    def __str__ (self):
         return "(! {0:s} {1:s})".format(
                    str(self.children[0]), 
                    " ".join([str(a) for a in self.attribs]))


class SMTFunAppNode (SMTNode):        

    def __init__ (self, fun, kind, sort, children):
        global g_fun_kinds
        assert (isinstance(fun, SMTFunNode))
        assert (len(children) >= 1)
        super().__init__(kind, sort, children)
        self.fun = fun

    def __str__ (self):
        return "({0:s}{1:s})".format(str(self.fun), self.children2str())


class SMTVarBindNode (SMTNode):

    def __init__ (self, var, children):
        assert (isinstance (var, SMTFunNode))
        assert (isinstance (children, list))
        assert (len(children) == 1)
        super().__init__(KIND_VARB, children[0].sort, children)
        self.var = var

    def __str__ (self):
        assert (len(self.children) == 1)
        return "({0:s} {1:s})".format(self.var.name, str(self.children[0]))

        
class SMTSortNode (SMTNode):

    def __init__ (self, name, nparams = 0, kind = KIND_SORT):
        super().__init__(kind)
        self.name = name
        self.nparams = nparams
    
    def __str__ (self):
        return self.name

    def is_bv_sort (self):
        return self.kind == KIND_BV_SORT

    def is_arr_sort (self):
        return self.kind == KIND_ASORT

    @classmethod
    def find_sort (cls, name, scope):
        while scope:
            if name in scope.sorts:
                assert (isinstance (scope.sorts[name], SMTSortNode))
                return scope.sorts[name]
            scope = scope.prev
        return None

    @classmethod
    def delete_sort (cls, name, scope):
        while scope:
            if name in scope.sorts:
                assert (isinstance (scope.sorts[name], SMTSortNode))
                del scope.sorts[name]
            scope = scope.prev

    @classmethod
    def add_sort (cls, name, scope, nparams):
        assert (cls.find_sort (name, scope) == None)
        scope.sorts[name] = SMTSortNode (name, nparams)
        return scope.sorts[name]
    
    @classmethod
    def sortNode (cls, name, scope = None, nparams = 0):
        global g_scopes
        scope = scope if scope != None else g_scopes
        sort = cls.find_sort(name, scope)
        if not sort:
            # add sort to scope level 0 (otherwise it would have been declared
            # or defined already and thus be found previously)
            return cls.add_sort (name, g_scopes, nparams)
        return sort

class SMTArraySortNode (SMTSortNode):

    def __init__ (self, index_sort, elem_sort):
        super().__init__(
                SMTArraySortNode.name(index_sort, elem_sort), 2, KIND_ASORT)
        self.index_sort = index_sort
        self.elem_sort = elem_sort

    @staticmethod
    def name (index_sort, elem_sort):
        return "(Array {0:s} {1:s})".format(str(index_sort), str(elem_sort))

    @classmethod
    def add_sort (cls, index_sort, elem_sort, scope):
        name = SMTArraySortNode.name(index_sort, elem_sort)
        assert (super().find_sort(name, scope) == None)
        scope.sorts[name] = SMTArraySortNode (index_sort, elem_sort)
        return scope.sorts[name]

    @classmethod
    def sortNode (cls, index_sort, elem_sort, scope = None):
        global g_scopes
        scope = scope if scope != None else g_scopes
        name = SMTArraySortNode.name(index_sort, elem_sort)
        sort = super().find_sort(name, scope)
        if not sort:
            # add sort to scope level 0 (otherwise it would have been declared
            # or defined already and thus be found previously)
            return cls.add_sort (index_sort, elem_sort, g_scopes)
        return sort
        

class SMTBVSortNode (SMTSortNode):

    def __init__ (self, bw):
        super().__init__(SMTBVSortNode.name(bw), 0, KIND_BVSORT)
        self.bw = bw

    @staticmethod
    def name (bw):
        return "(_ BitVec {0:d})".format(bw)

    @classmethod
    def add_sort (cls, bw):
        global g_scopes
        name = SMTBVSortNode.name(bw)
        assert (super().find_sort(name, g_scopes) == None)
        g_scopes.sorts[name] = SMTBVSortNode (bw)
        return g_scopes.sorts[name]

    @classmethod
    def sortNode (cls, bw):
        global g_scopes
        name = SMTBVSortNode.name(bw)
        sort = super().find_sort(name, g_scopes)
        if not sort:
            return cls.add_sort (bw)
        return sort


class SMTForallExistsNode (SMTNode):

    def __init__ (self, svars, kind, sort, children):
        assert (kind in (KIND_FORALL, KIND_EXISTS))
        assert (len(children) == 1)
        super().__init__(kind, sort, children)
        self.svars = svars

    def __str__ (self):
         return "({0:s} ({1:s}) {2:s})".format(
                 self.kind, 
                 " ".join(["({0:s} {1:s})".format(s.name, str(s.sort))
                     for s in self.svars]) if len(self.svars) > 0 else "",
                 str(self.children[0]))


class SMTConstNode (SMTNode):

    def __init__ (self, kind, sort, value = 0, original_str = "none"):
        assert (kind in g_const_kinds)                    # ^^^^ TODO debug
        super().__init__(kind, sort)
        self.value = value
        self.original_str = original_str # TODO debug

    def __str__ (self):
        #return str(self.value)
        return "{0:s}".format(self.original_str if self.original_str != "none"
                                                else str(self.value))
    #@staticmethod
    #def zero_const ():
    #    if kind == CONST:
    #        value = 
    #    if kind == CONSTN:
    #        value = 0
    #    elif kind == CONSTD:
    #        value = 0.0
    #    


    #        return SMTConstNode (kind, 


class SMTBoolConstNode (SMTConstNode):

    def __init__ (self, value):
        assert (value in ("true", "false"))
        super().__init__(KIND_CONST, SMTSortNode.sortNode ("Bool"), value)


    @staticmethod
    def true_const ():
        return self.__init__("true")

    @staticmethod
    def false_const ():
        return self.__init__("false")


class SMTBVConstNode (SMTConstNode):

    def __init__ (self, kind, sort, value = 0, bw = 1, original_str = "none"):                                                         #^^^^ TODO debug
        assert (kind in g_const_kinds)
        super().__init__(kind, sort, value)
        self.bw = bw
        self.original_str = original_str  # TODO debug

    def __str__ (self):
        assert (self.kind != KIND_CONST)
        if self.kind == KIND_CONSTH:
            #return "#x{0:s}".format(hex(self.value)[2:])
            if self.original_str != "none":
                return self.original_str
            else:
                return "#x{0:s}".format(hex(self.value)[2:]) 
        elif self.kind == KIND_CONSTB:
            return "#b{0:s}".format(bin(self.value)[2:])
        assert (self.kind == KIND_CONSTN)
        return "(_ bv{0:d} {1:d})".format(self.value, self.bw)


class SMTBoolBVConstNode (SMTBVConstNode):

    def __init__ (self, value):
        assert (value in (1, 0))
        super().__init__(KIND_CONSTN, _sortNode ("Bool"), value)

    @staticmethod
    def true_const ():
        return self.__init__(1)

    @staticmethod
    def false_const ():
        return self.__init__(0)



class SMTCmdNode:

    g_id = 0
    
    def __init__ (self, kind, children = []):
        global g_cmd_kinds, g_logic, g_is_bv_logic, g_cur_scope
        assert (isinstance (children, list))
        assert (kind in g_cmd_kinds)

        if kind == KIND_SETLOGIC:
            assert (len(children) == 1)
            g_logic = children[0]
            g_is_bv_logic = g_logic.find("BV") >= 0
        
        SMTCmdNode.g_id += 1
        self.id = SMTCmdNode.g_id
        self.kind = kind
        self.children = children
        assert (g_cur_scope != None)
        g_cur_scope.cmds.append(self)

    def __str__ (self):
        if self.get_subst() == None:
            return ""

        assert (self.kind != KIND_DECLSORT or 
                self.children[0].kind == KIND_SORT)
        
        if self.kind == KIND_DECLFUN:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            return "({0:s} {1:s} ({2:s}) {3:s})".format(
                    self.kind, 
                    fun.name,
                    " ".join([str(s) for s in fun.sorts]) if len(fun.sorts) > 0 
                                                          else "",
                    str(fun.sort))
        elif self.kind == KIND_DEFFUN:
            assert (len(self.children) == 3)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            svars = self.children[1]
            fterm = self.children[2]
            return "({0:s} {1:s} ({2:s}) {3:s} {4:s})".format(
                    self.kind,
                    fun.name,
                    " ".join(["({0:s} {1:s})".format(s.name, str(s.sort)) 
                              for s in svars]) if len(svars) > 0 else "",
                    str(fun.sort),
                    str(fterm))
        elif self.kind == KIND_DECLSORT:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTSortNode))
            sort = self.children[0]
            return "({0:s} {1:s} {2:d})".format(
                    self.kind, sort.name, sort.nparams)

        return "({0:s}{1:s})".format(self.kind, self.children2str())

    def children2str (self):
        res = [""]
        for c in self.children:
            if isinstance (c, list):
                res.append("({0:s})".format(
                    " ".join([str(cc) for cc in c])))
            else:
                res.append(str(c))
        return " ".join([s for s in res]) if self.children else ""

    def get_subst (self):
        global g_subst_cmds
        assert (self.id not in g_subst_cmds or g_subst_cmds[self.id] == None)
        return g_subst_cmds[self.id] if self.id in g_subst_cmds else self


class SMTPushCmdNode (SMTCmdNode):

    def __init__ (self, nscopes):
        global g_cur_scope
        assert (nscopes > 0)
        super().__init__(KIND_PUSH)
        self.nscopes = nscopes
        self.scope = SMTScopeNode.open_scope(nscopes)
        # Note: self.scope is the scope directly associated with this push
        #       i.e. for e.g. push 2, 2 scopes are opened and the first one
        #       is the  one associated with the resp. push command
        
    def __str__ (self):
        return "({0:s} {1:d})".format(self.kind, self.nscopes)


class SMTPopCmdNode (SMTCmdNode):

    def __init__ (self, nscopes):
        global g_cur_scope
        assert (nscopes > 0)
        super().__init__(KIND_POP)
        self.nscopes = nscopes
        SMTScopeNode.close_scope(nscopes)

    def __str__ (self):
        return "({0:s} {1:d})".format(self.kind, self.nscopes)


class SMTScopeNode:

    g_id = 0
    
    def __init__ (self, level = 0, prev = None, kind = KIND_SCOPE):
        assert (kind in (KIND_SCOPE, KIND_FSCOPE, KIND_ESCOPE))
        SMTScopeNode.g_id += 1
        self.id = SMTScopeNode.g_id
        self.level  = level
        self.prev   = prev
        self.kind   = kind
        self.scopes = []
        self.cmds   = []
        self.funs   = {}
        self.sorts  = {}

    def __str__ (self):
        res = []
        for cmd in self.cmds:
            if cmd.kind == KIND_PUSH:
                assert (len(self.scopes) > 0)
                assert (cmd.scope in self.scopes)
                assert (cmd.scope.kind not in (KIND_ESCOPE, KIND_FSCOPE))
                if cmd.scope.get_subst() == None:
                    continue
                res.append(str(cmd))
                res.append(str(cmd.scope))
            else:
                res.append(str(cmd))
        return " ".join([s for s in res if s != ""])

    def get_subst (self):
        global g_subst_scopes
        assert(self.id not in g_subst_scopes or g_subst_scopes[self.id] == None)
        return g_subst_scopes[self.id] if self.id in g_subst_scopes else self

    @staticmethod
    def open_scope (nscopes = 1, kind = KIND_SCOPE):
        global g_cur_scope
        first_scope = None
        for i in range (nscopes):
            new_scope = SMTScopeNode (g_cur_scope.level + 1, g_cur_scope, kind)
            if not first_scope:
                first_scope = new_scope
            g_cur_scope.scopes.append(new_scope)
            g_cur_scope = new_scope
        return first_scope  # scope associated with parent push cmd

    @staticmethod
    def close_scope (nscopes = 1):
        global g_cur_scope
        for i in range (nscopes):
            g_cur_scope = g_cur_scope.prev
            assert (g_cur_scope != None)


class SMTParser:

    LPAR = Suppress ('(')
    RPAR = Suppress (')')

    IDXED  = Combine ('_' + Suppress(' '))

    AS     = Keyword ("as")
    LET    = Keyword ("let")
    FORALL = Keyword ("forall")
    EXISTS = Keyword ("exists")

    TRUE   = Keyword ("true")
    FALSE  = Keyword ("false")

    PRINTSUCC = Keyword (":print-success")
    EXPANDDEF = Keyword (":expand-definitions")
    INTERMODE = Keyword (":interactive-mode")
    PRODPROOF = Keyword (":produce-proofs")
    PRODUCORE = Keyword (":produce-unsat-cores")
    PRODMODEL = Keyword (":produce-models")
    PRODASSGN = Keyword (":produce-assignments")
    ROUTCHANN = Keyword (":regular-output-channel")
    DOUTCHANN = Keyword (":diagrnostic-output-channel")
    RANDMSEED = Keyword (":random-seed")
    VERBOSITY = Keyword (":verbosity")

    ERRBEHAVR = Keyword (":error-behavior")
    NAME      = Keyword (":name")
    AUTHORS   = Keyword (":authors")
    VERSION   = Keyword (":version")
    STATUS    = Keyword (":status")
    RUNKNOWN  = Keyword (":reason-unknown")
    ALLSTAT   = Keyword (":all-statistics")

    SETLOGIC  = Keyword ("set-logic")
    SETOPT    = Keyword ("set-option")
    SETINFO   = Keyword ("set-info")
    DECLSORT  = Keyword ("declare-sort")
    DEFSORT   = Keyword ("define-sort")
    DECLFUN   = Keyword ("declare-fun")
    DEFFUN    = Keyword ("define-fun")
    PUSH      = Keyword ("push")
    POP       = Keyword ("pop")
    ASSERT    = Keyword ("assert")
    CHECKSAT  = Keyword ("check-sat")
    GETASSERT = Keyword ("get-assertions")
    GETPROOF  = Keyword ("get-proof")
    GETUCORE  = Keyword ("get-unsat-core")
    GETVALUE  = Keyword ("get-value")
    GETASSIGN = Keyword ("get-assignment")
    GETOPT    = Keyword ("get-option")
    GETINFO   = Keyword ("get-info")
    EXIT      = Keyword ("exit")


    unknown         = empty - ~Word(printables).setName("<unknown>")
    spec_chars      = "+-/*=%?!.$_~&^<>@"
    comment         = Suppress (';' + restOfLine)

    numeral         = NoMatch().setName("numeral") \
                      | '0' | Regex (r'[1-9][0-9]*')
    decimal         = NoMatch().setName("decimal constant") \
                      | Combine (numeral \
                                 + '.'   \
                                 + Word(nums).setName("numerical digit"))
    hexadecimal     = NoMatch().setName("hexadecimal constant") \
                      | Combine ("#x" \
                                 - Word(hexnums).setName("hexadecimal digits"))
    binary          = NoMatch().setName("binary constant") \
                      | Combine ("#b" \
                                 - Word("01").setName("binary digits"))
    string          = NoMatch().setName("string constant") | dblQuotedString

    b_value         = NoMatch().setName("'true' or 'false'") | TRUE | FALSE

    symb_str        = Word(alphas + spec_chars, alphas + nums + spec_chars,
                           excludeChars = ['|', '\\'])
    symbol          = NoMatch().setName("symbol") \
                      | '|' + symb_str + '|' | symb_str
    spec_symb_str   = OneOrMore (Word (printables, excludeChars = ['|', '\\']))
    spec_symbol     = NoMatch().setName("symbol") \
                      | '|' + spec_symb_str + '|' | symb_str

    keyword         = NoMatch().setName("keyword") \
                      | Combine (':' - Word(alphas + nums + spec_chars).setName(
                          "keyword string"))

    spec_constant   = NoMatch().setName("special constant") \
                      | b_value                             \
                      | decimal                             \
                      | numeral                             \
                      | hexadecimal                         \
                      | binary                              \
                      | string

    s_expr          = Forward()
    s_expr         << (NoMatch().setName("s-expression") \
                       | spec_constant                   \
                       | symbol                          \
                       | keyword                         \
                       | '(' + ZeroOrMore(s_expr) - RPAR)

    identifier      = NoMatch().setName("identifier") \
                      | symbol                        \
                      | LPAR + IDXED - symbol + OneOrMore(numeral) + RPAR

    sort            = Forward()
    sort           << (NoMatch().setName("sort") \
                       | identifier              \
                       | '(' + identifier + OneOrMore(sort) + RPAR)

    attr_value      = NoMatch().setName("attribute value") \
                      | spec_constant                      \
                      | symbol                             \
                      | '(' + ZeroOrMore(s_expr) - RPAR
    attribute       = NoMatch().setName("attribute")       \
                      | keyword + Optional (attr_value)
    # be more lenient towards comment-style symbols in set-info
    spec_attr_value = NoMatch().setName("attribute value") \
                      | attr_value | spec_symbol  
    spec_attribute  = NoMatch().setName("attribute")       \
                      | keyword + Optional (spec_attr_value)

    term            = Forward()
    qual_identifier = NoMatch().setName("qualified identifier") \
                      | identifier | LPAR + AS - identifier + sort + RPAR
    var_binding     = NoMatch().setName("variable binding") \
                      | LPAR + symbol + term + RPAR
    sorted_var      = NoMatch().setName("sorted variable") \
                      | LPAR + symbol + sort + RPAR
    term           << (NoMatch().setName("term") \
                       | spec_constant           \
                       | qual_identifier         \
                       | LPAR + LET              \
                              - LPAR + Group(OneOrMore(var_binding)) + RPAR \
                              + term + RPAR                                 \
                       | LPAR + FORALL                                      \
                              - LPAR + Group(OneOrMore(sorted_var)) - RPAR  \
                              + term + RPAR                                 \
                       | LPAR + EXISTS                                      \
                              - LPAR + Group(OneOrMore(sorted_var)) - RPAR  \
                              + term + RPAR                                 \
                       | LPAR + '!' - term + Group(OneOrMore(attribute)) + RPAR\
                       | LPAR + qual_identifier + Group(OneOrMore(term)) + RPAR)      
    option          = NoMatch().setName("option") \
                      | PRINTSUCC - b_value \
                      | EXPANDDEF - b_value \
                      | INTERMODE - b_value \
                      | PRODPROOF - b_value \
                      | PRODUCORE - b_value \
                      | PRODMODEL - b_value \
                      | PRODASSGN - b_value \
                      | ROUTCHANN - string  \
                      | DOUTCHANN - string  \
                      | RANDMSEED - numeral \
                      | VERBOSITY - numeral \
                      | attribute

    info_flag       = NoMatch().setName("info flag") \
                      | ERRBEHAVR                    \
                      | NAME                         \
                      | AUTHORS                      \
                      | VERSION                      \
                      | STATUS                       \
                      | RUNKNOWN                     \
                      | ALLSTAT                      \
                      | keyword

    command         = NoMatch().setName("command")                          \
                      | LPAR + SETLOGIC - symbol + RPAR                     \
                      | LPAR + SETOPT   - option - RPAR                     \
                      | LPAR + SETINFO  - spec_attribute - RPAR             \
                      | LPAR + DECLSORT - symbol + numeral + RPAR           \
                      | LPAR + DEFSORT  - symbol                            \
                                        + LPAR                              \
                                            + Group(ZeroOrMore(symbol))     \
                                        + RPAR + sort + RPAR                \
                      | LPAR + DECLFUN  - symbol                            \
                                        + LPAR                              \
                                           + Group(ZeroOrMore(sort))        \
                                        + RPAR + sort + RPAR                \
                      | LPAR + DEFFUN   - symbol                            \
                                        + LPAR                              \
                                            + Group(ZeroOrMore(sorted_var)) \
                                        - RPAR + sort + term + RPAR         \
                      | LPAR + PUSH      - numeral + RPAR                   \
                      | LPAR + POP       - numeral + RPAR                   \
                      | LPAR + ASSERT    - term + RPAR                      \
                      | LPAR + CHECKSAT  - RPAR                             \
                      | LPAR + GETASSERT - RPAR                             \
                      | LPAR + GETPROOF  - RPAR                             \
                      | LPAR + GETUCORE  - RPAR                             \
                      | LPAR + GETVALUE  - LPAR                             \
                                            + Group(OneOrMore(term))        \
                                         + RPAR + RPAR                      \
                      | LPAR + GETASSIGN - RPAR                             \
                      | LPAR + GETOPT    - keyword + RPAR                   \
                      | LPAR + GETINFO   - info_flag - RPAR                 \
                      | LPAR + EXIT      - RPAR                             \
                      | unknown

    script          = OneOrMore(command)


    def __init__ (self):
        global g_cur_scope

        # needed for raising a DDSMTParseException
        # Note: make sure to update them before entering code chucks that
        #       might raise such an exception as these are not up-to-date
        #       for each token by default
        self.loc = None
        self.instring = None

        SMTParser.numeral.setParseAction(lambda s,l,t: 
            SMTConstNode (
                KIND_CONSTN, SMTSortNode.sortNode ("Int"), value=int(t[0])))

        SMTParser.decimal.setParseAction(lambda s,l,t:
            SMTConstNode (
                KIND_CONSTD, SMTSortNode.sortNode ("Real"), value=float(t[0])))

        SMTParser.hexadecimal.setParseAction(self.__hex2SMTNode)
        SMTParser.binary.setParseAction(self.__bin2SMTNode)

        SMTParser.string.setParseAction(lambda s,l,t:
            SMTConstNode (
                KIND_CONSTS, SMTSortNode.sortNode ("String"), value=t[0]))

        SMTParser.b_value.setParseAction(lambda s, l, t:
                SMTBoolConstNode (str(t[0])))

        SMTParser.symb_str.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))
        SMTParser.spec_symb_str.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))

        SMTParser.s_expr.setParseAction(self.__sexprAttrv2token)

        SMTParser.sort.setParseAction(self.__sort2SMTNode)

        SMTParser.attr_value.setParseAction(self.__sexprAttrv2token)
        SMTParser.attribute.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))

        SMTParser.option.setParseAction(lambda s, l, t:
                SMTBoolConstNode (str(t[0])))
        SMTParser.option.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))

        SMTParser.qual_identifier.setParseAction(self.__qualIdent2SMTNode)
        SMTParser.sorted_var.setParseAction(lambda s,l,t: 
                SMTFunNode.funNode (t[0], KIND_FUN, t[1], scope = g_cur_scope))
        SMTParser.var_binding.setParseAction(self.__varBind2SMTNode)
        SMTParser.term.setParseAction(self.__term2SMTNode)

        SMTParser.command.setParseAction(self.__cmd2SMTCmdNode)

        SMTParser.script.ignore(SMTParser.comment)


    def __cmdNode (self, kind, children = []):
        if kind == KIND_PUSH:
            assert (len(children) == 1)
            assert (isinstance (children[0], SMTConstNode))
            return SMTPushCmdNode (children[0].value)
        elif kind == KIND_POP:
            assert (len(children) == 1)
            assert (isinstance (children[0], SMTConstNode))
            return SMTPopCmdNode (children[0].value)
        return SMTCmdNode (kind, children)


    def __smtForallExistsNode (self, svars, kind, sort = None, children = []):
        global g_cur_scope
        assert (kind in (KIND_FORALL, KIND_EXISTS))
        prev_scope = g_cur_scope
        assert (len(children) == 1)
        SMTScopeNode.open_scope (kind = KIND_FSCOPE if kind == KIND_FORALL 
                                                    else KIND_ESCOPE)
        for s in svars:
            assert (SMTFunNode.find_fun (s.name, g_cur_scope) != None)
            assert (s.name in prev_scope.funs)
            del(prev_scope.funs[s.name])
            g_cur_scope.funs[s.name] = s
        SMTScopeNode.close_scope ()
        
        return SMTForallExistsNode (svars, kind, sort, children)


    def __funApp_check (self, fun, kind, children):
        global g_is_bv_logic
        # number of args check
        if ((len(children) != 1 and 
                 kind in (KIND_ABS, KIND_BVNEG, KIND_BVNOT, KIND_EXTR, KIND_ISI,
                          KIND_NOT, KIND_NEG,   KIND_TOI,   KIND_TOR,  KIND_REP,
                          KIND_ROL, KIND_ROR,   KIND_SEXT,  KIND_ZEXT)) or
            (len(children) != 2 and
                 kind in (KIND_ADD,    KIND_AND,    KIND_BVADD,  KIND_BVAND,  
                          KIND_BVASHR, KIND_BVCOMP, KIND_BVLSHR, KIND_BVMUL,
                          KIND_BVNAND, KIND_BVNOR,  KIND_BVOR,   KIND_BVSDIV,
                          KIND_BVSGE,  KIND_BVSGT,  KIND_BVSHL,  KIND_BVSLE,
                          KIND_BVSLT,  KIND_BVSMOD, KIND_BVSREM, KIND_BVSUB,
                          KIND_BVUGE,  KIND_BVUGT,  KIND_BVUDIV, KIND_BVULE,
                          KIND_BVULT,  KIND_BVUREM, KIND_BVXNOR, KIND_BVXOR,
                          KIND_CONC,   KIND_DIV,    KIND_DIST,   KIND_EQ,
                          KIND_IMPL,   KIND_GE,     KIND_GT,     KIND_LE, 
                          KIND_LT,     KIND_MOD,    KIND_MUL,    KIND_OR,
                          KIND_SELECT, KIND_SUB,    KIND_RDIV,   KIND_XOR)) or
            (len(children) != 3 and 
                kind in (KIND_ITE, KIND_STORE))):
            raise DDSMTParseException (
                    lineno (self.loc, self.instring),
                    col (self.loc, self.instring),
                    "invalid number of arguments to '{0:s}': {1:d}".format(
                        str(fun), len(children)))

        # number of indices check
        if g_is_bv_logic:
            if kind == KIND_EXTR and len(fun.indices) != 2:
                raise DDSMTParseException (
                    lineno (self.loc, self.instring),
                    col (self.loc, self.instring),
                    "'{0:s}' expects exactly two indices, {1:d} given".format(
                        str(fun.name), len(fun.indices)))
            elif kind in (KIND_REP, KIND_ROL, KIND_ROR, KIND_SEXT, KIND_ZEXT) \
                 and len(fun.indices) != 1:
                raise DDSMTParseException (
                    lineno (self.loc, self.instring),
                    col (self.loc, self.instring),
                    "'{0:s}' expects exactly one index, {1:d} given".format(
                        str(fun.name), len(fun.indices)))

        # args sort Bool check
        elif kind in (KIND_AND, KIND_IMPL, KIND_NOT, KIND_OR, KIND_XOR,
                    KIND_LE,  KIND_LT):
            for c in children:
                if not c.sort == SMTSortNode.sortNode ("Bool"):
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'{0:s}' expects sort 'Bool' as argument(s)".format(
                            str(fun)))
        # args Int check
        elif kind in (KIND_ABS, KIND_DIV, KIND_MOD, KIND_TOR):
            for c in children:
                if not c.sort == SMTSortNode.sortNode("Int"):
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'{0:s}' expects sort 'Int' as argument(s)".format(
                            str(fun)))
        # args Real check
        elif kind in (KIND_RDIV, KIND_ISI, KIND_TOI):
            for c in children:
                if not c.sort == SMTSortNode.sortNode("Real"):
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'{0:s}' expects sort 'Real' as argument(s)".format(
                            str(fun)))
        # args Int or Real check
        elif kind in (KIND_ADD, KIND_GE, KIND_GT, KIND_MUL, KIND_NEG, KIND_SUB):
            csort = children[0].sort
            if csort not in (SMTSortNode.sortNode("Int"),
                             SMTSortNode.sortNode("Real")):
                raise DDSMTParseException (
                    lineno (self.loc, self.instring),
                    col (self.loc, self.instring),
                    "'{0:s}' expects 'Int' or 'Real' as argument(s)".format(
                        str(fun)))
            for c in children[1:]:
                if c.sort != csort:
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'{0:s}' with mismatching sorts: '{1:s}' '{2:s}'"\
                        "".format(str(fun), str(csort), str(c.sort))) 
        # args BV sort check
        elif kind in (KIND_CONC, KIND_EXTR, KIND_REP,   KIND_ROL,  KIND_ROR, 
                      KIND_SEXT, KIND_ZEXT, KIND_BVNEG, KIND_BVNOT):
            for c in children:
                if not c.sort.is_bv_sort:
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'{0:s}' expects BV sort as argument(s)".format(
                            str(fun)))
        # args equal sort check
        elif kind in (KIND_DIST, KIND_EQ):
            csort = children[0].sort
            for c in children[1:]:
                if c.sort != csort:
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'{0:s}' with mismatching sorts: '{1:s}' '{2:s}'"\
                        "".format(str(fun), str(csort), str(c.sort))) 
        # args equal bw check
        elif kind in (KIND_BVADD,  KIND_BVAND,  KIND_BVASHR, KIND_BVCOMP, 
                      KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, KIND_BVNOR,
                      KIND_BVOR,   KIND_BVSDIV, KIND_BVSGE,  KIND_BVSGT,  
                      KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT,  KIND_BVSMOD, 
                      KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,  
                      KIND_BVUDIV, KIND_BVULE,  KIND_BVULT,  KIND_BVUREM, 
                      KIND_BVXNOR, KIND_BVXOR):
            csort = children[0].sort
            if not csort.is_bv_sort:
                raise DDSMTParseException (
                    lineo (l, s),
                    col (self.loc, self.instring),
                    "'{0:s}' expects BV sort as argument(s)".format(
                        str(fun)))
            for c in children[1:]:
                if c.sort != csort:
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'{0:s}' with mismatching sorts: '{1:s}' '{2:s}'"\
                        "".format(str(fun), str(csort), str(c.sort))) 
        # first arg Array check
        elif kind in (KIND_SELECT, KIND_STORE):
            if not children[0].sort.is_arr_sort:
                raise DDSMTParseException (
                    lineo (l, s),
                    col (self.loc, self.instring),
                    "'{0:s}' expects Array sort as first argument".format(
                        str(fun)))
        # ITE arg check
        elif kind == KIND_ITE:
            if not children[0].sort == SMTSortNode.sortNode("Bool"):
                raise DDSMTParseException (
                    lineo (l, s),
                    col (self.loc, self.instring),
                    "'{0:s}' expects sort 'Bool' as first argument".format(
                        str(fun)))
            if children[1].sort != children[2].sort:
                    raise DDSMTParseException (
                        lineno (self.loc, self.instring),
                        col (self.loc, self.instring),
                        "'ite' with mismatching sorts: '{1:s}' '{2:s}'"\
                        "".format(str(children[1].sort), str(children[2].sort))) 

    def __funApp2Sort (self, fun, kind, children):
        global g_is_bv_logic, g_bv_fun_kinds

        self.__funApp_check(fun, kind, children)
        # sort Bool
        if kind in (KIND_AND,   KIND_IMPL,  KIND_NOT,   KIND_OR,    KIND_XOR, 
                    KIND_EQ,    KIND_DIST,  KIND_LE,    KIND_LT,    KIND_GE,
                    KIND_GT,    KIND_ISI,   KIND_BVSGE, KIND_BVSGT, KIND_BVSLE,
                    KIND_BVSLT, KIND_BVUGE, KIND_BVUGT, KIND_BVULE, KIND_BVULT):
            return SMTSortNode.sortNode("Bool")
        # sort Int
        elif kind in (KIND_ABS, KIND_DIV, KIND_MOD):
            return SMTSortNode.sortNode("Int")
        # sort Real
        elif kind in (KIND_RDIV, KIND_TOI, KIND_TOR):
            return SMTSortNode.sortNode("Real")
        # sort BV sort != children sort
        elif kind == KIND_CONC:
            return SMTBVSortNode.sortNode(
                       children[0].sort.bw + children[1].sort.bw)
        elif kind == KIND_EXTR:
            return SMTBVSortNode.sortNode(fun.indices[0] - fun.indices[1] + 1)
        elif kind == KIND_REP:
            return SMTBVSortNode.sortNode(fun.indices[0] * children[0].bw)
        elif kind in (KIND_SEXT, KIND_ZEXT):
            return SMTBVSortNode.sortNode(fun.indices[0] + children[0].bw)
        elif kind == KIND_BVCOMP:
            return SMtBVSortNode.sortNode(1)
        # sort defined by children
        elif kind in (KIND_ADD,    KIND_MUL,    KIND_NEG,    KIND_SUB,
                      KIND_ROL,    KIND_ROR,    KIND_BVADD,  KIND_BVAND,
                      KIND_BVASHR, KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND,
                      KIND_BVNEG,  KIND_BVNOR,  KIND_BVNOT,  KIND_BVOR,
                      KIND_BVSDIV, KIND_BVSHL,  KIND_BVSMOD, KIND_BVSREM, 
                      KIND_BVSUB,  KIND_BVUDIV, KIND_BVUREM, KIND_BVXNOR,
                      KIND_BVXOR):
            return children[0].sort
        # special cases
        elif kind == KIND_ITE: 
            return children[1].sort
        elif kind == KIND_SELECT:
            return children[0].sort.elem_sort
        elif kind == KIND_STORE:
            return children[0].sort

        return fun.sort


    def __funAppNode (self, fun, children = []):
        global g_fun_kinds
        if fun.name in g_fun_kinds:
            if fun.name == '-' and len(children) == 1:
                kind = KIND_NEG
            else:
                kind = fun.name
        else:
            kind = fun.kind
        sort = self.__funApp2Sort(fun, kind, children)
        return SMTFunAppNode (fun, kind, sort, children)

    def __hex2SMTNode (self, s, l, t):
        global g_is_bv_logic
        assert (len(t) == 1)
        value = int(t[0][2:], 16)
        bw = value.bit_length()
        return SMTBVConstNode (
                KIND_CONSTH, SMTBVSortNode.sortNode(bw), value, bw, original_str = t[0]) # TODO debug

    def __bin2SMTNode (self, s, l, t):
        global g_is_bv_logic
        assert (len(t) == 1)
        value = int(t[0][2:], 2)
        bw = value.bit_length()
        return SMTBVConstNode (
                KIND_CONSTB, SMTBVSortNode.sortNode(bw), value, bw)

    def __sexprAttrv2token (self, s, l, t):
        if not t[0] == '(':
            return t
        return "({0:s})".format(" ".join([str(to) for to in t[1:]]))
        
    def __sort2SMTNode (self, s, l, t):
        if t[0] == '_':
            assert (len(t) == 3)
            # add all bv sorts to scope level 0
            return SMTBVSortNode.sortNode (t[2].value)
        elif t[0] == '(' and t[1] == "Array":
            assert (len(t) == 4)
            # add sort to scope level 0 by default (we have to fix this later
            # in case of define-sort / declare-sort)
            return SMTArraySortNode.sortNode (t[2], t[3])
        else:
            # add sort to scope level 0 by default (we have to fix this later
            # in case of define-sort / declare-sort)
            return SMTSortNode.sortNode (
                    "({0:s})".format([str(to) for to in t[1:]]) \
                            if t[0] == '(' else t[0], 
                    nparams = len(t[2:]))


    def __qualIdent2SMTNode (self, s, l, t):
        global g_is_bv_logic, g_scopes
        if t[0] == SMTParser.AS:
            return SMTFunNode.funNode (
                    t[1], KIND_ANNFUN, t[2], scope = g_scopes)
        elif t[0] == '_':
            if t[1].find("bv") == 0 and g_is_bv_logic:
                assert (len(t) == 3)
                value = int(t[1][2:])
                bw = t[2].value
                return SMTBVConstNode (
                        KIND_CONSTN, SMTBVSortNode.sortNode(bw), value, bw)
            else:
                assert (len(t) > 1)
                return SMTFunNode.funNode (
                        t[1], KIND_FUN, None, [], t[2:], g_cur_scope)
        else:
            return SMTFunNode.funNode (
                    t[0], KIND_FUN, None, [], [], g_cur_scope)

    def __varBind2SMTNode (self, s, l, t):
        global g_scopes
        return SMTVarBindNode (
                SMTFunNode.funNode (
                    t[0], KIND_FUN, t[1].sort, scope = g_scopes), 
                [t[1]])

    def __term2SMTNode (self, s, l, t):
        self.loc = l
        self.instring = s
        if len(t) == 1:
            return t
        if str(t[0]) == SMTParser.LET:
            assert (len(t) == 3)
            return SMTNode (KIND_LET, t[2].sort, [t[1][0:], t[2]]) # TODO var_bindings flat in children
        elif str(t[0]) == SMTParser.FORALL:
            assert (len(t) == 3)
            return self.__smtForallExistsNode (
                            t[1][0:], KIND_FORALL, t[2].sort, [t[2]])
        elif str(t[0]) == SMTParser.EXISTS:
            assert (len(t) == 3)
            return self.__smtForallExistsNode (
                            t[1][0:], KIND_EXISTS, t[2].sort, [t[2]])
        elif str(t[0]) == '!':
            assert (len(t) == 3)
            return SMTAnFunNode (t[2][0:], KIND_ANNOTN, t[1].sort, [t[1]])
        else:
            assert (isinstance(t[0], SMTFunNode))
            return self.__funAppNode (t[0], t[1][0:])

    def __cmd2SMTCmdNode (self, s, l, t):
        global g_cur_scope
        kind = t[0]
        if kind == KIND_DECLSORT:
            assert (len(t) == 3)
            # sort has been added to scope level 0 when recursively stepping
            # through declare-sort -> move to cur_scope
            sort = SMTSortNode.find_sort(t[1], g_cur_scope)
            if sort not in g_cur_scope.sorts:
                SMTSortNode.delete_sort(t[1], g_cur_scope)
                sort = SMTSortNode.add_sort(t[1], g_cur_scope, t[2].value)
            return self.__cmdNode (KIND_DECLSORT, [sort])
        elif kind == KIND_DEFSORT:
            assert (len(t) == 4)
            # TODO sort is currently not added here, concrete sort is added to 
            # scope level 0 when encountered !!!!
            string = "{0:s} ({1:s}) {2:s}".format(
                         t[1], 
                         " ".join([str(s) for s in t[2]]) if len(t[2]) > 0 
                                                          else "",
                         str(t[3]))
            return self.__cmdNode (KIND_DEFSORT, [string])
        elif kind == KIND_DECLFUN:
            assert (len(t) == 4)
            # fun has been added to scope level 0 when recursively stepping
            # through declare-fun -> move to cur_scope
            fun = SMTFunNode.find_fun(t[1], g_cur_scope)
            if fun not in g_cur_scope.funs:
                SMTFunNode.delete_fun(t[1], g_cur_scope)
                fun = SMTFunNode.add_fun(
                        t[1], KIND_FUN, t[3], t[2][0:], [], scope = g_cur_scope)
            return self.__cmdNode (KIND_DECLFUN, [fun])
        elif kind == KIND_DEFFUN:
            assert (len(t) == 5)
            sorts = [to.sort for to in t[2]]
            return self.__cmdNode (
                KIND_DEFFUN, 
                [SMTFunNode.funNode (
                    t[1], KIND_FUN, t[3], sorts, scope = g_cur_scope), 
                 t[2][0:], 
                 t[4]])
        elif kind == KIND_GETVALUE:
            assert (len(t) == 2)
            return self.__cmdNode (KIND_GETVALUE, [t[1][0:]])
        else:
            return self.__cmdNode (t[0], children = t[1:])



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
    global g_scopes
    try:
        with open(filename, 'w') as outfile:
            outfile.write(str(root if root != None else g_scopes))
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
    global g_scopes

    scopes = []
    to_visit = [root if root != None else g_scopes]
    
    while to_visit:
        cur = to_visit.pop()
        if cur.get_subst() == None:
            continue
        if filter_fun == None or filter_fun(cur):
            scopes.append(cur)
        to_visit.extend(cur.scopes) 
    return scopes


def _substitute_scopes ():
    global g_subst_scopes

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
                cpy_subst_scopes = g_subst_scopes.copy()
                nsubst = 0
                for scope in subset:
                    if scope.get_subst() != None:
                        g_subst_scopes[scope.id] = None
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
                    g_subst_scopes = cpy_subst_scopes
            gran = gran // 2
        level += 1
        
    _log (2, "  > {0:d} scope(s) substituted in total".format(nsubst_total))
    return nsubst_total

        
# TODO merge with _filter_scopes?
def _filter_cmds (filter_fun = None, root = None):
    global g_scopes

    cmds = []
    scopes = _filter_scopes (lambda x: x.kind not in (KIND_ESCOPE, KIND_FSCOPE))
    to_visit = [c for cmd_list in [s.cmds for s in scopes] for c in cmd_list]

    while to_visit:
        cur = to_visit.pop()
        if cur.get_subst() == None:
            continue
        if filter_fun == None or filter_fun(cur):
            cmds.append(cur)
    return cmds


def _substitute_cmds ():
    global g_subst_cmds

    _log (2)
    _log (2, "substitute COMMANDS:")

    nsubst_total = 0
    cmds = _filter_cmds (lambda x: x.kind not in (KIND_SETLOGIC, KIND_EXIT))
    gran = len(cmds)

    while gran > 0:
        subsets = [cmds[s:s+gran] for s in range (0, len(cmds), gran)]
        for subset in subsets:
            cpy_subst_cmds = g_subst_cmds.copy()
            nsubst = 0
            for cmd in subset:
                if cmd.get_subst() != None:
                    g_subst_cmds[cmd.id] = None
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
                g_subst_cmds = cpy_subst_cmds
        gran = gran // 2

    _log (2, "  > {0:d} command(s) substituted in total".format(nsubst_total))
    return nsubst_total
    

def _filter_terms (filter_fun = None, root = None):
    global g_scopes, g_subst_nodes

    nodes = []
    asserts = _filter_cmds (lambda x: x.kind == KIND_ASSERT)
    to_visit = root if root != None else \
                   [c.children[0] for c in asserts if not 
                       isinstance(c.children[0].get_subst(), SMTBoolConstNode)]
    while to_visit:
        cur = to_visit.pop().get_subst()
        if filter_fun == None or filter_fun(cur):
            nodes.append(cur)
        if cur.children:
            to_visit.extend(cur.children)

    return nodes





#def _substitute_terms (subst_fun, filter_fun, msg = None):
#    global g_subst_nodes
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

        _dump (g_outfile)
        #nsubst += _substitute_scopes ()

        #nsubst += _substitute_cmds ()
        #print (_filter_terms ())


        #nsubst_total += nsubst

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

        parser = SMTParser()
        #parsed = SMTParser.script.parseFile(g_infile, parseAll = True)
        g_scopes = SMTScopeNode()
        g_cur_scope = g_scopes
        SMTParser.script.parseFile(g_infile, parseAll = True)
        #print (" ".join(str(s) for s in parsed.asList()))
        #print ("--------------------------------------------------")
        #print (g_scopes)

        shutil.copyfile(g_infile, g_tmpfile)
        g_cmd.append(g_tmpfile)
        g_golden = _run()
        
        _log (1)
        _log (1, "golden exit: {0:d}".format(g_golden))

        ddsmt_main ()
        
        _cleanup()
        sys.exit(0)
    except ParseSyntaxException as e:
        _cleanup()
        sys.exit("[ddsmt] {0:s}\n"\
                 "[ddsmt] {1:s}{2:s}\n"\
                 "[ddsmt] Error: {3:s}".format(
                         e.line, " "*(e.column - 2), "^", str(e)))
    except (DDSMTParseException, DDSMTException) as e:
        _cleanup()
        sys.exit(str(e))
    except KeyboardInterrupt as e:
        _cleanup()
        sys.exit("[ddsmt] {0:s}".format(str(e)))
