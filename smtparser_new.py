#!/usr/bin/env python3
import sys
from optparse import OptionParser
#from pyparsing import *


class SMTParseException (Exception):

    def __init__ (self, msg):
        self.msg = msg

    def __str__ (self):
        return "[smtparser] Error: {}".format(self.msg)


class SMTParser:

    LPAR = '('
    RPAR = ')'

    IDXED  = "_"

    AS     = "as"
    LET    = "let"
    FORALL = "forall"
    EXISTS = "exists"

    TRUE   = "true"
    FALSE  = "false"

    PRINTSUCC = ":print-success"
    EXPANDDEF = ":expand-definitions"
    INTERMODE = ":interactive-mode"
    PRODPROOF = ":produce-proofs"
    PRODUCORE = ":produce-unsat-cores"
    PRODMODEL = ":produce-models"
    PRODASSGN = ":produce-assignments"
    ROUTCHANN = ":regular-output-channel"
    DOUTCHANN = ":diagrnostic-output-channel"
    RANDMSEED = ":random-seed"
    VERBOSITY = ":verbosity"

    ERRBEHAVR = ":error-behavior"
    NAME      = ":name"
    AUTHORS   = ":authors"
    VERSION   = ":version"
    STATUS    = ":status"
    RUNKNOWN  = ":reason-unknown"
    ALLSTAT   = ":all-statistics"

    SETLOGIC  = "set-logic"
    SETOPT    = "set-option"
    SETINFO   = "set-info"
    DECLSORT  = "declare-sort"
    DEFSORT   = "define-sort"
    DECLFUN   = "declare-fun"
    DEFFUN    = "define-fun"
    PUSH      = "push"
    POP       = "pop"
    ASSERT    = "assert"
    CHECKSAT  = "check-sat"
    GETASSERT = "get-assertions"
    GETPROOF  = "get-proof"
    GETUCORE  = "get-unsat-core"
    GETVALUE  = "get-value"
    GETASSIGN = "get-assignment"
    GETOPT    = "get-option"
    GETINFO   = "get-info"
    EXIT      = "exit"

    def __init__ (self):
        self.la = ""
        self.tokens = []
        #self.instring = ""
        self.pos = 0
        #self.line = 1
        #self.col = 0
        self.spec_chars = "+-/*=%?!.$_~&^<>@"

    def parse (self, infile):
        with open (infile, 'r') as input_file:
            instring = input_file.read()
            self.tokens = self.tokenize(instring)
            self.scan()
            #self.script()
            print (self.tokens)

    def scan (self):
        if self.pos < len(self.tokens):
            self.la = self.tokens[self.pos]
        self.pos += 1

    def tokenize (self, instring):
        instring = instring.split()
        result = []
        for item in instring:
            rpars = []
            while item and item[0] == '(':
                if item == "(_":
                    result.append("(_")
                    item = ""
                    continue
                result.append('(')
                item = item[1:]
            while item and item[-1] == ')':
                rpars.append(')')
                item = item[:-1]
            if item:
                result.append(item)
            if rpars:
                result.extend(rpars)
        return result

    def check_lpar (self):
        if self.la != SMTParser.LPAR:
            raise SMTParseException ("'(' expected")
        self.scan()

    def check_rpar (self):
        if self.la != SMTParser.RPAR:
            raise SMTParseException ("')' expected")
        self.scan()


    def script (self):
        tokens = []
        while self.pos < len(self.tokens):
            tokens.append(self.command())
        return tokens


    def command (self):
        tokens = []
        self.check_lpar()
        tokens.append(self.la)
        if self.la == SMTParser.SETLOGIC:
            tokens.append(self.symbol())
        elif self.la == SMTParser.SETOPT:
            tokens.append(self.option())
        elif self.la == SMTParser.SETINFO:
            tokens.append(self.spec_attribute())
        elif self.la == SMTParser.DECLSORT:
            tokens.append(self.symbol())
            tokens.append(self.numeral())
        elif self.la == SMTParser.DEFSORT:
            tokens.append(self.symbol())
            tokens.append(self.check_lpar())
            tokens.append([])
            while self.la != SMTParser.RPAR:
                tokens[-1].append(self.symbol())
            self.check_rpar()
            tokens.append(self.sort_expr())
        elif self.la == SMTParser.DECLFUN:
            tokens.append(self.symbol())
            self.check_lpar()
            tokens.append([])
            while self.la != SMTParser.RPAR:
                tokens[-1].append(self.sort())
            self.check_rpar()
            tokens.append(self.sort())
        elif self.la == SMTParser.DEFFUN:
            tokens.append(self.symbol())
            self.check_lpar()
            tokens.append([])
            while self.la != SMTParser.RPAR:
                tokens[-1].append(self.sorted_var)
            self.check_rpar()
            tokens.append(self.sort())
            tokens.append(self.term())
        elif self.la == SMTParser.PUSH:
            tokens.append(self.numeral())
        elif self.la == SMTParser.POP:
            tokens.append(self.numeral())
        elif self.la == SMTParser.ASSERT:
            tokens.append(self.term())
        elif self.la == SMTParser.CHECKSAT:
            pass
        elif self.la == SMTParser.GETASSERT:
            pass
        elif self.la == SMTParser.GETPROOF:
            pass
        elif self.la == SMTParser.GETUCORE:
            pass
        elif self.la == SMTParser.GETVALUE:
            self.check_lpar()
            tokens.append([])
            while self.la != SMTParser.RPAR:
                tokens[-1].append(self.term())
            if not tokens[-1]:
                raise SMTParseException ("term expected")
            self.check_rpar()
        elif self.la == SMTParser.GETASSIGN:
            pass
        elif self.la == SMTParser.GETOPT:
            tokens.append(self.keyword)
        elif self.la == SMTParser.GETINFO:
            tokens.append(self.info_flag)
        elif self.la == SMTParser.EXIT:
            pass
        else:
            raise SMTParseException ("unknown command '{}'".format(self.la))
        self.check_rpar()
        return tokens


    def info_flag (self):
        tokens = []
        if self.la in (SMTParser.ERRBEHAVR, 
                       SMTParser.NAME,
                       SMTParser.AUTHORS,
                       SMTParser.VERSION,
                       SMTParser.STATUS,
                       SMTParser.RUNKNOWN,
                       SMTParser.ALLSTAT):
            tokens.append(self.la)
            self.scan()
        else:
            tokens.append(self.keyword())


    def option (self):
        tokens = []
        if self.la in (SMTParser.PRINTSUCC, 
                       SMTParser.EXPANDDEF,
                       SMTParser.INTERMODE,
                       SMTParser.PRODPROOF,
                       SMTParser.PRODUCORE,
                       SMTParser.PRODMODEL,
                       SMTParser.PRODASSIGN):
            tokens.append(self.la)
            self.scan()
            tokens.append(self.b_value())
        elif self.la in (SMTParser.ROUTCHANN, SMTParser.DOUTCHANN):
            tokens.append(self.la)
            self.scan()
            tokens.append(self.string())
        elif self.la in (SMTParser.RANDMSEED, SMTParser.VERBOSITY):
            tokens.append(self.la)
            self.scan()
            tokens.append(self.numeral())
        else:
            tokens.append(self.attribute())
        return tokens


    def term (self):
        tokens = []
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.la[0].is_digit()                  \
                or self.la[0] == '#'                      \
                or self.la[0] == '\"':
            pass
        elif self.la[0].is_alpha()            \
             or self.la[0] in self.spec_chars \
             or self.la[0] == '|':
            pass
        elif self.la == SMTParser.LPAR:
            '_'
            SMTParser.AS





if __name__ == "__main__":
    oparser = OptionParser()
    (opts, args) = oparser.parse_args()

    sys.setrecursionlimit(10000)

    parser = SMTParser()
    parsed = parser.parse(args[0])
    #print (parsed.asList())

    print (">>> parser done")

    sys.exit(0)
