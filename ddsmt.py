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

KIND_EQ     = "eq"
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
    [ KIND_AND,    KIND_IMPL,   KIND_ITE,    KIND_NOT,    KIND_OR,    
      KIND_XOR,    KIND_EQ,     KIND_DIST,   KIND_LE,     KIND_LT,
      KIND_GE,     KIND_GT,     KIND_ABS,    KIND_ADD,    KIND_DIV,
      KIND_MOD,    KIND_MUL,    KIND_NEG,    KIND_SUB,    KIND_RDIV,
      KIND_ISI,    KIND_TOI,    KIND_TOR,    KIND_CONC,   KIND_EXTR,
      KIND_REP,    KIND_ROL,    KIND_ROR,    KIND_SEXT,   KIND_ZEXT,
      KIND_BVADD,  KIND_BVAND,  KIND_BVASHR, KIND_BVCOMP, KIND_BVLSHR, 
      KIND_BVMUL,  KIND_BVNAND, KIND_BVNEG,  KIND_BVNOR,  KIND_BVNOT,
      KIND_BVOR,   KIND_BVSDIV, KIND_BVSGE,  KIND_BVSGT,  KIND_BVSHL,
      KIND_BVSLE,  KIND_BVSLT,  KIND_BVSMOD, KIND_BVSREM, KIND_BVSUB,
      KIND_BVUGE,  KIND_BVUGT,  KIND_BVUDIV, KIND_BVULE,  KIND_BVULT,
      KIND_BVUREM, KIND_BVXNOR, KIND_BVXOR ]

g_cmd_kinds   = \
    [ KIND_ASSERT,   KIND_CHECKSAT, KIND_DECLFUN,   KIND_DEFFUN, 
      KIND_DECLSORT, KIND_DEFSORT,  KIND_GETASSERT, KIND_GETASSIGN, 
      KIND_GETPROOF, KIND_GETUCORE, KIND_GETVALUE,  KIND_GETOPT,
      KIND_GETINFO,  KIND_EXIT,     KIND_PUSH,      KIND_POP,
      KIND_SETLOGIC, KIND_SETINFO,  KIND_SETOPT ]


g_tmpfile = "/tmp/tmp-" + str(os.getpid()) + ".smt2"
g_outfile = ""
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

    def __init__(self, msg):
        self.msg = msg
    
    def __str__(self):
        return "[ddsmt] Error: {0:s}".format(self.msg)


class SMTNode:

    g_id = 0

    def __init__(self, kind, sort = None, children = []):
        assert (isinstance (children, list))
        SMTNode.g_id += 1
        self.id = SMTNode.g_id
        self.kind = kind
        self.sort = sort
        self.children = children

    def arity(self):
        return len(self.children)

    def __str__(self):
        if self.kind in (KIND_EXISTS, KIND_FORALL):
            assert (len(self.children) == 2)
            svars = self.children[0]
            tterm = self.children[1]
            return "({0:s} ({1:s}) {2:s})".format(
                    self.kind, 
                    " ".join(["({0:s} {1:s})".format(s.name, str(s.sort))
                              for s in svars]) if len(svars) > 0 else "",
                    str(tterm))
        elif self.kind == KIND_ANNOTN:
            assert (len(self.children) == 2)
            return "(! {0:s} {1:s})".format(
                    str(self.children[0]), 
                    " ".join([str(c) for c in self.children[1]]))

        return "({0:s}{1:s})".format(self.kind, self.children2string())

    def children2string(self):
        if self.arity() >= 1:
            strings = []
            for c in self.children:
                if isinstance(c, list):
                    strings.append("({0:s})".format(
                        " ".join([str(cc) for cc in c])))
                else:
                    strings.append(str(c))
            return " " + " ".join([s for s in strings])
        else:
            return ""


class SMTVarBindNode (SMTNode):

    def __init__(self, var, children = []):
        assert (isinstance (var, SMTFunNode))
        assert (isinstance (children, list))
        assert (len(children) == 1)
        super().__init__(KIND_VARB, children = children)
        self.var = var

    def __str__(self):
        assert (len(self.children) == 1)
        return "({0:s} {1:s})".format(self.var.name, str(self.children[0]))

        
class SMTFunNode (SMTNode):

    def __init__(self, name, kind, sort, sorts = [], indices = []):
        assert (kind in (KIND_FUN, KIND_ANNFUN))
        assert (isinstance (sorts, list))
        assert (isinstance (indices, list))
        super().__init__(kind, sort)
        self.name = name
        self.sorts = sorts      # signature sorts
        self.indices = [int(s.value) for s in indices]

    def __str__(self):
        if self.indices == []:
            return self.name
        return "(_ {0:s} {1:s})".format(
                self.name, " ".join([str(s) for s in self.indices]))


class SMTFunAppNode (SMTNode):        

    def __init__(self, fun, kind, sort, children = []):
        global g_fun_kinds
        assert (isinstance(fun, SMTFunNode))
        assert (len(children) >= 1)
        super().__init__(kind, sort, children)
        self.fun = fun

    def __str__(self):
        return "({0:s}{1:s})".format(str(self.fun), self.children2string())

class SMTSortNode (SMTNode):

    def __init__(self, name, nparams = 0):
        super().__init__(KIND_SORT)
        self.name = name
        self.nparams = nparams
    
    def __str__(self):
        return self.name

#    def __eq__(self, other):
#        if self is None or other is None:
#            return self is None and other is None
#        return self.name == other.name
# 
#    def __ne__(self, other):
#        if self is None or other is None:
#            return not (self is None and other is None)
#        return self.name != other.name

class SMTConstNode (SMTNode):

    def __init__(self, kind, sort, value = 0, original_str = "none"):
        assert (kind in g_const_kinds)                    # ^^^^ TODO debug
        super().__init__(kind, sort)
        self.value = value
        self.original_str = original_str # TODO debug

    def __str__(self):
        #return str(self.value)
        return "{0:s}".format(self.original_str if self.original_str != "none"
                                                else str(self.value))


class SMTBVConstNode (SMTConstNode):

    def __init__(self, kind, sort, value = 0, bitwidth = 1, original_str = "none"):                                                         #^^^^ TODO debug
        assert (kind in g_const_kinds)
        super().__init__(kind, sort, value)
        self.bitwidth = bitwidth
        self.original_str = original_str  # TODO debug

    def __str__(self):
        if self.kind == KIND_CONST:
            assert (self.bw == 1)
            return "{0:s}".format(TRUE if value == 1 else FALSE)
        elif self.kind == KIND_CONSTH:
            #return "#x{0:s}".format(hex(self.value)[2:])
            if self.original_str != "none":
                return self.original_str
            else:
                return "#x{0:s}".format(hex(self.value)[2:]) 
        elif self.kind == KIND_CONSTB:
            return "#b{0:s}".format(bin(self.value)[2:])
        assert (self.kind == KIND_CONSTN)
        return "(_ bv{0:d} {1:d})".format(self.value, self.bitwidth)


class SMTCmdNode:

    g_id = 0
    
    def __init__(self, kind, children = []):
        global g_cmd_kinds
        assert (kind in g_cmd_kinds)
        assert (isinstance (children, list))
        SMTCmdNode.g_id += 1
        self.id = SMTCmdNode.g_id
        self.kind = kind
        self.children = children

    def arity(self):
        return len(self.children)

    def __str__(self):
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

        return "({0:s}{1:s})".format(self.kind, self.children2string())

    def children2string(self):
        if self.arity() >= 1:
            strings = []
            for c in self.children:
                if isinstance (c, list):
                    strings.append("({0:s})".format(
                        " ".join([str(cc) for cc in c])))
                else:
                    strings.append(str(c))
            return " " + " ".join([s for s in strings])
        else:
            return ""

class SMTPushCmdNode (SMTCmdNode):

    def __init__(self, scope, kind, children = []):
        super().__init__(kind, children)
        self.scope = scope

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
        strings = []
        for cmd in self.cmds:
            if cmd.kind == KIND_PUSH:
                assert (len(self.scopes) > 0)
                assert (cmd.scope in self.scopes)
                assert (cmd.scope.kind not in (KIND_ESCOPE, KIND_FSCOPE))
                if cmd.scope.id in g_subst_scopes:
                    assert (g_subst_scopes[cmd.scope.id] == None)
                    continue
                strings.append(str(cmd))
                strings.append(str(cmd.scope))
            else:
                strings.append(str(cmd))
        return " ".join([s for s in strings])


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
                      | TRUE                                \
                      | FALSE                               \
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
                       | LPAR + identifier + OneOrMore(sort) + RPAR)

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
    b_value         = NoMatch().setName("'true' or 'false'") | TRUE | FALSE
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


    def __init__(self):
        self.scopes = SMTScopeNode()
        self.cur_scope = self.scopes

        SMTParser.numeral.setParseAction(lambda s,l,t: 
                SMTConstNode (
                    KIND_CONSTN, self.__sortNode (
                                    self.scopes, "Int"), value=int(t[0])))

        SMTParser.decimal.setParseAction(lambda s,l,t:
                SMTConstNode (
                    KIND_CONSTD, self.__sortNode (
                                    self.scopes, "Real"), value=float(t[0])))

        SMTParser.hexadecimal.setParseAction(self.__hex2SMTNode)
        SMTParser.binary.setParseAction(self.__bin2SMTNode)

        SMTParser.string.setParseAction(lambda s,l,t:
                SMTConstNode (
                    KIND_CONSTS, self.__sortNode (
                                    self.scopes, "String"), value=t[0]))

        SMTParser.symb_str.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))
        SMTParser.spec_symb_str.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))

        SMTParser.s_expr.setParseAction(self.__sexprAttrv2token)

        SMTParser.spec_constant.setParseAction(self.__specConst2token)

        SMTParser.sort.setParseAction(lambda s,l,t:
                self.__sortNode (
                    self.scopes, 
                    "(" + " ".join([str(to) for to in t]) + ")" if len(t) > 1 
                                                                else t[0],
                    len(t) - 1))

        SMTParser.attr_value.setParseAction(self.__sexprAttrv2token)
        SMTParser.attribute.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))

        SMTParser.option.setParseAction(lambda s,l,t: 
                " ".join([str(to) for to in t]))

        SMTParser.qual_identifier.setParseAction(self.__qualIdent2SMTNode)
        SMTParser.sorted_var.setParseAction(lambda s,l,t: 
                self.__funNode (self.cur_scope, t[0], KIND_FUN, t[1]))
        SMTParser.var_binding.setParseAction(self.__varBind2SMTNode)
        SMTParser.term.setParseAction(self.__term2SMTNode)

        SMTParser.command.setParseAction(self.__cmd2SMTCmdNode)

        SMTParser.script.ignore(SMTParser.comment)


    #def _is_bvSortNode (node):
    #    assert (isinstance (node, SMTSortNode))
    #    if node.name.find("BitVec") > 0:
    #        return true
    #    return false

    def __open_scope (self, nscopes = 1, kind = KIND_SCOPE):
        push_scope = None
        for i in range (nscopes):
            new_scope = SMTScopeNode(
                    self.cur_scope.level + 1, self.cur_scope, kind)
            if not push_scope:
                push_scope = new_scope
            self.cur_scope.scopes.append(new_scope)
            self.cur_scope = new_scope
        return push_scope   # scope associated with parent push cmd

    def __close_scope (self, nscopes = 1):
        for i in range (nscopes):
            self.cur_scope = self.cur_scope.prev
            assert (self.cur_scope != None)

    def __add_sort (self, scope, name, nparams):
        assert (self.__find_sort (name) == None)
        sort = SMTSortNode (name, nparams) 
        scope.sorts[name] = sort
        return sort

    def __find_sort (self, name):
        scope = self.cur_scope
        while scope != None:
            if name in scope.sorts:
                assert (isinstance (scope.sorts[name], SMTSortNode))
                return scope.sorts[name]
            scope = scope.prev
        return None

    def __add_fun (self, scope, name, kind, sort, sorts, indices):
        assert (self.__find_fun (name) == None)
        fun = SMTFunNode (name, kind, sort, sorts, indices)
        scope.funs[name] = fun
        return fun

    def __find_fun (self, name):
        scope = self.cur_scope
        while scope != None:
            if name in scope.funs:
                return scope.funs[name]
            scope = scope.prev
        return None

    def __cmdNode (self, kind, children = []):
        global g_logic

        scope = None

        if kind == KIND_PUSH:
            assert (len(children) == 1)
            assert (isinstance (children[0], SMTConstNode))
            cmd = SMTPushCmdNode (None, kind, children)
            self.cur_scope.cmds.append(cmd)
            cmd.scope = self.__open_scope (children[0].value)
        else:
            cmd = SMTCmdNode (kind, children)
            self.cur_scope.cmds.append(cmd)

            if kind == KIND_POP:
                assert (len(children) == 1)
                assert (isinstance (children[0], SMTConstNode))
                self.__close_scope (children[0].value)
            elif kind == KIND_SETLOGIC:
                assert (len(children) == 1)
                g_logic = children[0]
                g_is_bv_logic = g_logic.find("BV") >= 0
                    
        return cmd


    def __smtNode (self, kind, sort = None, children = []):
        if kind in (KIND_FORALL, KIND_EXISTS):
            prev_scope = self.cur_scope
            assert (len(children) == 2)
            svars = children[0]
            self.__open_scope (kind = KIND_FSCOPE if kind == KIND_FORALL 
                                                  else KIND_ESCOPE)
            for s in svars:
                assert (self.__find_fun (s.name) != None)
                assert (s.name in prev_scope.funs)
                del(prev_scope.funs[s.name])
                self.cur_scope.funs[s.name] = s
            self.__close_scope ()
        
        return SMTNode (kind, sort, children)


    def __funNode (self, scope, name, kind, sort, sorts = [], indices = []):
        fun = self.__find_fun (name)
        if fun == None:
            return self.__add_fun (scope, name, kind, sort, sorts, indices)
        assert (fun.name == name)
        return fun


    def __sortNode (self, scope, name, nparams = 0):
        sort = self.__find_sort (name)
        if sort == None:
            # add sort to scope level 0 (otherwise it would have been declared
            # or defined already and thus be found previously)
            return self.__add_sort (scope, name, nparams)
        assert (sort.name == name)
        return sort

    def __bvSortNode (self, bw):
        name = "(_ BitVec {0:d})".format(bw)
        return self.__sortNode (self.scopes, name)


    def __funApp2Sort (self, fun, kind, children):
        global g_is_bv_logic

        if not g_is_bv_logic:
            if ((kind in (KIND_ABS, KIND_ISI, KIND_NEG, KIND_TOI, KIND_TOR) and 
                 len(children) != 1) or 
                (kind in (KIND_ADD, KIND_DIV, KIND_LE, KIND_LT, KIND_GE, 
                          KIND_GT, KIND_MOD, KIND_MUL, KIND_RDIV, KIND_SUB) and 
                 len(children) != 2)):
                raise DDSMTException (
                        "invalid number of arguments to '{0:s}': {1:d}".format(
                            str(fun), len(children)))

            if kind in (KIND_ABS, KIND_DIV, KIND_MOD, KIND_TOR):
                for c in children:
                    if not c.sort == self.__sortNode (self.scopes, "Int"):
                        raise DDSMTException (
                                "'{0:s}' expects sort 'Int' " \
                                "as argument(s)".format(str(fun)))
                return self.__sortNode (self.scopes, "Int")
            elif kind in (KIND_RDIV, KIND_TOI):
                for c in children:
                    if not c.sort == self.__sortNode (self.scopes, "Real"):
                        raise DDSMTException (
                                "'{0:s}' expects sort 'Real' " \
                                "as argument(s)".format(str(fun)))
                return self.__sortNode (self.scopes, "Real")
            elif kind in (KIND_ADD, KIND_NEG, KIND_MUL, KIND_SUB, 
                          KIND_LE, KIND_LT, KIND_GE, KIND_GT):
                csort = children[0].sort
                for c in children[1:]:
                    if c.sort != csort:
                        raise DDSMTException (
                            "'{0:s}' with mismatching sorts: " \
                            "'{1:s}' '{2:s}'".format(
                                str(fun), str(csort), str(c.sort)))
                return csort
            elif (kind == KIND_ISI and 
                  children[0].sort != self.__sortNode (self.scopes, "Bool")):
                raise DDSMTException (
                        "{0:s} expects sort 'Bool' as argument".format(
                            str(fun)))
                return self.__sortNode (self.scopes, "Bool")
            return None
        else:
            if kind in (KIND_BVSGE, KIND_BVSGT, KIND_BVSLE, KIND_BVSLT, 
                        KIND_BVUGE, KIND_BVUGT, KIND_BVULE, KIND_BVULT):
                return self.__bvSortNode (1)
            elif kind == KIND_ZEXT or kind == KIND_SEXT:
                assert (len(children) == 1)
                assert (len(fun.indices) == 1)
                return self.__bvSortNode (fun.indices[0] + children[0].bw)
            elif kind == KIND_REP:
                assert (len(children) == 1)
                assert (len(fun.indices) == 1)
                return self.__bvSortNode (fun.indices[0] * children[0].bw)
            elif kind == KIND_EXTR:
                assert (len(children) == 1)
                assert (len(fun.indices) == 2)
                return self.__bvSortNode (fun.indices[0] - fun.indices[1] + 1)
            elif kind == KIND_CONC:
                assert (len(children) == 2)
                return self.__bvSortNode (children[0].bw + children[1].bw)
            else:
                assert (len(children) > 0)
                return self.__bvSortNode (children[0].bw)

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
                KIND_CONSTH, self.__bvSortNode (bw), value, bw, original_str = t[0]) # TODO debug

    def __bin2SMTNode (self, s, l, t):
        global g_is_bv_logic
        assert (len(t) == 1)
        value = int(t[0][2:], 2)
        bw = value.bit_length()
        return SMTBVConstNode (KIND_CONSTB, self.__bvSortNode (bw), value, bw)

    def __specConst2token (self, s, l, t):
        assert (len(t) == 1)
        if t[0] == SMTParser.TRUE or t[0] == SMTParser.FALSE:
            if g_is_bv_logic:
                return SMTBVConstNode (KIND_CONST, self.__bvSortNode (bw),
                        1 if t[0] == TRUE else 0, 1, t[0])
            else:
                return SMTConstNode (
                        KIND_CONST, self.__sortNode (
                                        self.scopes, "Bool"), t[0], t[0])

    def __sexprAttrv2token (self, s, l, t):
        if not t[0] == '(':
            return t
        return "({0:s})".format(" ".join([str(to) for to in t[1:]]))
        
    def __qualIdent2SMTNode (self, s, l, t):
        global g_is_bv_logic
        if t[0] == SMTParser.AS:
            return self.__funNode (self.scopes, t[1], KIND_ANNFUN, t[2])
        elif t[0] == '_':
            if t[1].find("bv") == 0 and g_is_bv_logic:
                assert (len(t) == 3)
                value = int(t[1][2:])
                bw = t[2].value
                return SMTBVConstNode (
                        KIND_CONSTN, self.__bvSortNode (bw), value, bw)
            else:
                assert (len(t) > 1)
                return self.__funNode (
                        self.scopes, t[1], KIND_FUN, None, indices = t[2:])
        else:
            return self.__funNode (self.scopes, t[0], KIND_FUN, None)

    def __varBind2SMTNode (self, s, l, t):
        return SMTVarBindNode (
                self.__funNode (self.scopes, t[0], KIND_FUN, t[1].sort), [t[1]])

    def __term2SMTNode (self, s, l, t):
        if len(t) == 1:
            return t
        if str(t[0]) == SMTParser.LET:
            assert (len(t) == 3)
            return self.__smtNode (KIND_LET, t[2].sort, [t[1][0:], t[2]])
        elif str(t[0]) == SMTParser.FORALL:
            assert (len(t) == 3)
            return self.__smtNode (KIND_FORALL, t[2].sort, [t[1][0:], t[2]])
        elif str(t[0]) == SMTParser.EXISTS:
            assert (len(t) == 3)
            return self.__smtNode (KIND_EXISTS, t[2].sort, [t[1][0:], t[2]])
        elif str(t[0]) == '!':
            assert (len(t) == 3)
            return self.__smtNode (KIND_ANNOTN, t[1].sort, [t[1], t[2][0:]])
        else:
            assert (isinstance(t[0], SMTFunNode))
            return self.__funAppNode (t[0], t[1][0:])

    def __cmd2SMTCmdNode (self, s, l, t):
        kind = t[0]
        if kind == KIND_DECLSORT:
            assert (len(t) == 3)
            return self.__cmdNode (KIND_DECLSORT, 
                    [self.__sortNode (self.cur_scope, t[1], t[2].value)])
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
            return self.__cmdNode (
                KIND_DECLFUN, 
                [self.__funNode (
                    self.cur_scope, t[1], KIND_FUN, t[3], t[2][0:])])
        elif kind == KIND_DEFFUN:
            assert (len(t) == 5)
            sorts = [to.sort for to in t[2]]
            return self.__cmdNode (
                KIND_DEFFUN, 
                [self.__funNode (self.cur_scope, t[1], KIND_FUN, t[3], sorts), 
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


def _filter_scopes (filter_fun = None, root = None):
    global g_scopes, g_subst_scopes

    scopes = []
    to_visit = [root if root != None else g_scopes]
    
    while to_visit:
        cur = to_visit.pop()
        if cur.id in g_subst_scopes:
            assert (g_subst_scopes[cur.id] == None)
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
                    if scope.id not in g_subst_scopes:
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
        
    _log (2, "  > {0:d} nodes substituted in total".format(nsubst_total))
    return nsubst_total

        
def _filter_cmds (filter_fun = None, root = None):
    global g_scopes

    cmds = []
    scopes = _filter_scopes (lambda x: x.kind not in (KIND_ESCOPE, KIND_FSCOPE),
                             root if root != None else g_scopes)
    to_visit = [s.cmds[0:] for s in scopes]
    while to_visit:
        cur_cmds = to_visit.pop()
        while cur_cmds:
            cur = cur_cmds.pop()
            if cur.id in g_subst_cmds:
                assert (g_subst_cmds[cur.id] == None)
                continue
            if filter_fun == None or filter_fun(cur):
                cmds.append(cur)
    return cmds


#def _substitute_cmds ():
#    global g_subst_cmds
#
#    _log (2)
#    _log (2, "substitute COMMANDS:")
#
#    nsubst_total = 0
#    cmds = _filter_cmds (lambda x: x not in (KIND_SETLOGIC, KIND_EXIT))
#    gran = len(cmds)
#
#    while gran > 0:
#        subsets = [cmds[s:s+gran] for s in range (0, len(cmds), gran)]
#        for subset in subsets:
#            cpy_subst_cmds = g_subst_cmds.copy()
#            nsubst = 0
#            # TODO
#
    

def ddsmt_main ():
    global g_tmpfile, g_outfile

    rounds = 0
    nsubst_total = 0
    nsubst = 1
    
    while nsubst:
        rounds += 1
        nsubst = 0

        nsubst += _substitute_scopes ()

        #_filter_cmds ()


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

        infile = args[0]
        g_outfile = args[1]
        g_cmd = shlex.split(args[2])

        if not os.path.exists(infile):
            raise DDSMTException ("given input file does not exist")
        #if os.path.exists(g_outfile):
        #    raise DDSMTException ("given output file does already exist")

        _log (1, "input  file: '{0:s}'".format(infile))
        _log (1, "output file: '{0:s}'".format(g_outfile))
        _log (1, "command:     '{0:s}'".format(args[2]))

        # set recursion limit for pyparsing (default of 1000 is not enough)
        sys.setrecursionlimit(4000)

        parser = SMTParser()
        #parsed = SMTParser.script.parseFile(infile, parseAll = True)
        SMTParser.script.parseFile(infile, parseAll = True)
        g_scopes = parser.scopes
        g_cur_scope = parser.cur_scope
        #print (" ".join(str(s) for s in parsed.asList()))
        #print ("--------------------------------------------------")
        #print (g_scopes)

        shutil.copyfile(infile, g_tmpfile)
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
    except DDSMTException as e:
        _cleanup()
        sys.exit(str(e))
    except KeyboardInterrupt as e:
        _cleanup()
        sys.exit("[ddsmt] {0:s}".format(str(e)))
