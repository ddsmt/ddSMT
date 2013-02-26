#!/usr/bin/env python3
import sys
import re
from optparse import OptionParser
#from pyparsing import *


class SMTParseException (Exception):

    def __init__ (self, msg, parser, offset = -1):
        self.msg = msg
        self.infile = parser.infile
        (self.line, self.col) = parser.find_pos(offset)

    def __str__ (self):
        return "[smtparser] {}:{}:{}: {}".format(
                self.infile, self.line, self.col, self.msg)


class SMTParser:

    LPAR = '('
    RPAR = ')'

    IDXED  = "(_"

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
        self.infile = ""
        self.la = ""
        self.tokens = []
        self.instring = ""
        self.pos = 0
        self.line = 1
        self.col = 0
        self.spec_chars = "+-/*=%?!.$_~&^<>@"
        #self.ppos = 0
        #self.cpos = 0

    def parse (self, infile):
        self.infile = infile
        with open (infile, 'r') as input_file:
            self.instring = input_file.read()
            self.tokens = self.tokenize()
            self.scan()
            print (self.tokens)
            tokens = self.script()


    def skip_space (self, idx, line, col):
        while idx < len(self.instring) and self.instring[idx].isspace():
            if self.instring[idx] == '\n':
                line += 1
                col = 0
            else:
                col += 1
            idx += 1
        return (idx, line, col)

    def skip_comment (self, idx, line, col):
        if idx < len(self.instring) and self.instring[idx] == ';':
            while idx < len(self.instring) and self.instring[idx] != '\n':
                 idx += 1
        return (idx, line, col)
    

    def find_pos (self, offset = 0):  # TODO eliminate offset
        (idx, line, col) = self.skip_space(0, 1, 0)
        (idx, line, col) = self.skip_comment(idx, line, col)
        (idx, line, col) = self.skip_space(idx, line, col)
        for token in self.tokens[:self.pos - 1]:
            for i in range(0, len(token)):
#                print ("token[{}]: '{}' instring[{}]: '{}'".format(
#                    i, token[i], idx, self.instring[idx]))
                assert (token[i] == self.instring[idx])
                col += 1
                idx += 1
            (idx, line, col) = self.skip_space(idx, line, col)
            (idx, line, col) = self.skip_comment(idx, line, col)
            (idx, line, col) = self.skip_space(idx, line, col)
        return (line, col + 1)       





#    def find_pos (self, offset):
#        lines = self.instring.splitlines()
#        print (">> self.pos: " + str(self.pos))
#        clpars = 0
#        cpos = self.pos - 1 if self.pos else 0
#        lpars = [t for t in self.tokens[0:cpos] if t == SMTParser.LPAR]
#        ppos = cpos - 1 if cpos else 0
#        print (">> nlpars: " + str(len(lpars)))
#        offset = offset if offset >= 0 else len(self.tokens[ppos])
#        print (">> tokens[pos]: " + str(self.tokens[self.pos]))
#        print (">> tokens[ppos]: " + str(self.tokens[ppos]))
#        for line in range(0,len(lines)):
#            # tokenize
#            l = lines[line].split()
#            ts = []
#            for item in l:
#                rpars = []
#                while item and item[0] == SMTParser.LPAR:
#                    ts.append(SMTParser.LPAR)
#                    item = item[1:]
#                while item and item[-1] == SMTParser.RPAR:
#                    rpars.append(SMTParser.RPAR)
#                    item = item[:-1]
#                if item:
#                    ts.append(item)
#                if rpars:
#                    ts.extend(rpars)
#            # count lpars
#            clpars += len([t for t in ts if t == SMTParser.LPAR])
#
#            #for c in lines[line]:
#                #if clpars == len(lpars):
#                #    break
#                #elif c == SMTParser.LPAR:
#                #    clpars += 1
#
#
#
#            if clpars >= len(lpars):
#                print (">line: " + str(lines[line]) + " " + str(lines[line].find(self.tokens[ppos])))
#                if not self.tokens[ppos] in lines[line]:
#                    continue
#                else:
#                    print ("line: " + str(lines[line]))
#                    print ("index: " + str(lines[line].find(self.tokens[ppos])))
#                    print ("len: " + str(len(self.tokens[ppos])))
#                    return (line + 1, 
#                            lines[line].find(self.tokens[ppos]) + offset + 1)
#        return (0, 0)


    def scan (self):
        if self.pos < len(self.tokens):
            self.la = self.tokens[self.pos]
        else:
            self.la = ""
        self.pos += 1

    def scan_back (self, steps):
        assert (self.pos - steps > 0)
        self.pos -= steps
        self.la = self.tokens[self.pos]

    def tokenize (self):
        instring = re.sub(r';[\s\w]*\n', '', self.instring)
        instring = instring.split()
        result = []
        for item in instring:
            rpars = []
            while item and item[0] == SMTParser.LPAR:
                if item == SMTParser.IDXED:
                    result.append(SMTParser.IDXED)
                    item = ""
                    continue
                result.append(SMTParser.LPAR)
                item = item[1:]
            while item and item[-1] == SMTParser.RPAR:
                rpars.append(SMTParser.RPAR)
                item = item[:-1]
            if item:
                result.append(item)
            if rpars:
                result.extend(rpars)
        return result

    def check_lpar (self):
        if self.la != SMTParser.LPAR:
            raise SMTParseException ("'(' expected", self)
        self.scan()

    def check_rpar (self):
        if self.la != SMTParser.RPAR:
            raise SMTParseException ("')' expected", self)
        self.scan()


    def numeral (self):
        if not re.match(r'^0$|[1-9][0-9]*', self.la):
            raise SMTParseException ("numeral expected", self)
        tokens = [self.la]
        self.scan()
        return tokens

    def decimal (self):
        if not re.match(r'\d+\.\d*', self.la):
            raise SMTParseException ("decimal expected", self)
        tokens = [self.la]
        self.scan()
        return tokens

    def hexadecimal (self):
        if not re.match(r'#x[0-9A-Fa-f]*', self.la):
            raise SMTParseException ("hexadecimal constant expected", self)
        tokens = [self.la]
        self.scan()
        return tokens

    def binary (self):
        if not re.match(r'#b[01]*', self.la):
            raise SMTParseException ("binary constant expected", self)
        tokens = [self.la]
        self.scan()
        return tokens

    def string (self):
        if not self.la[0] == '\"' or len(self.la) < 2:
            raise SMTParseException ("string expected", self)
        strings = [self.la]
        if self.la == '\"' or self.la[-1] != '\"':
            self.scan()
            while self.la and self.la[-1] != '\"' and self.la != '\"':
                strings.append(self.la)
                self.scan()
            strings.append(self.la)
        tokens = [" ".join([s for s in strings])]
        if not tokens[-1][-1] == '\"':
            raise SMTParseException ("unclosed string, missing '\"'", self)
        self.scan()
        return tokens

    def b_value (self):
        if self.la != SMTParser.TRUE and self.la != SMTParser.FALSE:
            raise SMTParseException ("'true' or 'false' expected", self)
        tokens = [self.la]
        self.scan()
        return tokens

    def symbol (self):
        if not re.match(
                r'[0-9a-zA-Z\*|\+\-/\*\=%\?\!\.\$_~&\^\<\>@]*', self.la):
            raise SMTParseException (
                    "unexpected character: {}".format(self.la[0]), self)
        if self.la[0] == '|':
            if self.la[-1] != '|':
                raise SMTParseException ("missing symbol close Tag '|'", self)
            string = self.la[1:-1]
        else:
            string = self.la
        for i in range(0, len(string)):
            c = string[i]
            if not c.isalpha() and not c.isdigit() and c not in self.spec_chars:
                raise SMTParseException (
                        "unexpected character: '{}'".format(c), self, i)
        tokens = [self.la]
        self.scan()
        return tokens

    def spec_symbol (self):
        if not re.match(
                r'[0-9a-zA-Z\*|\+\-/\*\=%\?\!\.\$_~&\^\<\>@]*', self.la):
            raise SMTParseException (
                    "unexpected character: {}".format(self.la[0]), self)
        if self.la[0] == '|':
            strings = [self.la]
            if self.la == '|' or self.la[-1] != '|':
                self.scan()
                while self.la and self.la[-1] != '|' and self.la != '|':
                    strings.append(self.la)
                    self.scan()
                strings.append(self.la)
            tokens = [" ".join([s for s in strings])]
            if tokens[-1][-1] != '|':        
                raise SMTParseException ("unclosed symbol, missing '|'", self)
        else:
            tokens = [self.la]
        self.scan()
        return tokens

    def keyword (self):
        if self.la[0] != ':':
            raise SMTParseException ("keyword expected", self)
        for i in range(1, len(self.la)):
            c = self.la[i]
            if not c.isalpha() and not c.isdigit() and c not in self.spec_chars:
                raise SMTParseException (
                        "unexpected character: '{}'".format(c), self, i)
        tokens = [":{}".format(self.la)]    
        self.scan()
        return tokens

    def spec_constant (self):
        tokens = []
        if self.la[0] == '\"':
            tokens.append(self.string())
        elif re.match(r'^#b', self.la):
            tokens.append(self.binary())
        elif re.match(r'^#x', self.la):
            tokens.append(self.hexadecimal())
        elif self.la[0].isdigit():
            if '.' in self.la:
                tokens.append(self.decimal())
            else:
                tokens.append(self.numeral())
        elif self.la in (SMTParser.TRUE, SMTParser.FALSE):
            tokens.append(self.b_value)
        else:
            raise SMTParseException ("special constant expected", self)

    def s_expr (self):
        tokens = []
        if self.la[0] == ':':
            tokens.append(self.keyword())
        elif self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.la[0].isdigit()                   \
                or self.la[0] == '#'                      \
                or self.la[0] == '\"':
            tokens.append(self.spec_const)
        elif self.la[0].isalpha()                \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|':
            tokens.append(self.symbol)
        else:
            self.check_lpar()
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.s_expr())
            self.check_rpar()
        return tokens

    def ident (self):
        tokens = []
        if self.la[0].isalpha()                  \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|':
            tokens.append(self.symbol())
        elif self.la == SMTParser.IDXED:
            tokens.append(self.la)
            self.scan()
            tokens.append(self.symbol())
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.numeral())
            if not tokens[-1]:
                raise SMTParseException ("numeral expected", self)
            self.check_rpar()
        return tokens

    def sort (self):
        tokens = []
        if self.la[0].isalpha()                  \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|'             \
                or self.la == SMTParser.IDXED:
            tokens.append(self.ident())
        else:
            self.check_lpar()
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append(self.ident())
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.sort())
            if not tokens[-1]:
                raise SMTParseException ("sort expected", self)
            self.check_rpar()
        return tokens

    def sort_expr (self):
        # prevent over-eager sort checking if define-sort
        tokens = []
        if self.la[0].isalpha()                  \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|'             \
                or self.la == SMTParser.IDXED:
            tokens.append(self.ident())
        else:
            self.check_lpar()
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append(self.ident())
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.symbol())
            if not tokens[-1]:
                raise SMTParseException ("symbol expected", self)
            self.check_rpar()
        return tokens

    def attribute_value (self):
        tokens = []
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.la[0].isdigit()                 \
                or self.la[0] == '#'                    \
                or self.la[0] == '\"':
            tokens.append(self.spec_constant())
        elif self.la[0].isalpha()                \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|':
            tokens.append(self.symbol())
        else:
            self.check_lpar()
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.s_expr())
            self.check_rpar()
        return tokens

    def attribute (self):
        tokens = []
        tokens.append(self.keyword())
        if self.la not in (':', SMTParser.RPAR):
            tokens.append(self.attr_value())
        return tokens

    def spec_attr_value (self):
        # be more lenient towards comment-style symbols in set-info
        tokens = []
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.la[0].isdigit()                 \
                or self.la[0] == '#'                    \
                or self.la[0] == '\"':
            tokens.append(self.spec_constant())
        elif self.la[0].isalpha()                \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|':
            tokens.append(self.spec_symbol())
        else:
            self.check_lpar()
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.s_expr())
            self.check_rpar()
        return tokens

    def spec_attribute (self):
        tokens = []
        tokens.append(self.keyword())
        if self.la[0] not in (':', SMTParser.RPAR):
            tokens.append(self.spec_attr_value())
        return tokens

    def qual_ident (self):
        tokens = []
        if self.la[0].isalpha()                  \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|'             \
                or self.la == SMTParser.IDXED:
            tokens.append(self.ident())
        elif self.la == SMTParser.LPAR:
            self.check_lpar()
            if self.la != SMTParser.AS:
                raise SMTParseException ("'as' expected", self)
            tokens.append(self.la)
            self.scan()
            tokens.append(self.ident())
            tokens.append(self.sort())
            self.check_rpar()
        else:
            raise SMTParseException ("qualified identifier expected", self)
        return tokens
        
    def var_binding (self):
        tokens = []
        self.check_lpar()
        tokens.append(self.symbol())
        tokens.append(self.term())
        self.check_rpar()
        return tokens

    def sorted_var (self):
        tokens = []
        self.check_lpar()
        tokens.append(self.symbol())
        tokens.append(self.sort())
        self.check_rpar()
        return tokens

    def term (self):
        tokens = []
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.la[0].isdigit()                 \
                or self.la[0] == '#'                    \
                or self.la[0] == '\"':
            tokens.append(self.spec_constant())
        elif self.la[0].isalpha()                \
                or self.la[0] in self.spec_chars \
                or self.la[0] == '|'             \
                or self.la == SMTParser.IDXED:
            tokens.append(self.qual_ident())
        elif self.la == SMTParser.LPAR:
            self.check_lpar()
            if self.la == SMTParser.AS:
                self.scan_back(1)
                assert (self.la == SMTParser.LPAR)
                tokens.append(self.qual_ident())
            elif self.la == SMTParser.LET:
                tokens.append(self.la)
                self.scan()
                self.check_lpar()
                tokens.append([])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.var_binding())
                if not tokens[-1]:
                    raise SMTParseException ("variable binding expected", self)
                self.check_rpar()
                tokens.append(self.term())
            elif self.la in (SMTParser.FORALL, SMTParser.EXISTS):
                tokens.append(self.la)
                self.scan()
                self.check_lpar()
                tokens.append([])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.sorted_var())
                if not tokens[-1]:
                    raise SMTParseException ("sorted variable expected", self)
                self.check_rpar()
                tokens.append(self.term())
            elif self.la == '!':
                tokens.append(self.la)
                self.scan()
                tokens.append(self.term())
                tokens.append([-1])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.attribute())
                if not tokens[-1]:
                    raise SMTParseException ("attribute expected", self)
            else:
                tokens.append(self.qual_ident())
                tokens.append([])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.term())
                if not tokens[-1]:
                    raise SMTParseException ("term expected", self)
            self.check_rpar()
        else:
            raise SMTParseException ("term expected", self)
        return tokens

    def option (self):
        tokens = []
        if self.la in (SMTParser.PRINTSUCC, 
                       SMTParser.EXPANDDEF,
                       SMTParser.INTERMODE,
                       SMTParser.PRODPROOF,
                       SMTParser.PRODUCORE,
                       SMTParser.PRODMODEL,
                       SMTParser.PRODASSGN):
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
        return tokens

    def command (self):
        tokens = []
        self.check_lpar()
        tokens.append(self.la)
        if self.la == SMTParser.SETLOGIC:
            self.scan()
            tokens.append(self.symbol())
        elif self.la == SMTParser.SETOPT:
            self.scan()
            tokens.append(self.option())
        elif self.la == SMTParser.SETINFO:
            self.scan()
            tokens.append(self.spec_attribute())
        elif self.la == SMTParser.DECLSORT:
            self.scan()
            tokens.append(self.symbol())
            tokens.append(self.numeral())
        elif self.la == SMTParser.DEFSORT:
            self.scan()
            tokens.append(self.symbol())
            tokens.append(self.check_lpar())
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.symbol())
            self.check_rpar()
            tokens.append(self.sort_expr())
        elif self.la == SMTParser.DECLFUN:
            self.scan()
            tokens.append(self.symbol())
            self.check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.sort())
            self.check_rpar()
            tokens.append(self.sort())
        elif self.la == SMTParser.DEFFUN:
            self.scan()
            tokens.append(self.symbol())
            self.check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.sorted_var())
            self.check_rpar()
            tokens.append(self.sort())
            tokens.append(self.term())
        elif self.la == SMTParser.PUSH:
            self.scan()
            tokens.append(self.numeral())
        elif self.la == SMTParser.POP:
            self.scan()
            tokens.append(self.numeral())
        elif self.la == SMTParser.ASSERT:
            self.scan()
            tokens.append(self.term())
        elif self.la == SMTParser.CHECKSAT:
            self.scan()
        elif self.la == SMTParser.GETASSERT:
            self.scan()
        elif self.la == SMTParser.GETPROOF:
            self.scan()
        elif self.la == SMTParser.GETUCORE:
            self.scan()
        elif self.la == SMTParser.GETVALUE:
            self.scan()
            self.check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.term())
            if not tokens[-1]:
                raise SMTParseException ("term expected", self)
            self.check_rpar()
        elif self.la == SMTParser.GETASSIGN:
            self.scan()
        elif self.la == SMTParser.GETOPT:
            self.scan()
            tokens.append(self.keyword())
        elif self.la == SMTParser.GETINFO:
            self.scan()
            tokens.append(self.info_flag)
        elif self.la == SMTParser.EXIT:
            self.scan()
        else:
            raise SMTParseException (
                    "unknown command '{}'".format(self.la), self)
        print (">> tokens: " + str(tokens) + " pos: " + str(self.pos))
        self.check_rpar()
        return tokens

    def script (self):
        tokens = []
        while self.pos < len(self.tokens):
            tokens.append(self.command())
        return tokens


if __name__ == "__main__":
    oparser = OptionParser()
    (opts, args) = oparser.parse_args()

    sys.setrecursionlimit(10000)

    parser = SMTParser()
    parsed = parser.parse(args[0])
    #print (parsed.asList())

    print (">>> parser done")

    sys.exit(0)
