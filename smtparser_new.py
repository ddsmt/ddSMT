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
            self.tokens = self.__tokenize()
            self.__scan()
            #print (self.tokens)
            tokens = self.__script()

    def find_pos (self, offset = 0):  # TODO eliminate offset
        (idx, line, col) = self.__skip_space(0, 1, 0)
        (idx, line, col) = self.__skip_comment(idx, line, col)
        (idx, line, col) = self.__skip_space(idx, line, col)
        for token in self.tokens[:self.pos - 1]:
            for i in range(0, len(token)):
#                print ("token[{}]: '{}' instring[{}]: '{}'".format(
#                    i, token[i], idx, self.instring[idx]))
                assert (token[i] == self.instring[idx])
                col += 1
                idx += 1
            (idx, line, col) = self.__skip_space(idx, line, col)
            (idx, line, col) = self.__skip_comment(idx, line, col)
            (idx, line, col) = self.__skip_space(idx, line, col)
        return (line, col + 1)       


    def __skip_space (self, idx, line, col):
        while idx < len(self.instring) and self.instring[idx].isspace():
            if self.instring[idx] == '\n':
                line += 1
                col = 0
            else:
                col += 1
            idx += 1
        return (idx, line, col)

    def __skip_comment (self, idx, line, col):
        if idx < len(self.instring) and self.instring[idx] == ';':
            while idx < len(self.instring) and self.instring[idx] != '\n':
                 idx += 1
        return (idx, line, col)
    
    def __scan (self):
        if self.pos < len(self.tokens):
            self.la = self.tokens[self.pos]
        else:
            self.la = ""
        self.pos += 1

    def __scan_back (self, steps):
        assert (self.pos - steps > 0)
        self.pos -= steps
        self.la = self.tokens[self.pos - 1]

    def __tokenize (self):
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

    def __check_lpar (self, msg = "'(' expected"):
        if self.la != SMTParser.LPAR:
            raise SMTParseException (msg, self)
        self.__scan()

    def __check_rpar (self):
        if self.la != SMTParser.RPAR:
            raise SMTParseException ("')' expected", self)
        self.__scan()

    def __first_of_const (self, c):
        return c.isdigit() or c == '#' or c == '\"'

    def __first_of_symbol (self, c):
        return c.isalpha() or c in self.spec_chars or c == '|'

    def __numeral (self):
        if not re.match(r'^0$|[1-9][0-9]*', self.la):
            raise SMTParseException ("numeral expected", self)
        tokens = [self.la]
        self.__scan()
        return tokens

    def __decimal (self):
        if not re.match(r'\d+\.\d*', self.la):
            raise SMTParseException ("decimal expected", self)
        tokens = [self.la]
        self.__scan()
        return tokens

    def __hexadecimal (self):
        if not re.match(r'#x[0-9A-Fa-f]*', self.la):
            raise SMTParseException ("hexadecimal constant expected", self)
        tokens = [self.la]
        self.__scan()
        return tokens

    def __binary (self):
        if not re.match(r'#b[01]*', self.la):
            raise SMTParseException ("binary constant expected", self)
        tokens = [self.la]
        self.__scan()
        return tokens

    def __string (self):
        if not self.la[0] == '\"' or len(self.la) < 2:
            raise SMTParseException ("string expected", self)
        strings = [self.la]
        if self.la == '\"' or self.la[-1] != '\"':
            self.__scan()
            while self.la and self.la[-1] != '\"' and self.la != '\"':
                strings.append(self.la)
                self.__scan()
            strings.append(self.la)
        tokens = [" ".join([s for s in strings])]
        if not tokens[-1][-1] == '\"':
            raise SMTParseException ("unclosed string, missing '\"'", self)
        self.__scan()
        return tokens

    def __b_value (self):
        if self.la != SMTParser.TRUE and self.la != SMTParser.FALSE:
            raise SMTParseException ("'true' or 'false' expected", self)
        tokens = [self.la]
        self.__scan()
        return tokens

    def __symbol (self):
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
        self.__scan()
        return tokens

    def __spec_symbol (self):
        if not re.match(
                r'[0-9a-zA-Z\*|\+\-/\*\=%\?\!\.\$_~&\^\<\>@]*', self.la):
            raise SMTParseException (
                    "unexpected character: {}".format(self.la[0]), self)
        if self.la[0] == '|':
            strings = [self.la]
            if self.la == '|' or self.la[-1] != '|':
                self.__scan()
                while self.la and self.la[-1] != '|' and self.la != '|':
                    strings.append(self.la)
                    self.__scan()
                strings.append(self.la)
            tokens = [" ".join([s for s in strings])]
            if tokens[-1][-1] != '|':        
                raise SMTParseException ("unclosed symbol, missing '|'", self)
        else:
            tokens = [self.la]
        self.__scan()
        return tokens

    def __keyword (self):
        if self.la[0] != ':':
            raise SMTParseException ("keyword expected", self)
        for i in range(1, len(self.la)):
            c = self.la[i]
            if not c.isalpha() and not c.isdigit() and c not in self.spec_chars:
                raise SMTParseException (
                        "unexpected character: '{}'".format(c), self, i)
        tokens = ["{}".format(self.la)]    
        self.__scan()
        return tokens

    def __spec_constant (self):
        tokens = []
        if self.la[0] == '\"':
            tokens.append(self.__string())
        elif re.match(r'^#b', self.la):
            tokens.append(self.__binary())
        elif re.match(r'^#x', self.la):
            tokens.append(self.__hexadecimal())
        elif self.la[0].isdigit():
            if '.' in self.la:
                tokens.append(self.__decimal())
            else:
                tokens.append(self.__numeral())
        elif self.la in (SMTParser.TRUE, SMTParser.FALSE):
            tokens.append(self.__b_value())
        else:
            raise SMTParseException ("special constant expected", self)
        return tokens

    def __s_expr (self):
        tokens = []
        if self.la[0] == ':':
            tokens.append(self.__keyword())
        elif self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.__first_of_const(self.la[0]):
            tokens.append(self.__spec_constant())
        elif self.__first_of_symbol(self.la[0]):
            tokens.append(self.__symbol())
        else:
            self.__check_lpar("s-expression expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__s_expr())
            self.__check_rpar()
        return tokens

    def __ident (self):
        tokens = []
        if self.__first_of_symbol(self.la[0]):
            tokens.append(self.__symbol())
        elif self.la == SMTParser.IDXED:
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.__symbol())
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__numeral())
            if not tokens[-1]:
                raise SMTParseException ("numeral expected", self)
            self.__check_rpar()
        else:
            raise SMTParseException ("identifier expected", self)
        return tokens

    def __sort (self):
        tokens = []
        if self.__first_of_symbol(self.la[0]) or self.la == SMTParser.IDXED:
            tokens.append(self.__ident())
        else:
            self.__check_lpar("sort expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append(self.__ident())
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__sort())
            if not tokens[-1]:
                raise SMTParseException ("sort expected", self)
            self.__check_rpar()
        return tokens

    def __sort_expr (self):
        # prevent over-eager sort checking if define-sort
        tokens = []
        if self.__first_of_symbol(self.la[0]) or self.la == SMTParser.IDXED:
            tokens.append(self.__ident())
        else:
            self.__check_lpar("sort expression expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append(self.__ident())
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__symbol())
            if not tokens[-1]:
                raise SMTParseException ("symbol expected", self)
            self.__check_rpar()
        return tokens

    def __attr_value (self):
        tokens = []
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.__first_of_const(self.la[0]):
            tokens.append(self.__spec_constant())
        elif self.__first_of_symbol(self.la[0]):
            tokens.append(self.__symbol())
        else:
            self.__check_lpar("attribute value expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__s_expr())
            self.__check_rpar()
        return tokens

    def __attribute (self):
        tokens = []
        tokens.append(self.__keyword())
        if self.la[0] not in (':', SMTParser.RPAR):
            tokens.append(self.__attr_value())
        return tokens

    def __spec_attr_value (self):
        # be more lenient towards comment-style symbols in set-info
        tokens = []
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.__first_of_const(self.la[0]):
            tokens.append(self.__spec_constant())
        elif self.__first_of_symbol(self.la[0]):
            tokens.append(self.__spec_symbol())
        else:
            self.__check_lpar("attribute value expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__s_expr())
            self.__check_rpar()
        return tokens

    def __spec_attribute (self):
        tokens = []
        tokens.append(self.__keyword())
        if self.la[0] not in (':', SMTParser.RPAR):
            tokens.append(self.__spec_attr_value())
        return tokens

    def __qual_ident (self):
        tokens = []
        if self.__first_of_symbol(self.la[0]) or self.la == SMTParser.IDXED:
            tokens.append(self.__ident())
        else:
            self.__check_lpar("qualified identifier expected")
            if self.la != SMTParser.AS:
                raise SMTParseException ("'as' expected", self)
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.__ident())
            tokens.append(self.__sort())
            self.__check_rpar()
        return tokens
        
    def __var_binding (self):
        tokens = []
        self.__check_lpar()
        tokens.append(self.__symbol())
        tokens.append(self.__term())
        self.__check_rpar()
        return tokens

    def __sorted_var (self):
        tokens = []
        self.__check_lpar()
        tokens.append(self.__symbol())
        tokens.append(self.__sort())
        self.__check_rpar()
        return tokens

    def __term (self):
        tokens = []
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.__first_of_const(self.la[0]):
            tokens.append(self.__spec_constant())
        elif self.__first_of_symbol(self.la[0]) or self.la == SMTParser.IDXED:
            tokens.append(self.__qual_ident())
        else:
            self.__check_lpar("term expected")
            if self.la == SMTParser.AS:
                self.__scan_back(1)
                assert (self.la == SMTParser.LPAR)
                tokens.append(self.__qual_ident())
            elif self.la == SMTParser.LET:
                tokens.append(self.la)
                self.__scan()
                self.__check_lpar()
                tokens.append([])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.__var_binding())
                if not tokens[-1]:
                    raise SMTParseException ("variable binding expected", self)
                self.__check_rpar()
                tokens.append(self.__term())
                self.__check_rpar()
            elif self.la in (SMTParser.FORALL, SMTParser.EXISTS):
                tokens.append(self.la)
                self.__scan()
                self.__check_lpar()
                tokens.append([])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.__sorted_var())
                if not tokens[-1]:
                    raise SMTParseException ("sorted variable expected", self)
                self.__check_rpar()
                tokens.append(self.__term())
                self.__check_rpar()
            elif self.la == '!':
                tokens.append(self.la)
                self.__scan()
                tokens.append(self.__term())
                tokens.append([-1])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.__attribute())
                if not tokens[-1]:
                    raise SMTParseException ("attribute expected", self)
                self.__check_rpar()
            else:
                tokens.append(self.__qual_ident())
                tokens.append([])
                while self.la and self.la != SMTParser.RPAR:
                    tokens[-1].append(self.__term())
                if not tokens[-1]:
                    raise SMTParseException ("term expected", self)
                self.__check_rpar()
        return tokens

    def __option (self):
        tokens = []
        if self.la in (SMTParser.PRINTSUCC, 
                       SMTParser.EXPANDDEF,
                       SMTParser.INTERMODE,
                       SMTParser.PRODPROOF,
                       SMTParser.PRODUCORE,
                       SMTParser.PRODMODEL,
                       SMTParser.PRODASSGN):
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.__b_value())
        elif self.la in (SMTParser.ROUTCHANN, SMTParser.DOUTCHANN):
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.__string())
        elif self.la in (SMTParser.RANDMSEED, SMTParser.VERBOSITY):
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.__numeral())
        else:
            tokens.append(self.__attribute())
        return tokens

    def __info_flag (self):
        tokens = []
        if self.la in (SMTParser.ERRBEHAVR, 
                       SMTParser.NAME,
                       SMTParser.AUTHORS,
                       SMTParser.VERSION,
                       SMTParser.STATUS,
                       SMTParser.RUNKNOWN,
                       SMTParser.ALLSTAT):
            tokens.append(self.la)
            self.__scan()
        else:
            tokens.append(self.__keyword())
        return tokens

    def __command (self):
        tokens = []
        self.__check_lpar()
        tokens.append(self.la)
        if self.la == SMTParser.SETLOGIC:
            self.__scan()
            tokens.append(self.__symbol())
        elif self.la == SMTParser.SETOPT:
            self.__scan()
            tokens.append(self.__option())
        elif self.la == SMTParser.SETINFO:
            self.__scan()
            tokens.append(self.__spec_attribute())
        elif self.la == SMTParser.DECLSORT:
            self.__scan()
            tokens.append(self.__symbol())
            tokens.append(self.__numeral())
        elif self.la == SMTParser.DEFSORT:
            self.__scan()
            tokens.append(self.__symbol())
            self.__check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__symbol())
            self.__check_rpar()
            tokens.append(self.__sort_expr())
        elif self.la == SMTParser.DECLFUN:
            self.__scan()
            tokens.append(self.__symbol())
            self.__check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__sort())
            self.__check_rpar()
            tokens.append(self.__sort())
        elif self.la == SMTParser.DEFFUN:
            self.__scan()
            tokens.append(self.__symbol())
            self.__check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__sorted_var())
            self.__check_rpar()
            tokens.append(self.__sort())
            tokens.append(self.__term())
        elif self.la == SMTParser.PUSH:
            self.__scan()
            tokens.append(self.__numeral())
        elif self.la == SMTParser.POP:
            self.__scan()
            tokens.append(self.__numeral())
        elif self.la == SMTParser.ASSERT:
            self.__scan()
            tokens.append(self.__term())
        elif self.la == SMTParser.CHECKSAT:
            self.__scan()
        elif self.la == SMTParser.GETASSERT:
            self.__scan()
        elif self.la == SMTParser.GETPROOF:
            self.__scan()
        elif self.la == SMTParser.GETUCORE:
            self.__scan()
        elif self.la == SMTParser.GETVALUE:
            self.__scan()
            self.__check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.__term())
            if not tokens[-1]:
                raise SMTParseException ("term expected", self)
            self.__check_rpar()
        elif self.la == SMTParser.GETASSIGN:
            self.__scan()
        elif self.la == SMTParser.GETOPT:
            self.__scan()
            tokens.append(self.__keyword())
        elif self.la == SMTParser.GETINFO:
            self.__scan()
            tokens.append(self.__info_flag())
        elif self.la == SMTParser.EXIT:
            self.__scan()
        else:
            raise SMTParseException (
                    "unknown command '{}'".format(self.la), self)
        self.__check_rpar()
        #print (">>> tokens: " + str(tokens))
        return tokens

    def __script (self):
        tokens = []
        while self.pos < len(self.tokens):
            tokens.append(self.__command())
        return tokens


if __name__ == "__main__":
    oparser = OptionParser()
    (opts, args) = oparser.parse_args()

    sys.setrecursionlimit(7000)

    parser = SMTParser()
    parsed = parser.parse(args[0])
    #print (parsed.asList())

    print (">>> parser done")

    sys.exit(0)
