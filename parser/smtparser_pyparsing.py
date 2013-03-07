from pyparsing import *

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


    def __init__ (self):

        self.unknown         = empty - ~Word(printables).setName("<unknown>")
        self.spec_chars      = "+-/*=%?!.$_~&^<>@"
        self.comment         = Suppress (';' + restOfLine)

        self.numeral         = \
                NoMatch().setName("numeral") \
                | '0'                        \
                | Regex (r'[1-9][0-9]*')

        self.decimal         = \
                NoMatch().setName("decimal constant") \
                | Regex (r'\d+\.\d*')
                #| Combine (self.numeral               \
                #           + '.'                      \
                #           + Word(nums).setName("numerical digit"))

        self.hexadecimal     = \
                NoMatch().setName("hexadecimal constant") \
                | Regex (r'#x[0-9A-Fa-f]*')
                #| Combine ("#x" - Word(hexnums).setName("hexadecimal digits"))

        self.binary          = \
                NoMatch().setName("binary constant") \
                | Regex (r'#b[01]*')
                #| Combine ("#b" - Word("01").setName("binary digits"))

        self.string          = \
                NoMatch().setName("string constant") \
                | dblQuotedString

        self.b_value         = \
                NoMatch().setName("'true' or 'false'") \
                | SMTParser.TRUE                       \
                | SMTParser.FALSE

        self.symb_str        = \
                Word(alphas + self.spec_chars, 
                     alphas + nums + self.spec_chars,
                     excludeChars = ['|', '\\'])

        self.symbol          = \
                NoMatch().setName("symbol") \
                | '|' + self.symb_str + '|' \
                | self.symb_str

        self.spec_symb_str   = \
                OneOrMore (Word (printables, excludeChars = ['|', '\\']))

        self.spec_symbol     = \
                NoMatch().setName("symbol")      \
                | '|' + self.spec_symb_str + '|' \
                | self.symb_str

        self.keyword         = \
                NoMatch().setName("keyword") \
                | Combine (':' - Word(alphas + nums + self.spec_chars).setName(
                                                              "keyword string"))

        self.spec_constant   = \
                NoMatch().setName("special constant") \
                | self.b_value                        \
                | self.decimal                        \
                | self.numeral                        \
                | self.hexadecimal                    \
                | self.binary                         \
                | self.string

        self.s_expr          = Forward()
        self.s_expr         << \
                (NoMatch().setName("s-expression") \
                | self.spec_constant               \
                | self.symbol                      \
                | self.keyword                     \
                | '(' + ZeroOrMore(self.s_expr) - SMTParser.RPAR)

        self.ident           = \
                NoMatch().setName("identifier") \
                | self.symbol                   \
                | SMTParser.LPAR                \
                    + SMTParser.IDXED           \
                    - self.symbol               \
                    + OneOrMore(self.numeral)   \
                  + SMTParser.RPAR

        self.sort            = Forward()
        self.sort           << \
                (NoMatch().setName("sort") \
                | self.ident               \
                | '(' + self.ident + OneOrMore(self.sort) + SMTParser.RPAR)

        # prevent overeager sort checking if define-sort
        self.sort_expr       = \
                (NoMatch().setName("sort expression")) \
                | self.ident                           \
                | '(' + self.ident + OneOrMore(self.symbol) + SMTParser.RPAR

        self.attr_value      = \
                NoMatch().setName("attribute value") \
                | self.spec_constant                 \
                | self.symbol                        \
                | '(' + ZeroOrMore(self.s_expr) - SMTParser.RPAR

        self.attribute       = \
                NoMatch().setName("attribute")       \
                | self.keyword + Optional (self.attr_value)

        # be more lenient towards comment-style symbols in set-info
        self.spec_attr_value = \
                NoMatch().setName("attribute value") \
                | self.attr_value                    \
                | self.spec_symbol  

        self.spec_attribute  = \
                NoMatch().setName("attribute") \
                | self.keyword + Optional (self.spec_attr_value)

        self.term            = Forward()

        self.qual_ident      = \
                NoMatch().setName("qualified identifier")        \
                | self.ident                                     \
                | SMTParser.LPAR                                 \
                    + SMTParser.AS - self.ident + self.sort \
                  + SMTParser.RPAR

        self.var_binding     = \
                NoMatch().setName("variable binding") \
                | SMTParser.LPAR + self.symbol + self.term + SMTParser.RPAR

        self.sorted_var      = \
                NoMatch().setName("sorted variable") \
                | SMTParser.LPAR + self.symbol + self.sort + SMTParser.RPAR


        self.term           << \
                (NoMatch().setName("term")                                     \
                | self.spec_constant                                           \
                | self.qual_ident                                              \
                | SMTParser.LPAR + SMTParser.LET                               \
                                    - SMTParser.LPAR                           \
                                          + Group(OneOrMore(self.var_binding)) \
                                    + SMTParser.RPAR                           \
                                    + self.term + SMTParser.RPAR               \
                | SMTParser.LPAR + SMTParser.FORALL                            \
                                    - SMTParser.LPAR                           \
                                          + Group(OneOrMore(self.sorted_var))  \
                                    - SMTParser.RPAR                           \
                                    + self.term + SMTParser.RPAR               \
                | SMTParser.LPAR + SMTParser.EXISTS                            \
                                    - SMTParser.LPAR                           \
                                          + Group(OneOrMore(self.sorted_var))  \
                                    - SMTParser.RPAR                           \
                                    + self.term + SMTParser.RPAR               \
                | SMTParser.LPAR + '!' - self.term                             \
                                    + Group(OneOrMore(self.attribute))         \
                                    + SMTParser.RPAR                           \
                | SMTParser.LPAR + self.qual_ident                             \
                                    + Group(OneOrMore(self.term))              \
                                    + SMTParser.RPAR) 

        self.option          = \
                NoMatch().setName("option") \
                | SMTParser.PRINTSUCC - self.b_value \
                | SMTParser.EXPANDDEF - self.b_value \
                | SMTParser.INTERMODE - self.b_value \
                | SMTParser.PRODPROOF - self.b_value \
                | SMTParser.PRODUCORE - self.b_value \
                | SMTParser.PRODMODEL - self.b_value \
                | SMTParser.PRODASSGN - self.b_value \
                | SMTParser.ROUTCHANN - self.string  \
                | SMTParser.DOUTCHANN - self.string  \
                | SMTParser.RANDMSEED - self.numeral \
                | SMTParser.VERBOSITY - self.numeral \
                | self.attribute

        self.info_flag       = \
                NoMatch().setName("info flag") \
                | SMTParser.ERRBEHAVR          \
                | SMTParser.NAME               \
                | SMTParser.AUTHORS            \
                | SMTParser.VERSION            \
                | SMTParser.STATUS             \
                | SMTParser.RUNKNOWN           \
                | SMTParser.ALLSTAT            \
                | self.keyword

        self.command         = \
                NoMatch().setName("command")                                 \
                | SMTParser.LPAR + SMTParser.SETLOGIC                        \
                                    - self.symbol + SMTParser.RPAR           \
                | SMTParser.LPAR + SMTParser.SETOPT                          \
                                    - self.option - SMTParser.RPAR           \
                | SMTParser.LPAR + SMTParser.SETINFO                         \
                                    - self.spec_attribute - SMTParser.RPAR   \
                | SMTParser.LPAR + SMTParser.DECLSORT                        \
                                    - self.symbol + self.numeral             \
                                    + SMTParser.RPAR                         \
                | SMTParser.LPAR + SMTParser.DEFSORT                         \
                                    - self.symbol                            \
                                    + SMTParser.LPAR                         \
                                        + Group(ZeroOrMore(self.symbol))     \
                                    + SMTParser.RPAR                         \
                                    + self.sort_expr + SMTParser.RPAR        \
                | SMTParser.LPAR + SMTParser.DECLFUN                         \
                                    - self.symbol                            \
                                    + SMTParser.LPAR                         \
                                        + Group(ZeroOrMore(self.sort))       \
                                    + SMTParser.RPAR                         \
                                    + self.sort + SMTParser.RPAR             \
                | SMTParser.LPAR + SMTParser.DEFFUN                          \
                                    - self.symbol                            \
                                    + SMTParser.LPAR                         \
                                        + Group(ZeroOrMore(self.sorted_var)) \
                                    - SMTParser.RPAR                         \
                                    + self.sort + self.term + SMTParser.RPAR \
                | SMTParser.LPAR + SMTParser.PUSH                            \
                                     - self.numeral + SMTParser.RPAR         \
                | SMTParser.LPAR + SMTParser.POP                             \
                                     - self.numeral + SMTParser.RPAR         \
                | SMTParser.LPAR + SMTParser.ASSERT                          \
                                     - self.term + SMTParser.RPAR            \
                | SMTParser.LPAR + SMTParser.CHECKSAT  - SMTParser.RPAR      \
                | SMTParser.LPAR + SMTParser.GETASSERT - SMTParser.RPAR      \
                | SMTParser.LPAR + SMTParser.GETPROOF  - SMTParser.RPAR      \
                | SMTParser.LPAR + SMTParser.GETUCORE  - SMTParser.RPAR      \
                | SMTParser.LPAR + SMTParser.GETVALUE                        \
                                     - SMTParser.LPAR                        \
                                         + Group(OneOrMore(self.term))       \
                                     + SMTParser.RPAR + SMTParser.RPAR       \
                | SMTParser.LPAR + SMTParser.GETASSIGN - SMTParser.RPAR      \
                | SMTParser.LPAR + SMTParser.GETOPT                          \
                                 - self.keyword        + SMTParser.RPAR      \
                | SMTParser.LPAR + SMTParser.GETINFO                         \
                                 - self.info_flag      - SMTParser.RPAR      \
                | SMTParser.LPAR + SMTParser.EXIT      - SMTParser.RPAR      \
                | self.unknown

        self.script          = OneOrMore(self.command)

    def parse (self, infile):
        return self.script.parseFile(infile, parseAll = True)
