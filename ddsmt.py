#! /usr/bin/env python3

from pyparsing import *
from optparse import OptionParser

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

numeral.setParseAction(lambda s,l,t: 
        SMTConstNode(KIND_CONSTN, value = int(t[0])))
decimal.setParseAction(lambda s,l,t:
        SMTConstNode(KIND_CONSTD, value = float(t[0])))
hexadecimal.setParseAction(lambda s,l,t:
        SMTConstNode(KIND_CONSTH, value = t[0]))
binary.setParseAction(lambda s,l,t:
        SMTConstNode(KIND_CONSTB, value = t[0]))
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
# TODO where exactly identifier -> string??? and where to node????
#identifier.setParseAction(lambda s,l,t: 
#    "(" + " ".join([str(to) for to in t]) + ")" if t[0] == '_' else t)

# sorts
sort            = Forward()
sort           << (identifier | LBRACE + identifier + OneOrMore(sort) + RBRACE)
sort.setParseAction(lambda s,l,t:
        SMTSortNode(
            "(" + " ".join([str(to) for to in t]) + ")" if len(t) > 1 
                                                        else t[0],
            len(t) - 1))
# TODO insert into sorts hash

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

sorted_var.setParseAction(lambda s,l,t: SMTFunNode(t[0], t[1]))

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
        return SMTCmdNode(KIND_DECLFUN, [SMTFunNode(t[1], t[3], t[2])])
    elif (kind == KIND_DEFFUN):
        return SMTCmdNode(KIND_DEFFUN, [SMTFunNode(t[1], t[3], t[2], [t[4]])])
    else:
        return SMTCmdNode(t[0], children = t[1:len(t)])

#command.setParseAction(lambda s,l,t: SMTNode(t[0], children=t[1:len(t)]))
command.setParseAction(_cmd2SMTCmdNode)

script          = ZeroOrMore(command)

# TODO identifier bv constant handling

#def _qualident2SMTNode(s, l, t):
#    if (t[0] == AS):
#        return SMTNode(KIND_AVAR, t[1], t)  # TODO proper sort handling
#    else:
#        return SMTNode(KIND_VAR, children = t)  # TODO sort ?
#
## TODO sort?
#def _term2SMTNode(s, l, t):
#    if (t[0] == "let"):
#        return SMTNode(KIND_LET, children = t[1:len(t)])
#    elif (t[0] == "forall"):
#        return SMTNode(KIND_FORALL, children = t[1:len(t)])
#    elif (t[0] == "exists"):
#        return SMTNode(KIND_EXISTS, children = t[1:len(t)])
#    elif (t[0] == '!'):
#        return SMTNode(KIND_ANNOTN, children = t[1:len(t)])
#    else:
#        return t
#
##numeral.setParseAction(lambda s,l,t: int(t[0]))
##decimal.setParseAction(lambda s,l,t: float(t[0]))

#identifier.setParseAction(lambda s,l,t: 
#    "(_{0:s})".format(" ".join([str(to) for to in t[1:len(t)]]) if t[0] == '_' 
#                                                                else t))
#
#qual_identifier.setParseAction(_qualident2SMTNode)

##var_binding.setParseAction(lambda s,l,t:
##                SMTNode(KIND_VARB, children = t))

#sorted_var.setParseAction(lambda s,l,t:
#                SMTVarNode(children = t))

#term.setParseAction(_term2SMTNode)

#def _cmd2SMTNode(s, l, t):
#    kind = t[0]
#    print ("kind " + kind)
#    if (kind == KIND_ASSERT):
#        assert (len(t) == 2)
#        return SMTCmdNode(kind, children = [t[1]])
#    else:
#        print("asdf ".join((str(to) for to in t[1:len(t)]), " "))
#        return SMTCmdNode(kind, children = " ".join((str(to) for to in t[1:len(t)]), " "))
#

#def _cmd2SMTNode(s, l, t):
#    kind = t[0]
#    if (kind == KIND_DECLFUN or kind == KIND_DECLSORT or
#        kind == KIND_DEFFUN  or kind == KIND_DEFSORT  or 
#        kind == KIND_GETVALUE):
#        children = ["{0:s} ({1:s}){2:s}".format(t[1], " ".join([str(to) for to in t[2]]), " ".join([str(to) for to in t[3:len(t)]]))] 
#    else:
#        children = ["{0:s}".format(" ".join([str(to) for to in t[1:len(t)]]))] 
#    print("++++++++++++++++++++++++++")
#    print(children)
#    return SMTNode(kind, children)

# TODO sort?
#command.setParseAction(_cmd2SMTNode)

KIND_CONSTB = "const bin"
KIND_CONSTD = "const dec"
KIND_CONSTN = "const num"
KIND_CONSTH = "const hex"
KIND_CONSTS = "const string"

KIND_ANNOTN = "!"
KIND_ATTRIB = "attribute"
KIND_EXISTS = "exists"
KIND_FORALL = "forall"
KIND_FUN    = "fun"
KIND_LET    = "let"
KIND_SORT   = "sort"
#KIND_AVAR   = "annotated-var"
#KIND_SVAR   = "sorted-var"  # TODO necessary?
#KIND_VAR    = "var"         # TODO not necessary
#KIND_VARB   = "var-binding" # TODO necessary?

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

g_cmds = [
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


class SMTFunNode(SMTNode):

    def __init__(self, name, sort, sorts = []):
        super().__init__(KIND_FUN, sort)
        self.name = name
        self.sorts = sorts  # signature sorts

    def __str__(self):
        return "{0:s} ({1:s}) {2:s}".format(
                self.name, 
                [str(s) for s in self.sorts] if len(self.sorts) > 1 else "", 
                str(self.sort))


class SMTSortNode(SMTNode):

    def __init__(self, name, nparams = 0):
        super().__init__(KIND_SORT)
        self.name = name
        self.nparams = nparams
    
    def __str__(self):
        return self.name


class SMTConstNode(SMTNode):

    # TODO sort??
    def __init__(self, kind, sort = "none", value = 0):
        super().__init__(kind = "none", sort = "none")
        self.value = value

    def __str__(self):
        return str(self.value)


class SMTBVConstNode(SMTConstNode):

    # TODO correct sort handling
    def __init__(self, kind = "none", value = 0, bitwidth = 1):
        super().__init__(kind, "(_ BitVec {0:d})".format(bitwidth), value)
        self.bitwidth = bitwidth

    # TODO
    # def __str__(self):


class SMTCmdNode:

    def __init__(self, kind = "none", children = []):
        self.kind = kind
        self.children = children

    def arity(self):
        return len(self.children)

    def __str__(self):
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
    for token in script.parseFile(infile).asList():
        print("-----------")
        print(token)
