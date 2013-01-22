#! /usr/bin/env python3

from pyparsing import *
from optparse import OptionParser

# TODO define comments!!!

LBRACE = Suppress('(')
RBRACE = Suppress(')')

AS     = Keyword("as")
LET    = Keyword("let")
FORALL = Keyword("forall")
EXISTS = Keyword("exists")

TRUE  = Keyword("true")
FALSE = Keyword("false")

PRINTSUCC = Keyword(":print-success")
EXPANDDEF = Keyword(":expand-definitions")
INTERMODE = Keyword(":interactive-mode")
PRODPROOF = Keyword(":produce-proofs")
PRODUCORE = Keyword(":produce-unsat-cores")
PRODMODEL = Keyword(":produce-models")
PRODASSGN = Keyword(":produce-assignments")
ROUTCHANN = Keyword(":regular-output-channel")
DOUTCHANN = Keyword(":diagrnostic-output-channel")
RANDMSEED = Keyword(":random-seed")
VERBOSITY = Keyword(":verbosity")

ERRBEHAVR = Keyword(":error-behavior")
NAME      = Keyword(":name")
AUTHORS   = Keyword(":authors")
VERSION   = Keyword(":version")
STATUS    = Keyword(":status")
RUNKNOWN  = Keyword(":reason-unknown")
ALLSTAT   = Keyword(":all-statistics")

SETLOGIC  = Keyword("set-logic")
SETOPT    = Keyword("set-option")
SETINFO   = Keyword("set-info")
DECLSORT  = Keyword("declare-sort")
DEFSORT   = Keyword("define-sort")
DECLFUN   = Keyword("declare-fun")
DEFFUN    = Keyword("define-fun")
PUSH      = Keyword("push")
POP       = Keyword("pop")
ASSERT    = Keyword("assert")
CHECKSAT  = Keyword("check-sat")
GETASSERT = Keyword("get-assertions")
GETPROOF  = Keyword("get-proof")
GETUCORE  = Keyword("get-unsat-core")
GETVALUE  = Keyword("get-value")
GETASSIGN = Keyword("get-assignment")
GETOPT    = Keyword("get-option")
GETINFO   = Keyword("get-info")
EXIT      = Keyword("exit")


numeral         = '0' | Regex (r'[1-9][0-9]*')
decimal         = Combine (numeral + '.' + Word(nums))
hexadecimal     = Combine ("#x" + Word(hexnums))
binary          = Combine ("#b" + Word("01"))
string          = dblQuotedString

def _hex2SMTNode(s, l, t):
    assert(len(t) == 1)
    if (g_logic.find("BV") < 0):
        return SMTConstNode(KIND_CONSTH, value = int(t[0][2:], 16))
    else:
        value = int(t[0][2:], 16)
        bw = value.bit_length()
        # TODO insert into sorts hash / check for existing sort
        return SMTBVConstNode(KIND_CONSTH, 
                              SMTSortNode("(_ BitVec {0:d})".format(bw)),
                              value,
                              bw)

def _bin2SMTNode(s, l, t):
    assert(len(t) == 1)
    if (g_logic.find("BV") < 0):
        return SMTConstNode(KIND_CONSTB, value = int(t[0][2:], 2))
    else:
        value = int(t[0][2:], 2)
        bw = value.bit_length()
        bw = value.bit_length()
        # TODO insert into sorts hash / check for existing sort
        return SMTBVConstNode(KIND_CONSTB, 
                              SMTSortNode("(_ BitVec {0:d})".format(bw)),
                              value,
                              bw)

numeral.setParseAction(lambda s,l,t: 
        SMTConstNode(KIND_CONSTN, value = int(t[0])))
decimal.setParseAction(lambda s,l,t:
        SMTConstNode(KIND_CONSTD, value = float(t[0])))
hexadecimal.setParseAction(_hex2SMTNode)
binary.setParseAction(_bin2SMTNode)
string.setParseAction(lambda s,l,t:
        SMTConstNode(KIND_CONSTS, value = t[0]))

specialchars    = "+-/*=%?!.$_~&^<>@"

symbol          = Word(alphas + specialchars, alphas + nums + specialchars)
keyword         = Combine (':' + Word(alphas + nums + specialchars))

# s-expressions
spec_constant   = numeral | decimal | hexadecimal | binary | string
s_expr          = spec_constant | symbol | keyword

# identifier
identifier      = symbol | LBRACE + '_' + symbol + OneOrMore(numeral) + RBRACE
# sorts
sort            = Forward()
sort           << (identifier | LBRACE + identifier + OneOrMore(sort) + RBRACE)
# TODO insert into sorts hash / check for existing sort
sort.setParseAction(lambda s,l,t:
        SMTSortNode(
            "(" + " ".join([str(to) for to in t]) + ")" if len(t) > 1 else t[0],
            len(t) - 1))

# attributes
attribute_value = spec_constant | symbol | LBRACE + ZeroOrMore(s_expr) + RBRACE
attribute       = keyword | keyword + attribute_value
attribute.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

# terms
term            = Forward()
qual_identifier = identifier | LBRACE + AS + identifier + sort + RBRACE
var_binding     = LBRACE + symbol + term + RBRACE
sorted_var      = LBRACE + symbol + sort + RBRACE
term           << (spec_constant                                               \
                   | qual_identifier                                           \
                   | LBRACE + qual_identifier + Group(OneOrMore(term))         \
                            + RBRACE       \
                   | LBRACE + LET + LBRACE + Group(OneOrMore(var_binding))     \
                                  + RBRACE + term + RBRACE                     \
                   | LBRACE + FORALL + LBRACE + Group(OneOrMore(sorted_var))   \
                                     + RBRACE + term + RBRACE                  \
                   | LBRACE + EXISTS + LBRACE + Group(OneOrMore(sorted_var))   \
                                  + RBRACE + term + RBRACE                     \
                   | LBRACE + '!' + term + Group(OneOrMore(attribute)) + RBRACE)

def _qualIdent2SMTNode(s, l, t):
    print ("====> " + str(t))
    # TODO fun/var symbol should already be known -> lookup!!!!
    if (t[0] == AS):
        return SMTFunNode(t[1], KIND_ANNFUN, t[2])
    elif (t[0] == '_' and t[1].find("bv") == 0 and g_logic.find("BV") >= 0):
        assert(len(t) == 3)
        value = int(t[1][2:])
        print("#### value" + value)
        bw = t[2].value
        # TODO insert into sorts hash / check for existing sort
        return SMTBVConstNode(KIND_CONSTN, 
                              SMTSortNode("(_ BitVec {0:d})".format(bw)),
                              value,
                              bw)
    else:
       # TODO insert into sorts hash / check for existing sort
        return SMTFunNode(t[0], KIND_FUN, None)

qual_identifier.setParseAction(_qualIdent2SMTNode)
sorted_var.setParseAction(lambda s,l,t: SMTFunNode(t[0], KIND_FUN, t[1]))

def _varBind2SMTNode(s, l, t):
    print ("----> " + str(t) + " " + str(len(t)))
    return t
    assert(isinstance(t[1], SMTNode))
    return SMTVarBindNode(SMTFunNode(t[0], KIND_FUN, t[1].sort), t[1])

var_binding.setParseAction(_varBind2SMTNode)


def _term2SMTNode(s, l, t):
    print("############ " + str(t))
    if (len(t) == 1):
        print (">>>> len = 1")
        return t
    if (str(t[0]) == LET):
        # do something
        return t
    elif (str(t[0]) == FORALL):
        # do something
        return t
    elif (str(t[0]) == EXISTS):
        # do something
        return t
    elif (str(t[0]) == '!'):
        # do something
        return t
    else:
        print (">>>> fun app")
        assert(isinstance(t[0], SMTFunNode))
        return SMTFunAppNode(t[0], t[1])

        
    #print ("adsfasdf " + str(t[2][3:]))
    #if (t[1] == '_' and t[2].find("bv") == 0 and g_logic.find("BV") >= 0):
    #    assert (len(t[3:]) == 1)
    #    return SMTBVNode(KIND_CONSTN, 
    #                     SMTSortNode("(_ BitVec {1:s})".format(t[3])),
    #                     str(t[2][3:].value),
    #                     int(t[3]))
    #    # TODO insert sort into sorts hash / check for existing sort
    #else:
    #    return t[0]
term.setParseAction(_term2SMTNode)
#sorted_var.setParseAction(lambda s,l,t:
#                SMTVarNode(children = t))
# cmd options
b_value         = TRUE | FALSE
option          = PRINTSUCC + b_value   \
                  | EXPANDDEF + b_value \
                  | INTERMODE + b_value \
                  | PRODPROOF + b_value \
                  | PRODUCORE + b_value \
                  | PRODMODEL + b_value \
                  | PRODASSGN + b_value \
                  | ROUTCHANN + string  \
                  | DOUTCHANN + string  \
                  | RANDMSEED + numeral \
                  | VERBOSITY + numeral \
                  | attribute
option.setParseAction(lambda s,l,t: " ".join([str(to) for to in t]))

# info flags
info_flag       = ERRBEHAVR  \
                  | NAME     \
                  | AUTHORS  \
                  | VERSION  \
                  | STATUS   \
                  | RUNKNOWN \
                  | keyword  \
                  | ALLSTAT

# commands
command         = LBRACE   + SETLOGIC  + symbol + RBRACE                       \
                  | LBRACE + SETOPT    + option + RBRACE                       \
                  | LBRACE + SETINFO   + attribute + RBRACE                    \
                  | LBRACE + DECLSORT  + symbol + numeral + RBRACE             \
                  | LBRACE + DEFSORT   + symbol + LBRACE                       \
                                                + Group(ZeroOrMore(symbol))    \
                                       + RBRACE + sort + RBRACE                \
                  | LBRACE + DECLFUN   + symbol + LBRACE                       \
                                                + Group(ZeroOrMore(sort))      \
                                       + RBRACE + sort + RBRACE                \
                  | LBRACE + DEFFUN    + symbol + LBRACE                       \
                                                + Group(ZeroOrMore(sorted_var))\
                                                + RBRACE + sort + term         \
                                                + RBRACE                       \
                  | LBRACE + PUSH      + numeral + RBRACE                      \
                  | LBRACE + POP       + numeral + RBRACE                      \
                  | LBRACE + ASSERT    + term + RBRACE                         \
                  | LBRACE + CHECKSAT  + RBRACE                                \
                  | LBRACE + GETASSERT + RBRACE                                \
                  | LBRACE + GETPROOF  + RBRACE                                \
                  | LBRACE + GETUCORE  + RBRACE                                \
                  | LBRACE + GETVALUE  + LBRACE + Group(OneOrMore(term))       \
                                       + RBRACE + RBRACE                       \
                  | LBRACE + GETASSIGN + RBRACE                                \
                  | LBRACE + GETOPT    + keyword + RBRACE                      \
                  | LBRACE + GETINFO   + info_flag + RBRACE                    \
                  | LBRACE + EXIT      + RBRACE

def _cmd2SMTCmdNode(s, l, t):
    print ("--> " + str(t))
    # TODO insert fun, sort nodes into funs, sorts hash
    kind = t[0]
    if (kind == KIND_DECLSORT):
        return SMTCmdNode(KIND_DECLSORT, [SMTSortNode(t[1], t[2].value)])
    elif (kind == KIND_DEFSORT):  # TODO not entirely supported yet
        string = "{0:s} ({1:s}) {2:s}".format(
                     t[1], 
                     " ".join([str(s) for s in t[2]]) if len(t[2]) > 1 else "",
                     str(t[3]))
        return SMTCmdNode(KIND_DEFSORT, [string])
    elif (kind == KIND_DECLFUN):
        return SMTCmdNode(
            KIND_DECLFUN, [SMTFunNode(t[1], KIND_FUN, t[3], t[2])])
    elif (kind == KIND_DEFFUN):
        return SMTCmdNode(
            KIND_DEFFUN, [SMTFunNode(t[1], KIND_FUN, t[3], t[2], [t[4]])])
    else:
        return SMTCmdNode(t[0], children = t[1:])

#command.setParseAction(lambda s,l,t: SMTNode(t[0], children=t[1:len(t)]))
command.setParseAction(_cmd2SMTCmdNode)

script          = ZeroOrMore(command)


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
# TODO assertions

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
        return "({0:s}{1:s})".format(self.kind, self.children2string())

    def children2string(self):
        if (self.arity() >= 1):
            return " " + " ".join([str(c) for c in self.children])
        else:
            return ""


class SMTVarBindNode(SMTNode):

    def __init__(self, var, children = []):
        super().__init__(KIND_VARB, children)
        assert(len(children) == 1)
        self.var = var

    def __str__(self):
        return "({0:s} {1:s})".format(var.name, str(children[0]))

        
class SMTFunNode(SMTNode):

    def __init__(self, name, kind, sort, sorts = []):
        assert (kind == KIND_FUN or kind == KIND_ANNFUN)
        super().__init__(kind, sort)
        self.name = name
        self.sorts = sorts  # signature sorts
        print ("################################# " + name + " " + str(self))

    def __str__(self):
        # TODO print details in declare-fun / define-fun
        return "{0:s} ({1:s}) {2:s}".format(
                self.name, 
                [str(s) for s in self.sorts] if len(self.sorts) > 1 else "", 
                str(self.sort))


class SMTFunAppNode(SMTNode):        

    def __init__(self, fun, children = []):
        assert(isinstance(fun, SMTFunNode))
        assert(len(children) >= 1)
        kind = fun.kind
        print (">> kind " + str(kind))
        if (kind not in g_funs and kind.find("(_") == 0):
            assert (kind.spit() > 2)
            kind = kind.split()[1]
            print (">> kind new" + str(kind))
        sort = fun.sort
        print (">> sort " + str(sort))
        super().__init__(kind, sort, children)
        self.fun = fun
        print (">> fun app node " + str(self))

    def __str__(self):
        return "({0:s}{1:s})".format(self.fun.name, self.children2string())

class SMTSortNode(SMTNode):

    def __init__(self, name, nparams = 0):
        super().__init__(KIND_SORT)
        self.name = name
        self.nparams = nparams
    
    def __str__(self):
        return self.name


class SMTConstNode(SMTNode):

    # TODO sort??
    def __init__(self, kind, sort = None, value = 0):
        assert (kind in g_consts)
        super().__init__(kind = "none", sort = "none")
        self.value = value

    def __str__(self):
        return str(self.value)


class SMTBVConstNode(SMTConstNode):

    def __init__(self, kind, sort, value = 0, bitwidth = 1):
        assert (kind in g_consts)
        super().__init__(kind, sort, value)
        self.bitwidth = bitwidth

    def __str__(self):
        if (kind == KIND_CONSTH):
            return "#x{0:s}".format(hex(value)[2:])
        elif (kind == KIND_CONSTB):
            return "#b{0:s}".format(bin(value)[2:])
        assert(kind == KIND_CONSTN)
        return "(_ bv{0:d} {1:d})".format(self.value, self.bw)


class SMTCmdNode:

    def __init__(self, kind, children = []):
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
        return "({0:s}{1:s}{2:s})".format(
               self.kind, 
               self.children2string(),
               " " + str(self.children[0].nparams) if self.kind == KIND_DECLSORT
                                                   else "")

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

    infile = args[0]
    parsed = script.parseFile(infile)
    for token in parsed.asList():
        print("-----------")
        print(token)
    
