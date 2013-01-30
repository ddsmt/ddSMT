#! /usr/bin/env python3

# TODO: attributes currently handled as string only
#       -> no manipulation of attribute values

from pyparsing import *
from optparse import OptionParser

#KIND_FALSE  = "false"
#KIND_TRUE   = "true"

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
    [ KIND_CONSTB, KIND_CONSTD, KIND_CONSTN, KIND_CONSTH, KIND_CONSTS ]

g_fun_kinds   = \
    [ KIND_AND,    KIND_IMPL,   KIND_ITE,    KIND_NOT,    KIND_OR,    
      KIND_XOR,    KIND_EQ,     KIND_DIST,   KIND_LE,     KIND_LT,
      KIND_GE,     KIND_GT,     KIND_ABS,    KIND_ADD,    KIND_DIV,
      KIND_MOD,    KIND_MUL,    KIND_NEG,    KIND_SUB,    KIND_RDIV,
      KIND_CONC,   KIND_EXTR,   KIND_REP,    KIND_ROL,    KIND_ROR,
      KIND_SEXT,   KIND_ZEXT,   KIND_BVADD,  KIND_BVAND,  KIND_BVASHR,
      KIND_BVCOMP, KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, KIND_BVNEG, 
      KIND_BVNOR,  KIND_BVNOT,  KIND_BVOR,   KIND_BVSDIV, KIND_BVSGE,
      KIND_BVSGT,  KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT,  KIND_BVSMOD, 
      KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,  KIND_BVUDIV, 
      KIND_BVULE,  KIND_BVULT,  KIND_BVUREM, KIND_BVXNOR, KIND_BVXOR ]

g_cmd_kinds   = \
    [ KIND_ASSERT,   KIND_CHECKSAT, KIND_DECLFUN,   KIND_DEFFUN, 
      KIND_DECLSORT, KIND_DEFSORT,  KIND_GETASSERT, KIND_GETASSIGN, 
      KIND_GETPROOF, KIND_GETUCORE, KIND_GETVALUE,  KIND_GETOPT,
      KIND_GETINFO,  KIND_EXIT,     KIND_PUSH,      KIND_POP,
      KIND_SETLOGIC, KIND_SETINFO,  KIND_SETOPT ]


class DDSMTError (Exception):

    def __init__(self, msg):
        self.msg = msg
    
    def __str__(self):
        return "[ddsmt] Error: {0:s}".format(self.msg)


class SMTNode:

    g_id = 0

    def __init__(self, kind = "none", sort = None, children = []):
        assert (isinstance (children, list))
        SMTNode.g_id += 1
        self.id = SMTNode.g_id
        self.kind = kind
        self.sort = sort
        self.children = children

    def arity(self):
        return len(self.children)

    def __str__(self):
        if (self.kind == KIND_ANNOTN):
            assert (len(self.children) == 2)
            return "(! {0:s} {1:s})".format(
                    str(self.children[0]), 
                    " ".join([str(c) for c in self.children[1]]))

        return "({0:s}{1:s})".format(self.kind, self.children2string())

    def children2string(self):
        if (self.arity() >= 1):
            strings = []
            for c in self.children:
                if (isinstance(c, list)):
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
        if (self.indices == []):
            return self.name
        return "(_ {0:s} {1:s})".format(
                self.name, " ".join([str(s) for s in self.indices]))


class SMTFunAppNode (SMTNode):        

    def __init__(self, fun, children = []):
        global g_fun_kinds
        assert (isinstance(fun, SMTFunNode))
        assert (len(children) >= 1)
        if (fun.name in g_fun_kinds):
            kind = fun.name
        else:
            kind = fun.kind
        sort = fun.sort
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
        if (self.kind == KIND_CONSTH):
            #return "#x{0:s}".format(hex(self.value)[2:])
            if (self.original_str != "none"):
                return self.original_str
            else:
                return "#x{0:s}".format(hex(self.value)[2:]) 
        elif (self.kind == KIND_CONSTB):
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
        if (self.kind == DECLFUN):
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            return "({0:s} {1:s} ({2:s}) {3:s})".format(
                    self.kind, 
                    fun.name,
                    " ".join([str(s) for s in fun.sorts]) if len(fun.sorts) > 0 
                                                          else "",
                    str(fun.sort))
        elif (self.kind == DEFFUN):
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
        elif (self.kind == DECLSORT):
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTSortNode))
            sort = self.children[0]
            return "({0:s} {1:s} {2:d})".format(
                    self.kind, sort.name, sort.nparams)

        return "({0:s}{1:s})".format(self.kind, self.children2string())

    def children2string(self):
        if (self.arity() >= 1):
            strings = []
            for c in self.children:
                if (isinstance (c, list)):
                    strings.append("({0:s})".format(
                        " ".join([str(cc) for cc in c])))
                else:
                    strings.append(str(c))
            return " " + " ".join([s for s in strings])
        else:
            return ""


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
        npush = 0
        strings = []
        for cmd in self.cmds:
            strings.append(str(cmd))
            if (cmd.kind == KIND_PUSH):
                assert (len(self.scopes) > 0)
                while (self.scopes[npush].kind in (KIND_FSCOPE, KIND_ESCOPE)):
                    npush += 1
                assert (npush < len(self.scopes))
                strings.append(str(self.scopes[npush]))
                npush += 1
        return " ".join([s for s in strings])



g_logic = ""
g_is_bv_logic = False

g_scopes = SMTScopeNode ()
g_cur_scope = g_scopes









# ============================= PARSER ======================================= #

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


# ----------------------------- SMTLib 2 grammar ----------------------------- #
unknown  = empty - ~Word(printables).setName("<unknown>")

comment         = Suppress (';' + restOfLine)

spec_chars      = "+-/*=%?!.$_~&^<>@"

numeral         = '0' | Regex (r'[1-9][0-9]*')
decimal         = Combine (numeral + '.' + Word(nums))
hexadecimal     = Combine ("#x" - Word(hexnums))
binary          = Combine ("#b" - Word("01"))
string          = dblQuotedString

symb_str        = Word(alphas + spec_chars, alphas + nums + spec_chars,
                       excludeChars = ['|', '\\'])
symbol          = NoMatch().setName("symbol") | '|' + symb_str + '|' | symb_str

spec_symb_str   = OneOrMore (Word (printables, excludeChars = ['|', '\\']))
spec_symbol     = '|' + spec_symb_str + '|' | symb_str


keyword         = NoMatch().setName("keyword") \
                  | Combine (':' - Word(alphas + nums + spec_chars))

spec_constant   = decimal | numeral | hexadecimal | binary | string
s_expr          = Forward()
s_expr         << (spec_constant \
                   | symbol      \
                   | keyword     \
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

attribute       = NoMatch().setName("attribute") \
                  | keyword + Optional (attr_value)

# be more lenient towards comment-style symbols in set-info
spec_attr_value = attr_value | spec_symbol
spec_attribute  = NoMatch().setName("attribute") \
                  | keyword + Optional (spec_attr_value)

term            = Forward()
qual_identifier = identifier | LPAR + AS - identifier + sort + RPAR
var_binding     = LPAR + symbol + term + RPAR
sorted_var      = LPAR + symbol + sort + RPAR
term           << (spec_constant                                               \
                   | qual_identifier                                           \
                   | LPAR + LET - LPAR + Group(OneOrMore(var_binding)) + RPAR  \
                                + term + RPAR                                  \
                   | LPAR + FORALL - LPAR + Group(OneOrMore(sorted_var)) - RPAR\
                                   + term + RPAR                               \
                   | LPAR + EXISTS - LPAR + Group(OneOrMore(sorted_var)) - RPAR\
                                   + term + RPAR                               \
                   | LPAR + '!' - term + Group(OneOrMore(attribute)) + RPAR    \
                   | LPAR + qual_identifier + Group(OneOrMore(term)) + RPAR)      
b_value         = NoMatch().setName("Boolean value") | TRUE | FALSE

option          = PRINTSUCC - b_value   \
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

info_flag       = ERRBEHAVR  \
                  | NAME     \
                  | AUTHORS  \
                  | VERSION  \
                  | STATUS   \
                  | RUNKNOWN \
                  | ALLSTAT  \
                  | keyword

command         = NoMatch().setName("command")                                \
                  | LPAR   + SETLOGIC  - symbol + RPAR                        \
                  | LPAR + SETOPT    - option - RPAR                          \
                  | LPAR + SETINFO   - spec_attribute - RPAR                  \
                  | LPAR + DECLSORT  - symbol + numeral + RPAR                \
                  | LPAR + DEFSORT   - symbol + LPAR                          \
                                              + Group(ZeroOrMore(symbol))     \
                                       + RPAR + sort + RPAR                   \
                  | LPAR + DECLFUN   - symbol + LPAR                          \
                                              + Group(ZeroOrMore(sort))       \
                                       + RPAR + sort + RPAR                   \
                  | LPAR + DEFFUN    - symbol + LPAR                          \
                                              + Group(ZeroOrMore(sorted_var)) \
                                              - RPAR + sort + term            \
                                              + RPAR                          \
                  | LPAR + PUSH      - numeral + RPAR                         \
                  | LPAR + POP       - numeral + RPAR                         \
                  | LPAR + ASSERT    - term + RPAR                            \
                  | LPAR + CHECKSAT  - RPAR                                   \
                  | LPAR + GETASSERT - RPAR                                   \
                  | LPAR + GETPROOF  - RPAR                                   \
                  | LPAR + GETUCORE  - RPAR                                   \
                  | LPAR + GETVALUE  - LPAR + Group(OneOrMore(term))          \
                                     + RPAR + RPAR                            \
                  | LPAR + GETASSIGN - RPAR                                   \
                  | LPAR + GETOPT    - keyword + RPAR                         \
                  | LPAR + GETINFO   - info_flag - RPAR                       \
                  | LPAR + EXIT      - RPAR                                   \
                  | unknown

script          = OneOrMore(command)
# ---------------------------------------------------------------------------- #


# ----------------------------- parse actions -------------------------------- #
#def _is_bvSortNode (node):
#    assert (isinstance (node, SMTSortNode))
#    if (node.name.find("BitVec") > 0):
#        return true
#    return false

def _open_scope (nscopes = 1, kind = KIND_SCOPE):
    global g_cur_scope
    for i in range (nscopes):
        new_scope = SMTScopeNode(g_cur_scope.level + 1, g_cur_scope, kind)
        g_cur_scope.scopes.append(new_scope)
        g_cur_scope = new_scope


def _close_scope (nscopes = 1):
    global g_cur_scope
    for i in range (nscopes):
        g_cur_scope = g_cur_scope.prev
        assert (g_cur_scope != None)

def _add_sort (name, nparams, scope):
    assert (_find_sort (name) == None)
    sort = SMTSortNode (name, nparams) 
    scope.sorts[name] = sort
    return sort

def _find_sort (name):
    global g_cur_scope
    scope = g_cur_scope
    while scope != None:
        if (name in scope.sorts):
            return scope.sorts[name]
        scope = scope.prev
    return None

def _add_fun (name, kind, sort, sorts, indices, scope):
    assert (_find_fun (name) == None)
    fun = SMTFunNode (name, kind, sort, sorts, indices)
    scope.funs[name] = fun
    return fun

def _find_fun (name):
    global g_cur_scopes
    scope = g_cur_scope
    while scope != None:
        if (name in scope.funs):
            return scope.funs[name]
        scope = scope.prev
    return None


def _cmdNode (kind, children = []):
    global g_logic

    if (kind == KIND_SETLOGIC):
        assert (len(children) == 1)
        g_logic = children[0]
        g_is_bv_logic = g_logic.find("BV") >= 0

    cmd = SMTCmdNode (kind, children)
    g_cur_scope.cmds.append(cmd)

    if (kind == KIND_PUSH):
        assert (len(children) == 1)
        assert (isinstance (children[0], SMTConstNode))
        _open_scope (children[0].value)
    elif (kind == KIND_POP):
        assert (len(children) == 1)
        assert (isinstance (children[0], SMTConstNode))
        _close_scope (children[0].value)
                
    return cmd


def _smtNode (kind, sort = None, children = []):
    global g_cur_scope
    if (kind in (KIND_FORALL, KIND_EXISTS)):
        prev_scope = g_cur_scope
        assert (len(children) == 2)
        svars = children[0]
        _open_scope (kind = KIND_FSCOPE if kind == KIND_FORALL else KIND_ESCOPE)
        for s in svars:
            assert (_find_fun (s.name) != None)
            assert (s.name in prev_scope.funs)
            del(prev_scope.funs[s.name])
            g_cur_scope.funs[s.name] = s
        _close_scope ()
    
    return SMTNode (kind, sort, children)


def _funNode (name, kind, sort, sorts = [], indices = [], scope = g_scopes):
    fun = _find_fun (name)
    if (fun == None):
        return _add_fun (name, kind, sort, sorts, indices,scope)
    assert (fun.name == name)
    return fun


def _sortNode (name, nparams = 0, scope = g_scopes):
    sort = _find_sort (name)
    if (sort == None):
        # add sort to scope level 0 (otherwise it would have been declared
        # or defined already and thus be found previously)
        return _add_sort (name, nparams, scope)
    assert (sort.name == name)
    return sort

def _bvSortNode (bw):
    name = "(_ BitVec {0:d})".format(bw)
    return _sortNode (name)


def _funapp2Sort (fun, children):
    global g_is_bv_logic
    # TODO support for other than bv operations
    if (not g_is_bv_logic):
        return None
    else:
        if (kind in (KIND_BVSGE, KIND_BVSGT, KIND_BVSLE, KIND_BVSLT, 
                     KIND_BVUGE, KIND_BVUGT, KIND_BVULE, KIND_BVULT)):
            return _bvSortNode (1)
        elif (kind == KIND_ZEXT or kind == KIND_SEXT):
            assert (len(children) == 1)
            assert (len(fun.indices) == 1)
            return _bvSortNode (fun.indices[0] + children[0].bw)
        elif (kind == KIND_REP):
            assert (len(children) == 1)
            assert (len(fun.indices) == 1)
            return _bvSortNode (fun.indices[0] * children[0].bw)
        elif (kind == KIND_EXTR):
            assert (len(children) == 1)
            assert (len(fun.indices) == 2)
            return _bvSortNode (fun.indices[0] - fun.indices[1] + 1)
        elif (kind == KIND_CONC):
            assert (len(children) == 2)
            return _bvSortNode (children[0].bw + children[1].bw)
        else:
            assert (len(children) > 0)
            return _bvSortNode (children[0].bw)


def _hex2SMTNode (s, l, t):
    global g_is_bv_logic
    assert (len(t) == 1)
    if (not g_is_bv_logic):
        return SMTConstNode (KIND_CONSTH, value = int(t[0][2:], 16), 
                   original_str = t[0]) # TODO debug
    else:
        value = int(t[0][2:], 16)
        bw = value.bit_length()
        return SMTBVConstNode (KIND_CONSTH, 
                               _bvSortNode (bw),
                               value,
                               bw,
                               original_str = t[0]) # TODO debug

def _bin2SMTNode (s, l, t):
    global g_is_bv_logic
    assert (len(t) == 1)
    if (not g_is_bv_logic):
        return SMTConstNode (KIND_CONSTB, value = int(t[0][2:], 2))
    else:
        value = int(t[0][2:], 2)
        bw = value.bit_length()
        return SMTBVConstNode (KIND_CONSTB, 
                               _bvSortNode (bw),
                               value,
                               bw)
def _sexprAttrv2token (s, l, t):
    if (not t[0] == '('):
        return t
    return "({0:s})".format(" ".join([str(to) for to in t[1:]]))
    
def _qualIdent2SMTNode (s, l, t):
    global g_is_bv_logic
    if (t[0] == AS):
        return _funNode (t[1], KIND_ANNFUN, t[2])
    elif (t[0] == '_'):
        if (t[1].find("bv") == 0 and g_is_bv_logic):
            assert (len(t) == 3)
            value = int(t[1][2:])
            bw = t[2].value
            return SMTBVConstNode (KIND_CONSTN, _bvSortNode (bw), value, bw)
        else:
            assert (len(t) > 1)
            return _funNode (t[1], KIND_FUN, None, indices = t[2:])
    else:
        return _funNode (t[0], KIND_FUN, None)

def _varBind2SMTNode (s, l, t):
    return SMTVarBindNode (_funNode (t[0], KIND_FUN, t[1].sort), [t[1]])

def _term2SMTNode (s, l, t):
    if (len(t) == 1):
        return t
    if (str(t[0]) == LET):
        assert (len(t) == 3)
        return _smtNode (KIND_LET, t[2].sort, [t[1][0:], t[2]])
    elif (str(t[0]) == FORALL):
        assert (len(t) == 3)
        return _smtNode (KIND_FORALL, t[2].sort, [t[1][0:], t[2]])
    elif (str(t[0]) == EXISTS):
        assert (len(t) == 3)
        return _smtNode (KIND_EXISTS, t[2].sort, [t[1][0:], t[2]])
    elif (str(t[0]) == '!'):
        assert (len(t) == 3)
        return _smtNode (KIND_ANNOTN, t[1].sort, [t[1], t[2][0:]])
    else:
        assert (isinstance(t[0], SMTFunNode))
        return SMTFunAppNode (t[0], t[1][0:])

def _cmd2SMTCmdNode (s, l, t):
    global g_cur_scope
    kind = t[0]
    if (kind == KIND_DECLSORT):
        assert (len(t) == 3)
        return _cmdNode (KIND_DECLSORT, 
                         [_sortNode (t[1], t[2].value, g_cur_scope)])
    elif (kind == KIND_DEFSORT):
        assert (len(t) == 4)
        # TODO sort is currently not added here, concrete sort is added to 
        # scope level 0 when encountered !!!!
        string = "{0:s} ({1:s}) {2:s}".format(
                     t[1], 
                     " ".join([str(s) for s in t[2]]) if len(t[2]) > 0 else "",
                     str(t[3]))
        return _cmdNode (KIND_DEFSORT, [string])
    elif (kind == KIND_DECLFUN):
        assert (len(t) == 4)
        return _cmdNode (
            KIND_DECLFUN, 
            [_funNode (t[1], KIND_FUN, t[3], t[2][0:], scope = g_cur_scope)])
    elif (kind == KIND_DEFFUN):
        assert (len(t) == 5)
        sorts = [to.sort for to in t[2]]
        return _cmdNode (
            KIND_DEFFUN, 
            [_funNode (t[1], KIND_FUN, t[3], sorts, scope = g_cur_scope), 
             t[2][0:], 
             t[4]])
    elif (kind == KIND_GETVALUE):
        assert (len(t) == 2)
        return _cmdNode (KIND_GETVALUE, [t[1][0:]])
    else:
        return _cmdNode (t[0], children = t[1:])


numeral.setParseAction(lambda s,l,t: 
        SMTConstNode (KIND_CONSTN, _sortNode ("Int"), value = int(t[0])))
decimal.setParseAction(lambda s,l,t:
        SMTConstNode (KIND_CONSTD, _sortNode ("Real"), value = float(t[0])))
hexadecimal.setParseAction(_hex2SMTNode)
binary.setParseAction(_bin2SMTNode)
string.setParseAction(lambda s,l,t:
        SMTConstNode (KIND_CONSTS, value = t[0]))

symb_str.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))
spec_symb_str.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

s_expr.setParseAction(_sexprAttrv2token)

sort.setParseAction(lambda s,l,t:
        _sortNode (
            "(" + " ".join([str(to) for to in t]) + ")" if len(t) > 1 else t[0],
            len(t) - 1))

attr_value.setParseAction(_sexprAttrv2token)
attribute.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

option.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

qual_identifier.setParseAction(_qualIdent2SMTNode)
sorted_var.setParseAction(lambda s,l,t: 
        _funNode (t[0], KIND_FUN, t[1], scope = g_cur_scope))
var_binding.setParseAction(_varBind2SMTNode)
term.setParseAction(_term2SMTNode)

command.setParseAction(_cmd2SMTCmdNode)

script.ignore(comment)
# ---------------------------------------------------------------------------- #






if __name__ == "__main__":
    
    usage = "%prog [options] <infile> <outfile> \"<cmd> <cmd_options>\""

    oparser = OptionParser (usage)
    # TODO add options here
    (opts, args) = oparser.parse_args ()
    
    #if len (args) != 3: TODO disabled for debugging
    #    oparser.error ("invalid number of arguments")

    # TODO recursion depth handling (dynamic? with default > 1000)
    infile = args[0]
    import sys
    sys.setrecursionlimit(4000)
    from pprint import pprint
    try:
        parsed = script.parseFile(infile, parseAll = True)
        print (" ".join(str(s) for s in parsed.asList()))
        print ("--------------------------------------------------")
        print (g_scopes)
   #     print ("## len:" + str(len(g_scopes.scopes)))
   #     for s in g_scopes.scopes:
   #         print ("+++")
   #         print (str(s))
   #         print ("+++")

    except RuntimeError:
        print ("exceeded recursion limit again!")

   # try:
#    parsed = script.parseFile(infile, parseAll = True)
#    print (" ".join(str(s) for s in parsed.asList()))
  #  except ParseException as err:
  #      print (err.line)
  #      print (" "*(err.column-2) + "^")
  #      print (err)
   # for s in parsed.asList():
   #     print ("-----")
   #     print (s)
    
