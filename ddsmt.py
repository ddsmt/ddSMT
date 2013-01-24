#! /usr/bin/env python3

from pyparsing import *
from optparse import OptionParser

# TODO define comments!!!

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
unknown  = empty - ~Word(printables).setName("<unknown>") # TODO needed?

spec_chars      = "+-/*=%?!.$_~&^<>@"

numeral         = '0' | Regex (r'[1-9][0-9]*')
decimal         = Combine (numeral + '.' + Word(nums))
hexadecimal     = Combine ("#x" - Word(hexnums))
binary          = Combine ("#b" - Word("01"))
string          = dblQuotedString

symbol_str      = Word(alphas + spec_chars, alphas + nums + spec_chars,
                       excludeChars = ['|', '\\'])
symbol          = '|' + symbol_str + '|' | symbol_str

spec_symbol_str = OneOrMore (Word (printables, excludeChars = ['|', '\\']))
spec_symbol     = '|' + spec_symbol_str + '|' | symbol_str


keyword         = Combine (':' - Word(alphas + nums + spec_chars))

spec_constant   = decimal | numeral | hexadecimal | binary | string
s_expr          = spec_constant | symbol | keyword

identifier      = symbol | LPAR + IDXED - symbol + OneOrMore(numeral) + RPAR

sort            = Forward()
sort           << (identifier | LPAR + identifier + OneOrMore(sort) + RPAR)

attr_value      = spec_constant | symbol | LPAR + ZeroOrMore(s_expr) - RPAR
attribute       = keyword + Optional (attr_value)
# be more lenient towards comment-style symbols in set-info
spec_attr_value = attr_value | spec_symbol
spec_attribute  = keyword + Optional (spec_attr_value)

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
b_value         = TRUE | FALSE
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
                  | keyword  \
                  | ALLSTAT  \

command         = LPAR   + SETLOGIC  + symbol + RPAR                          \
                  | LPAR + SETOPT    + option + RPAR                          \
                  | LPAR + SETINFO   + spec_attribute + RPAR                  \
                  | LPAR + DECLSORT  + symbol + numeral + RPAR                \
                  | LPAR + DEFSORT   + symbol + LPAR                          \
                                              + Group(ZeroOrMore(symbol))     \
                                       + RPAR + sort + RPAR                   \
                  | LPAR + DECLFUN   + symbol + LPAR                          \
                                              + Group(ZeroOrMore(sort))       \
                                       + RPAR + sort + RPAR                   \
                  | LPAR + DEFFUN    + symbol + LPAR                          \
                                              + Group(ZeroOrMore(sorted_var)) \
                                              + RPAR + sort + term            \
                                              + RPAR                          \
                  | LPAR + PUSH      + numeral + RPAR                         \
                  | LPAR + POP       + numeral + RPAR                         \
                  | LPAR + ASSERT    + term + RPAR                            \
                  | LPAR + CHECKSAT  + RPAR                                   \
                  | LPAR + GETASSERT + RPAR                                   \
                  | LPAR + GETPROOF  + RPAR                                   \
                  | LPAR + GETUCORE  + RPAR                                   \
                  | LPAR + GETVALUE  + LPAR + Group(OneOrMore(term))          \
                                     + RPAR + RPAR                            \
                  | LPAR + GETASSIGN + RPAR                                   \
                  | LPAR + GETOPT    + keyword + RPAR                         \
                  | LPAR + GETINFO   + info_flag + RPAR                       \
                  | LPAR + EXIT      + RPAR                                   \

script          = ZeroOrMore(command)
# ---------------------------------------------------------------------------- #


# ----------------------------- parse actions -------------------------------- #
def _hex2SMTNode (s, l, t):
    global g_logic
    assert (len(t) == 1)
    if (g_logic.find("BV") < 0):
        return SMTConstNode (KIND_CONSTH, value = int(t[0][2:], 16), 
                   original_str = t[0]) # TODO debug
    else:
        value = int(t[0][2:], 16)
        bw = value.bit_length()
        # TODO insert into sorts hash / check for existing sort
        #return SMTBVConstNode (KIND_CONSTH, 
        #                      SMTSortNode ("(_ BitVec {0:d})".format(bw)),
        #                      value,
        #                      bw)
        return SMTBVConstNode (KIND_CONSTH, 
                              SMTSortNode ("(_ BitVec {0:d})".format(bw)),
                              value,
                              bw,
                              original_str = t[0]) # TODO debug

def _bin2SMTNode (s, l, t):
    global g_logic
    assert (len(t) == 1)
    if (g_logic.find("BV") < 0):
        return SMTConstNode (KIND_CONSTB, value = int(t[0][2:], 2))
    else:
        value = int(t[0][2:], 2)
        bw = value.bit_length()
        bw = value.bit_length()
        # TODO insert into sorts hash / check for existing sort
        return SMTBVConstNode (KIND_CONSTB, 
                              SMTSortNode ("(_ BitVec {0:d})".format(bw)),
                              value,
                              bw)

def _qualIdent2SMTNode (s, l, t):
    global g_logic
    # TODO fun/var symbol should already be known -> lookup!!!!
    if (t[0] == AS):
        return SMTFunNode (t[1], KIND_ANNFUN, t[2])
    elif (t[0] == '_'):
        if (t[1].find("bv") == 0 and g_logic.find("BV") >= 0):
            assert (len(t) == 3)
            value = int(t[1][2:])
            bw = t[2].value
            # TODO insert into sorts hash / check for existing sort
            return SMTBVConstNode (KIND_CONSTN, 
                                  SMTSortNode ("(_ BitVec {0:d})".format(bw)),
                                  value,
                                  bw)
        else:
            assert (len(t) > 1)
            name = "(" + " ".join([str(s) for s in t]) + ")"  # TODO use indices
            # TODO insert into funs hash / check for existing sort
            return SMTFunNode (name, KIND_FUN, None)
    else:
       # TODO insert into sorts hash / check for existing sort
        return SMTFunNode (t[0], KIND_FUN, None)

def _varBind2SMTNode (s, l, t):
    #return SMTNode (SMTFunNode (t[0], KIND_FUN, t[1].sort), t[1])
    return SMTVarBindNode (SMTFunNode (t[0], KIND_FUN, t[1].sort), [t[1]])

def _term2SMTNode (s, l, t):
    if (len(t) == 1):
        return t
    if (str(t[0]) == LET):
        return SMTNode (KIND_LET, children = t[1:])  # TODO sort?
    elif (str(t[0]) == FORALL):
        return SMTNode (KIND_FORALL, children = t[1:])  # TODO sort?
    elif (str(t[0]) == EXISTS):
        return SMTNode (KIND_EXISTS, children = t[1:])  # TODO sort?
    elif (str(t[0]) == '!'):
        return SMTNode (KIND_ANNOTN, children = t[1:])  # TODO sort?
    else:
        assert (isinstance(t[0], SMTFunNode))
        return SMTFunAppNode (t[0], t[1])

def _cmd2SMTCmdNode (s, l, t):
    # TODO insert fun, sort nodes into funs, sorts hash
    kind = t[0]
    if (kind == KIND_DECLSORT):
        return SMTCmdNode (KIND_DECLSORT, [SMTSortNode (t[1], t[2].value)])
    elif (kind == KIND_DEFSORT):  # TODO not entirely supported yet
        string = "{0:s} ({1:s}) {2:s}".format(
                     t[1], 
                     " ".join([str(s) for s in t[2]]) if len(t[2]) > 0 else "",
                     str(t[3]))
        return SMTCmdNode (KIND_DEFSORT, [string])
    elif (kind == KIND_DECLFUN):
        return SMTCmdNode (
            KIND_DECLFUN, [SMTFunNode (t[1], KIND_FUN, t[3], t[2])])
    elif (kind == KIND_DEFFUN):
        return SMTCmdNode (
            KIND_DEFFUN, [SMTFunNode (t[1], KIND_FUN, t[3], t[2], [t[4]])])
    else:
        return SMTCmdNode (t[0], children = t[1:])


numeral.setParseAction(lambda s,l,t: 
        SMTConstNode (KIND_CONSTN, value = int(t[0])))
decimal.setParseAction(lambda s,l,t:
        SMTConstNode (KIND_CONSTD, value = float(t[0])))
hexadecimal.setParseAction(_hex2SMTNode)
binary.setParseAction(_bin2SMTNode)
string.setParseAction(lambda s,l,t:
        SMTConstNode (KIND_CONSTS, value = t[0]))

symbol_str.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))
spec_symbol_str.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

# TODO insert into sorts hash / check for existing sort
sort.setParseAction(lambda s,l,t:
        SMTSortNode (
            "(" + " ".join([str(to) for to in t]) + ")" if len(t) > 1 else t[0],
            len(t) - 1))

attribute.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

option.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

qual_identifier.setParseAction(_qualIdent2SMTNode)
sorted_var.setParseAction(lambda s,l,t: SMTFunNode (t[0], KIND_FUN, t[1]))
var_binding.setParseAction(_varBind2SMTNode)
term.setParseAction(_term2SMTNode)

command.setParseAction(_cmd2SMTCmdNode)
# ---------------------------------------------------------------------------- #

KIND_CONSTB = "const bin"
KIND_CONSTD = "const dec"
KIND_CONSTN = "const num"
KIND_CONSTH = "const hex"
KIND_CONSTS = "const string"

KIND_ANNOTN = "!"
KIND_ANNFUN = "annotated fun symbol"
KIND_ATTRIB = "attribute"
KIND_EXISTS = "exists"
KIND_FORALL = "forall"
KIND_FUN    = "var/fun symbol"
KIND_LET    = "let"
KIND_SORT   = "sort"
#KIND_AVAR   = "annotated-var"
#KIND_SVAR   = "sorted-var"  # TODO necessary?
#KIND_VAR    = "var"         # TODO not necessary
KIND_VARB   = "var-binding"

KIND_FALSE  = "false"
KIND_TRUE   = "true"

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

g_consts = [
              KIND_CONSTB, 
              KIND_CONSTD,
              KIND_CONSTN,
              KIND_CONSTH,
              KIND_CONSTS
           ]
g_funs   = [
              KIND_AND,
              KIND_IMPL,
              KIND_ITE,
              KIND_NOT,
              KIND_OR,
              KIND_XOR,
              KIND_EQ,
              KIND_DIST,
              KIND_LE,
              KIND_LT,
              KIND_GE,
              KIND_GT,
              KIND_ABS,
              KIND_ADD,
              KIND_DIV,
              KIND_MOD,
              KIND_MUL,
              KIND_NEG,
              KIND_SUB,
              KIND_RDIV,
              KIND_CONC,
              KIND_EXTR,
              KIND_REP,
              KIND_ROL,
              KIND_ROR,
              KIND_SEXT,
              KIND_ZEXT,
              KIND_BVADD,
              KIND_BVAND,
              KIND_BVASHR,
              KIND_BVCOMP,
              KIND_BVLSHR,
              KIND_BVMUL,
              KIND_BVNAND,
              KIND_BVNEG,
              KIND_BVNOR,
              KIND_BVNOT,
              KIND_BVOR, 
              KIND_BVSDIV,
              KIND_BVSGE,
              KIND_BVSGT,
              KIND_BVSHL,
              KIND_BVSLE,
              KIND_BVSLT,
              KIND_BVSMOD,
              KIND_BVSREM,
              KIND_BVSUB,
              KIND_BVUGE,
              KIND_BVUGT,
              KIND_BVUDIV,
              KIND_BVULE,
              KIND_BVULT,
              KIND_BVUREM,
              KIND_BVXNOR,
              KIND_BVXOR
            ]

g_cmds   = [
              KIND_ASSERT,
              KIND_CHECKSAT,
              KIND_DECLFUN,
              KIND_DEFFUN,
              KIND_DECLSORT,
              KIND_DEFSORT,
              KIND_GETASSERT,
              KIND_GETASSIGN,
              KIND_GETPROOF,
              KIND_GETUCORE,
              KIND_GETVALUE,
              KIND_GETOPT,
              KIND_GETINFO,
              KIND_EXIT,
              KIND_PUSH,
              KIND_POP,
              KIND_SETLOGIC,
              KIND_SETINFO,
              KIND_SETOPT
            ]

g_logic = ""

# TODO kind only in specialised nodes?

class SMTNode:
    g_id = 0

    def __init__(self, kind = "none", sort = None, children = []):
        SMTNode.g_id += 1
        self.id = SMTNode.g_id
        self.kind = kind
        self.sort = sort
        self.children = children
        # parents?

    def arity(self):
        return len(self.children)

    def __str__(self):
        if (self.kind == KIND_LET or 
            self.kind == KIND_FORALL or 
            self.kind == KIND_EXISTS):
            assert (len(self.children) == 2)
            assert (len(self.children[0]) > 0)
            return "({0:s} ({1:s}) {2:s})".format(
                    self.kind,
                    " ".join([str(s) for s in self.children[0]]),
                    str(self.children[1]))

        return "({0:s}{1:s})".format(self.kind, self.children2string())

    def children2string(self):
        if (self.arity() >= 1):
            return " " + " ".join([str(c) for c in self.children])
        else:
            return ""


class SMTVarBindNode (SMTNode):

    def __init__(self, var, children = []):
        assert (isinstance(var, SMTFunNode))
        assert (len(children) == 1)
        super().__init__(KIND_VARB, children = children)
        self.var = var

    def __str__(self):
        assert (len(self.children) == 1)
        return "({0:s} {1:s})".format(self.var.name, str(self.children[0]))

        
class SMTFunNode (SMTNode):

    def __init__(self, name, kind, sort, sorts = []):
        assert (kind == KIND_FUN or kind == KIND_ANNFUN)
        super().__init__(kind, sort)
        self.name = name
        self.sorts = sorts  # signature sorts

    def __str__(self):
        return self.name


class SMTFunAppNode (SMTNode):        

    def __init__(self, fun, children = []):
        global g_funs
        assert (isinstance(fun, SMTFunNode))
        assert (len(children) >= 1)
        kind = fun.kind
        if (kind not in g_funs and kind.find("(_") == 0):
            assert (kind.spit() > 2)
            kind = kind.split()[1]
        sort = fun.sort
        super().__init__(kind, sort, children)
        self.fun = fun

    def __str__(self):
        return "({0:s}{1:s})".format(self.fun.name, self.children2string())

class SMTSortNode (SMTNode):

    def __init__(self, name, nparams = 0):
        super().__init__(KIND_SORT)
        self.name = name
        self.nparams = nparams
    
    def __str__(self):
        return self.name


class SMTConstNode (SMTNode):

    # TODO sort??
    def __init__(self, kind, sort = None, value = 0, original_str = "none"):
        assert (kind in g_consts)                    # ^^^^ TODO debug
        super().__init__(kind, sort)
        self.value = value
        self.original_str = original_str # TODO debug

    def __str__(self):
        #return str(self.value)
        return "{0:s}".format(self.original_str if self.original_str != "none"
                                                else str(self.value))


class SMTBVConstNode (SMTConstNode):

    def __init__(self, kind, sort, value = 0, bitwidth = 1, original_str = "none"):                                                         #^^^^ TODO debug
        assert (kind in g_consts)
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

    def __init__(self, kind, children = []):
        global g_logic, g_cmds
        assert (kind in g_cmds)
        self.kind = kind
        self.children = children
        if (kind == KIND_SETLOGIC):
            assert (len(children) == 1)
            g_logic = children[0]

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
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            assert (len(fun.children[0]) == 1)
            return "({0:s} {1:s} ({2:s}) {3:s} {4:s})".format(
                    self.kind,
                    fun.name,
                    " ".join([str(s) for s in fun.sorts]) if len(fun.sorts) > 0 
                                                          else "",
                    str(fun.sort),
                    str(fun.children[0]))
        elif (self.kind == DECLSORT):
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTSortNode))
            sort = self.children[0]
            return "({0:s} {1:s} {2:d})".format(
                    self.kind, sort.name, sort.nparams)
        elif (self.kind == GETVALUE):
            return "({0:s} ({1:s}))".format(self.kind, self.children2string())

        return "({0:s}{1:s})".format(self.kind, self.children2string())

    def children2string(self):
        if (self.arity() >= 1):
            return " " + " ".join([str(c) for c in self.children])
        else:
            return ""

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
    
