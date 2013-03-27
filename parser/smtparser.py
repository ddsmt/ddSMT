import sys
import re

import resource # TODO DEBUG

class SMTParseException (Exception):

    def __init__ (self, msg, parser):
        self.msg = msg
        self.infile = parser.infile
        (self.line, self.col) = parser.get_pos()

    def __str__ (self):
        return "[smtparser] {}:{}:{}: {}".format(
                self.infile, self.line, self.col, self.msg)


class SMTParseElement:

    def __init__ (self):
        self.parse_action = lambda t: t

    def set_parse_action (self, action):
        self.parse_action = action


class SMTParseResult:

    def __init__ (self):
        self.tokens = []

    def __str__ (self):
        if len(self.tokens) == 1:
            return str(self.tokens[0])
        return str(self.tokens)

    def __getitem__ (self, key):
        return self.tokens[key]

    def __setitem__ (self, key, value):
        self.tokens[key] = value

    def __len__ (self):
        return len(self.tokens)

    def append (self, item):
        self.tokens.append(item)


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
        #self.instring = ""
        self.tokens = []
        self.la = ""
        self.pos = 0

        self.spec_chars = "+-/*=%?!.$_~&^<>@"

        self.numeral         = SMTParseElement()
        self.decimal         = SMTParseElement()
        self.hexadecimal     = SMTParseElement()
        self.binary          = SMTParseElement()
        self.string          = SMTParseElement()
        self.b_value         = SMTParseElement()
        self.symbol          = SMTParseElement()
        self.spec_symbol     = SMTParseElement()
        self.keyword         = SMTParseElement() 
        self.spec_constant   = SMTParseElement()
        self.s_expr          = SMTParseElement()
        self.ident           = SMTParseElement()
        self.sort            = SMTParseElement()
        self.sort_expr       = SMTParseElement()
        self.attr_value      = SMTParseElement()
        self.attribute       = SMTParseElement()
        self.spec_attr_value = SMTParseElement()    
        self.spec_attribute  = SMTParseElement()
        self.qual_ident      = SMTParseElement()
        self.var_binding     = SMTParseElement()
        self.var_bindings    = SMTParseElement()
        self.sorted_var      = SMTParseElement()
        self.sorted_qvar     = SMTParseElement()
        self.sorted_qvars    = SMTParseElement()
        self.term            = SMTParseElement()
        self.option          = SMTParseElement()
        self.info_flag       = SMTParseElement()
        self.command         = SMTParseElement()
        self.script          = SMTParseElement()

    def parse (self, infile):
        self.infile = infile
        sys.setrecursionlimit(7000)
        print (resource.getrusage(resource.RUSAGE_SELF).ru_maxrss) # TODO debug
        self.tokens = self.__tokenize()
        print (resource.getrusage(resource.RUSAGE_SELF).ru_maxrss) # TODO debug
        self.__scan()
        return self.script.parse_action(self.__script())
                
    def get_pos (self):
        instring = None
        with open (self.infile, 'r') as input_file:
            instring = input_file.read()
        (idx, line, col) = self.__skip_space(instring, 0, 1, 0)
        (idx, line, col) = self.__skip_comment(instring, idx, line, col)
        (idx, line, col) = self.__skip_space(instring, idx, line, col)
        for token in self.tokens[:self.pos - 1]:
            for i in range(0, len(token)):
                assert (token[i] == instring[idx])
                col += 1
                idx += 1
            (idx, line, col) = self.__skip_space(instring, idx, line, col)
            (idx, line, col) = self.__skip_comment(instring, idx, line, col)
            (idx, line, col) = self.__skip_space(instring, idx, line, col)
        return (line, col + 1)       

    def __skip_space (self, instring, idx, line, col):
        while idx < len(instring) and instring[idx].isspace():
            if instring[idx] == '\n':
                line += 1
                col = 0
            else:
                col += 1
            idx += 1
        return (idx, line, col)

    def __skip_comment (instring, self, idx, line, col):
        if idx < len(instring) and instring[idx] == ';':
            while idx < len(instring) and instring[idx] != '\n':
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
        result = []
        with open (self.infile, 'r') as input_file:
            instring = re.sub(r';[^\n]*\n', '', input_file.read()).split()
        #instring = re.sub(r';[^\n]*\n', '', instring).split()
        #print (resource.getrusage(resource.RUSAGE_SELF).ru_maxrss) # TODO debug
        #instring = [sys.intern(s) for s in instring]
        #print (resource.getrusage(resource.RUSAGE_SELF).ru_maxrss) # TODO debug
        ###instring = instring.split()
            stropen = False
            for item in instring:
                stropen = item[0] == '\"' if not stropen \
                        else False if item[0] == '\"' else stropen
                rpars = []
                if stropen:
                    for i in range(0, len(item)):
                        if item[i] == '\"':
                            if i == 0:  # skip string opener
                                continue
                            else:
                                stropen = False
                                result.append(item[0:i+1])
                                item = item[i+1:]
                                break
                if not stropen:
                    # check for opening parenthesis
                    while item and item[0] == SMTParser.LPAR:
                        if item == SMTParser.IDXED:
                            result.append(SMTParser.IDXED)
                            item = ""
                            continue
                        result.append(SMTParser.LPAR)
                        item = item[1:]
                    # check for closing parenthesis
                    while item and item[-1] == SMTParser.RPAR:
                        rpars.append(SMTParser.RPAR)
                        item = item[:-1]
                    # check for remaining parenthesis inbetween
                    while item and \
                            (SMTParser.LPAR in item or SMTParser.RPAR in item):
                        for i in range(0, len(item)):
                            if item[i] in (SMTParser.LPAR, SMTParser.RPAR):
                                if item[0:i]:
                                    result.append(item[0:i])
                                result.append(item[i])
                                item = item[i+1:]
                                break
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
        tokens = SMTParseResult()
        if not re.match(r'^0$|[1-9][0-9]*', self.la):
            raise SMTParseException ("numeral expected", self)
        tokens.append(self.la)
        self.__scan()
        return tokens

    def __decimal (self):
        tokens = SMTParseResult()
        if not re.match(r'\d+\.\d*', self.la):
            raise SMTParseException ("decimal expected", self)
        tokens.append(self.la)
        self.__scan()
        return tokens

    def __hexadecimal (self):
        tokens = SMTParseResult()
        if not re.match(r'#x[0-9A-Fa-f]*', self.la):
            raise SMTParseException ("hexadecimal constant expected", self)
        tokens.append(self.la)
        self.__scan()
        return tokens

    def __binary (self):
        tokens = SMTParseResult()
        if not re.match(r'#b[01]*', self.la):
            raise SMTParseException ("binary constant expected", self)
        tokens.append(self.la)
        self.__scan()
        return tokens

    def __string (self):
        tokens = SMTParseResult()
        if not self.la[0] == '\"':
            raise SMTParseException ("string expected", self)
        strings = [self.la]
        if self.la == '\"' or self.la[-1] != '\"':
            self.__scan()
            while self.la and self.la[-1] != '\"' and self.la != '\"':
                strings.append(self.la)
                self.__scan()
            strings.append(self.la)
        tokens.append(" ".join([s for s in strings]))
        if not tokens[-1][-1] == '\"':
            raise SMTParseException ("unclosed string, missing '\"'", self)
        self.__scan()
        return tokens

    def __b_value (self):
        tokens = SMTParseResult()
        if self.la != SMTParser.TRUE and self.la != SMTParser.FALSE:
            raise SMTParseException ("'true' or 'false' expected", self)
        tokens.append(self.la)
        self.__scan()
        return tokens

    def __symbol (self):
        tokens = SMTParseResult()
        if not re.match(
                r'[0-9a-zA-Z\*|\+\-/\*\=%\?\!\.\$_~&\^\<\>@]*', self.la):
            raise SMTParseException (
                    "unexpected character: {}".format(self.la[0]), self)
        if self.la[0] == '|':
            if self.la[-1] != '|':
                raise SMTParseException ("missing symbol close Tag '|'", self)
            string = self.la[1:-1]
            if '\\' in string:
                raise SMTParseException ("unexpected character: '\\'", self)
            elif '|' in string:
                raise SMTParseException ("unexpected character: '|'", self)
        else:
            string = self.la
            for i in range(0, len(string)):
                c = string[i]
                if not c.isalpha() and not c.isdigit() \
                   and c not in self.spec_chars:
                       raise SMTParseException (
                               "unexpected character: '{}'".format(c), self)
        tokens.append(self.la)
        self.__scan()
        return tokens

    def __spec_symbol (self):
        tokens = SMTParseResult()
        if not re.match(
                r'[0-9a-zA-Z\*|\+\-/\*\=%\?\!\.\$_~&\^\<\>@]*', self.la):
            raise SMTParseException (
                    "unexpected character: {}".format(self.la[0]), self)
        if self.la[0] == '|':
            strings = [self.la]
            if self.la == '|' or self.la[-1] != '|':
                self.__scan()
                while self.la and self.la[-1] != '|' and self.la != '|':
                    if strings[-1] == SMTParser.LPAR \
                       or self.la == SMTParser.RPAR:
                        strings[-1] = "{}{}".format(strings[-1], self.la)
                    else:
                        strings.append(self.la)
                    self.__scan()
                strings.append(self.la)
            tokens.append(" ".join([s for s in strings]))
            if tokens[-1][-1] != '|':        
                raise SMTParseException ("unclosed symbol, missing '|'", self)
        else:
            tokens.append(self.la)
        self.__scan()
        return tokens

    def __keyword (self):
        tokens = SMTParseResult()
        if self.la[0] != ':':
            raise SMTParseException ("keyword expected", self)
        for i in range(1, len(self.la)):
            c = self.la[i]
            if not c.isalpha() and not c.isdigit() and c not in self.spec_chars:
                raise SMTParseException (
                        "unexpected character: '{}'".format(c), self, i)
        tokens.append("{}".format(self.la))
        self.__scan()
        return tokens

    def __spec_constant (self):
        tokens = SMTParseResult()
        if self.la[0] == '\"':
            tokens.append(self.string.parse_action(self.__string()))
        elif re.match(r'^#b', self.la):
            tokens.append(self.binary.parse_action(self.__binary()))
        elif re.match(r'^#x', self.la):
            tokens.append(self.hexadecimal.parse_action(self.__hexadecimal()))
        elif self.la[0].isdigit():
            if '.' in self.la:
                tokens.append(self.decimal.parse_action(self.__decimal()))
            else:
                tokens.append(self.numeral.parse_action(self.__numeral()))
        elif self.la in (SMTParser.TRUE, SMTParser.FALSE):
            tokens.append(self.b_value.parse_action(self.__b_value()))
        else:
            raise SMTParseException ("special constant expected", self)
        return tokens

    def __s_expr (self):
        tokens = SMTParseResult()
        if self.la[0] == ':':
            tokens.append(self.keyword.parse_action(self.__keyword()))
        elif self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.__first_of_const(self.la[0]):
            tokens.append(
                    self.spec_constant.parse_action(self.__spec_constant()))
        elif self.__first_of_symbol(self.la[0]):
            tokens.append(self.symbol.parse_action(self.__symbol()))
        else:
            self.__check_lpar("s-expression expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.s_expr.parse_action(self.__s_expr()))
            self.__check_rpar()
        return tokens

    def __ident (self):
        tokens = SMTParseResult()
        if self.__first_of_symbol(self.la[0]):
            tokens.append(self.symbol.parse_action(self.__symbol()))
        elif self.la == SMTParser.IDXED:
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.symbol.parse_action(self.__symbol()))
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.numeral.parse_action(self.__numeral()))
            if not tokens[-1]:
                raise SMTParseException ("numeral expected", self)
            self.__check_rpar()
        else:
            raise SMTParseException ("identifier expected", self)
        return tokens

    def __sort (self):
        tokens = SMTParseResult()
        if self.__first_of_symbol(self.la[0]) or self.la == SMTParser.IDXED:
            tokens.append(self.ident.parse_action(self.__ident()))
        else:
            self.__check_lpar("sort expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append(self.ident.parse_action(self.__ident()))
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.sort.parse_action(self.__sort()))
            if not tokens[-1]:
                raise SMTParseException ("sort expected", self)
            self.__check_rpar()
        return tokens

    def __sort_expr (self):
        tokens = SMTParseResult()
        if self.__first_of_symbol(self.la[0]) or self.la == SMTParser.IDXED:
            tokens.append(self.ident.parse_action(self.__ident()))
        else:
            self.__check_lpar("sort expression expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append(self.ident.parse_action(self.__ident()))
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.symbol.parse_action(self.__symbol()))
            if not tokens[-1]:
                raise SMTParseException ("symbol expected", self)
            self.__check_rpar()
        return tokens

    def __attr_value (self):
        tokens = SMTParseResult()
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.__first_of_const(self.la[0]):
            tokens.append(
                    self.spec_constant.parse_action(self.__spec_constant()))
        elif self.__first_of_symbol(self.la[0]):
            tokens.append(self.symbol.parse_action(self.__symbol()))
        else:
            self.__check_lpar("attribute value expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.s_expr.parse_action(self.__s_expr()))
            self.__check_rpar()
        return tokens

    def __attribute (self):
        tokens = SMTParseResult()
        tokens.append(self.keyword.parse_action(self.__keyword()))
        if self.la[0] not in (':', SMTParser.RPAR):
            tokens.append(self.attr_value.parse_action(self.__attr_value()))
        return tokens

    def __spec_attr_value (self):
        tokens = SMTParseResult()
        if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                or self.__first_of_const(self.la[0]):
            tokens.append(
                    self.spec_constant.parse_action(self.__spec_constant()))
        elif self.__first_of_symbol(self.la[0]):
            tokens.append(self.spec_symbol.parse_action(self.__spec_symbol()))
        else:
            self.__check_lpar("attribute value expected")
            tokens.append(SMTParser.LPAR)  # necessary for distinction
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.s_expr.parse_action(self.__s_expr()))
            self.__check_rpar()
        return tokens

    def __spec_attribute (self):
        tokens = SMTParseResult()
        tokens.append(self.keyword.parse_action(self.__keyword()))
        if self.la[0] not in (':', SMTParser.RPAR):
            tokens.append(
                    self.spec_attr_value.parse_action(self.__spec_attr_value()))
        return tokens

    def __qual_ident (self):
        tokens = SMTParseResult()
        if self.__first_of_symbol(self.la[0]) or self.la == SMTParser.IDXED:
            tokens.append(self.ident.parse_action(self.__ident()))
        else:
            self.__check_lpar("qualified identifier expected")
            if self.la != SMTParser.AS:
                raise SMTParseException ("'as' expected", self)
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.ident.parse_action(self.__ident()))
            tokens.append(self.sort.parse_action(self.__sort()))
            self.__check_rpar()
        return tokens
        
    def __var_binding (self):
        tokens = SMTParseResult()
        self.__check_lpar()
        tokens.append(self.symbol.parse_action(self.__symbol()))
        tokens.append(self.term.parse_action(self.__term()))
        self.__check_rpar()
        return tokens

    def __var_bindings (self):
        tokens = SMTParseResult()
        cnt = 0
        self.__check_lpar()
        tokens.append([])
        while self.la and self.la != SMTParser.RPAR:
            cnt += 1
            tokens[-1].append(self.var_binding.parse_action(
                self.__var_binding(), cnt))
        if not tokens[-1]:
            raise SMTParseException ("variable binding expected", self)
        self.__check_rpar()
        return tokens

    def __sorted_var (self):
        tokens = SMTParseResult()
        self.__check_lpar()
        tokens.append(self.symbol.parse_action(self.__symbol()))
        tokens.append(self.sort.parse_action(self.__sort()))
        self.__check_rpar()
        return tokens

    def __sorted_qvar (self):
        tokens = SMTParseResult()
        self.__check_lpar()
        tokens.append(self.symbol.parse_action(self.__symbol()))
        tokens.append(self.sort.parse_action(self.__sort()))
        self.__check_rpar()
        return tokens

    def __sorted_qvars (self):
        tokens = SMTParseResult()
        cnt = 0
        self.__check_lpar()
        tokens.append([])
        while self.la and self.la != SMTParser.RPAR:
            cnt += 1
            tokens[-1].append(self.sorted_qvar.parse_action(
                self.__sorted_qvar(), cnt))
        if not tokens[-1]:
            raise SMTParseException ("sorted variable expected", self)
        self.__check_rpar()
        return tokens


    def __term (self):
        stack = []
        cntpar = 0
        terms = [["other", []]]
        while True:
            #print ("\n============ stack start =====================")
            #for item in stack:
            #    print ("   " + str(item))
            #print ("============ stack end =======================\n")
            if self.la == SMTParser.RPAR:
                # check number of nested terms given
                nterms = len(terms[-1][1])
                if terms[-1][0] == SMTParser.LPAR and nterms == 0:
                    raise SMTParseException ("term expected", self)
                elif terms[-1][0] in (SMTParser.LET, SMTParser.EXISTS, 
                                      SMTParser.FORALL) and nterms != 1:
                    self.pos = terms[-1][1][0]
                    self.__scan()
                    self.__check_rpar()
                # build term expression
                tokens = SMTParseResult()
                tmp = []
                while stack and stack[-1] not in (SMTParser.LPAR, 
                        SMTParser.LET, SMTParser.EXISTS, SMTParser.FORALL):
                    tmp.append(stack.pop())
                if stack:
                    tmp.append(stack.pop())
                assert (tmp)
                if tmp[-1] == SMTParser.LPAR:
                    tmp.pop()
                    tokens.append(tmp.pop())  # function symbol
                    tokens.append([])
                    while tmp:
                        tokens[-1].append(self.term.parse_action(tmp.pop()))
                elif tmp[-1] in (
                        SMTParser.LET, SMTParser.EXISTS, SMTParser.FORALL):
                    tokens.append(tmp.pop())  # let, forall, exists
                    assert (isinstance(tmp[-1], list))
                    tokens.append(tmp.pop())  # var bindings, sorted vars
                    tokens.append(self.term.parse_action(tmp.pop()))  # term
                else:
                    tokens = tmp.pop()
                if stack:
                    t = self.term.parse_action(tokens)
                    tokens = SMTParseResult()
                    tokens.append(t)
                stack.append(tokens)
                terms.pop()
                cntpar -= 1
                self.__check_rpar()
            else:
                terms[-1][1].append(self.pos)
                if self.la in (SMTParser.TRUE, SMTParser.FALSE) \
                   or self.__first_of_const(self.la[0]):
                       tokens = SMTParseResult()
                       tokens.append(self.spec_constant.parse_action(
                           self.__spec_constant()))
                       stack.append(tokens)
                elif self.la == SMTParser.IDXED \
                     or self.__first_of_symbol(self.la[0]):
                         tokens = SMTParseResult()
                         tokens.append(self.qual_ident.parse_action(
                             self.__qual_ident()))
                         stack.append(tokens)
                else:
                    self.__check_lpar("term expected")
                    if self.la == SMTParser.AS:
                        self.__scan_back(1)
                        assert (self.la == SMTParser.LPAR)
                        tokens = SMTParseResult()
                        tokens.append(self.qual_ident.parse_action(
                            self.__qual_ident()))
                        stack.append(tokens)
                    elif self.la == SMTParser.LET:
                        cntpar += 1
                        stack.append(self.la)
                        terms.append([self.la, []])
                        self.__scan()
                        stack.append(self.var_bindings.parse_action(
                            self.__var_bindings()))
                        # -> term
                    elif self.la in (SMTParser.EXISTS, SMTParser.FORALL):
                        cntpar += 1
                        stack.append(self.la)
                        terms.append([self.la, []])
                        self.__scan()
                        stack.append(self.sorted_qvars.parse_action(
                            self.__sorted_qvars()))
                        # -> term
                    elif self.la == '!':
                        tokens = SMTParseResult()
                        tokens.append(self.la)
                        self.__scan()
                        # recursive call to term
                        tokens.append(self.term.parse_action(self.__term()))
                        # attributes
                        tokens.append([])
                        while self.la and self.la != SMTParser.RPAR:
                            tokens[-1].append(self.attribute.parse_action(
                                self.__attribute()))
                        if not tokens[-1]:
                            raise SMTParseException (
                                    "attribute expected", self)
                        stack.append(tokens)
                        self.__check_rpar()
                    else:
                        cntpar += 1
                        stack.append(SMTParser.LPAR)  # fun app marker
                        terms.append([self.la, []])
                        stack.append(self.qual_ident.parse_action(
                            self.__qual_ident()))
                        # -> term+
            if not self.la and cntpar:
                self.__check_rpar()
                break
            elif cntpar == 0:
                break
        assert (len(stack) == 1)
        return stack.pop()

    def __option (self):
        tokens = SMTParseResult()
        if self.la in (SMTParser.PRINTSUCC, 
                       SMTParser.EXPANDDEF,
                       SMTParser.INTERMODE,
                       SMTParser.PRODPROOF,
                       SMTParser.PRODUCORE,
                       SMTParser.PRODMODEL,
                       SMTParser.PRODASSGN):
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.b_value.parse_action(self.__b_value()))
        elif self.la in (SMTParser.ROUTCHANN, SMTParser.DOUTCHANN):
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.string.parse_action(self.__string()))
        elif self.la in (SMTParser.RANDMSEED, SMTParser.VERBOSITY):
            tokens.append(self.la)
            self.__scan()
            tokens.append(self.numeral.parse_action(self.__numeral()))
        else:
            tokens.append(self.attribute.parse_action(self.__attribute()))
        return tokens

    def __info_flag (self):
        tokens = SMTParseResult()
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
            tokens.append(self.keyword.parse_action(self.__keyword()))
        return tokens

    def __command (self):
        tokens = SMTParseResult()
        self.__check_lpar()
        tokens.append(self.la)
        if self.la == SMTParser.SETLOGIC:
            self.__scan()
            tokens.append(self.symbol.parse_action(self.__symbol()))
        elif self.la == SMTParser.SETOPT:
            self.__scan()
            tokens.append(self.option.parse_action(self.__option()))
        elif self.la == SMTParser.SETINFO:
            self.__scan()
            # spec_attribute: be more lenient towards comment-style symbols
            tokens.append(
                    self.spec_attribute.parse_action(self.__spec_attribute()))
        elif self.la == SMTParser.DECLSORT:
            self.__scan()
            tokens.append(self.symbol.parse_action(self.__symbol()))
            tokens.append(self.numeral.parse_action(self.__numeral()))
        elif self.la == SMTParser.DEFSORT:
            self.__scan()
            tokens.append(self.symbol.parse_action(self.__symbol()))
            self.__check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.symbol.parse_action(self.__symbol()))
            self.__check_rpar()
            # sort_expr: prevent over-eager sort checking if define-sort
            tokens.append(self.sort_expr.parse_action(self.__sort_expr()))
        elif self.la == SMTParser.DECLFUN:
            self.__scan()
            tokens.append(self.symbol.parse_action(self.__symbol()))
            self.__check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(self.sort.parse_action(self.__sort()))
            self.__check_rpar()
            tokens.append(self.sort.parse_action(self.__sort()))
        elif self.la == SMTParser.DEFFUN:
            self.__scan()
            tokens.append(self.symbol.parse_action(self.__symbol()))
            self.__check_lpar()
            tokens.append([])
            while self.la and self.la != SMTParser.RPAR:
                tokens[-1].append(
                        self.sorted_var.parse_action(self.__sorted_var()))
            self.__check_rpar()
            tokens.append(self.sort.parse_action(self.__sort()))
            tokens.append(self.term.parse_action(self.__term()))
        elif self.la == SMTParser.PUSH:
            self.__scan()
            tokens.append(self.numeral.parse_action(self.__numeral()))
        elif self.la == SMTParser.POP:
            self.__scan()
            tokens.append(self.numeral.parse_action(self.__numeral()))
        elif self.la == SMTParser.ASSERT:
            self.__scan()
            tokens.append(self.term.parse_action(self.__term()))
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
                tokens[-1].append(self.term.parse_action(self.__term()))
            if not tokens[-1]:
                raise SMTParseException ("term expected", self)
            self.__check_rpar()
        elif self.la == SMTParser.GETASSIGN:
            self.__scan()
        elif self.la == SMTParser.GETOPT:
            self.__scan()
            tokens.append(self.keyword.parse_action(self.__keyword()))
        elif self.la == SMTParser.GETINFO:
            self.__scan()
            tokens.append(self.info_flag.parse_action(self.__info_flag()))
        elif self.la == SMTParser.EXIT:
            self.__scan()
        else:
            raise SMTParseException (
                    "unknown command '{}'".format(self.la), self)
        self.__check_rpar()
        return tokens

    def __script (self):
        tokens = SMTParseResult()
        while self.pos < len(self.tokens):
            tokens.append(self.command.parse_action(self.__command()))
        return tokens
