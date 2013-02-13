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

        self.numeral         = NoMatch().setName("numeral") \
                               | '0' | Regex (r'[1-9][0-9]*')

        self.decimal         = NoMatch().setName("decimal constant") \
                               | Combine (numeral \
                                     + '.'   \
                                     + Word(nums).setName("numerical digit"))

        self.hexadecimal     = NoMatch().setName("hexadecimal constant") \
                               | Combine ("#x" \
                                     - Word(hexnums).setName(
                                                        "hexadecimal digits"))

        self.binary          = NoMatch().setName("binary constant") \
                               | Combine ("#b" \
                                     - Word("01").setName("binary digits"))

        self.string          = NoMatch().setName("string constant") 
                               | dblQuotedString

        self.b_value         = NoMatch().setName("'true' or 'false'") 
                               | TRUE | FALSE

        self.symb_str        = Word(alphas + self.spec_chars, 
                                    alphas + nums + self.spec_chars,
                                    excludeChars = ['|', '\\'])
        self.symbol          = NoMatch().setName("symbol") \
                               | '|' + self.symb_str + '|' | self.symb_str

        self.spec_symb_str   = OneOrMore (Word (printables, 
                                                excludeChars = ['|', '\\']))
        self.spec_symbol     = NoMatch().setName("symbol") \
                               | '|' + self.spec_symb_str + '|' | self.symb_str

        self.keyword         = NoMatch().setName("keyword") \
                               | Combine (':' - Word(alphas \
                                                 + nums     \
                                                 + self.spec_chars).setName(
                                                              "keyword string"))

        self.spec_constant   = NoMatch().setName("special constant") \
                               | self.b_value                        \
                               | self.decimal                        \
                               | self.numeral                        \
                               | self.hexadecimal                    \
                               | self.binary                         \
                               | self.string

        self.s_expr          = Forward()
        self.s_expr         << (NoMatch().setName("s-expression") \
                               | self.spec_constant               \
                               | self.symbol                      \
                               | self.keyword                     \
                               | '(' + ZeroOrMore(self.s_expr) - RPAR)

        self.identifier      = NoMatch().setName("identifier") \
                               | self.symbol                   \
                               | LPAR + IDXED - self.symbol    \
                                              + OneOrMore(self.numeral) + RPAR

        self.sort            = Forward()
        self.sort           << (NoMatch().setName("sort") \
                               | self.identifier          \
                               | '(' + self.identifier    \
                                     + OneOrMore(self.sort) + RPAR)

        self.attr_value      = NoMatch().setName("attribute value") \
                               | self.spec_constant                 \
                               | self.symbol                        \
                               | '(' + ZeroOrMore(self.s_expr) - RPAR
        self.attribute       = NoMatch().setName("attribute")       \
                               | self.keyword + Optional (self.attr_value)

        # be more lenient towards comment-style symbols in set-info
        self.spec_attr_value = NoMatch().setName("attribute value") \
                               | self.attr_value | self.spec_symbol  
        self.spec_attribute  = NoMatch().setName("attribute")       \
                               | self.keyword + Optional (self.spec_attr_value)

        self.term            = Forward()

        self.qual_identifier = NoMatch().setName("qualified identifier") \
                               | self.identifier                         \
                               | LPAR + AS - self.identifier + self.sort + RPAR

        self.var_binding     = NoMatch().setName("variable binding") \
                               | LPAR + self.symbol + self.term + RPAR

        self.sorted_var      = NoMatch().setName("sorted variable") \
                               | LPAR + self.symbol + self.sort + RPAR

        self.term           << (NoMatch().setName("term")                      \
                       | self.spec_constant                                    \
                       | self.qual_identifier                                  \
                       | LPAR + LET                                            \
                              - LPAR                                           \
                                    + Group(OneOrMore(self.var_binding))       \
                              + RPAR                                           \
                              + self.term + RPAR                               \
                       | LPAR + FORALL                                         \
                              - LPAR                                           \
                                    + Group(OneOrMore(self.sorted_var))        \
                              - RPAR + self.term + RPAR                        \
                       | LPAR + EXISTS                                         \
                              - LPAR                                           \
                                    + Group(OneOrMore(self.sorted_var))        \
                              - RPAR + self.term + RPAR                        \
                       | LPAR + '!' - self.term                                \
                                    + Group(OneOrMore(self.attribute)) + RPAR  \
                       | LPAR + self.qual_identifier                           \
                              + Group(OneOrMore(self.term)) + RPAR) 

        self.option          = NoMatch().setName("option") \
                               | PRINTSUCC - self.b_value \
                               | EXPANDDEF - self.b_value \
                               | INTERMODE - self.b_value \
                               | PRODPROOF - self.b_value \
                               | PRODUCORE - self.b_value \
                               | PRODMODEL - self.b_value \
                               | PRODASSGN - self.b_value \
                               | ROUTCHANN - self.string  \
                               | DOUTCHANN - self.string  \
                               | RANDMSEED - self.numeral \
                               | VERBOSITY - self.numeral \
                               | self.attribute

        self.info_flag       = NoMatch().setName("info flag") \
                               | ERRBEHAVR                    \
                               | NAME                         \
                               | AUTHORS                      \
                               | VERSION                      \
                               | STATUS                       \
                               | RUNKNOWN                     \
                               | ALLSTAT                      \
                               | self.keyword

        self.command         = NoMatch().setName("command")                    \
                       | LPAR + SETLOGIC  - self.symbol + RPAR                 \
                       | LPAR + SETOPT    - self.option - RPAR                 \
                       | LPAR + SETINFO   - self.spec_attribute - RPAR         \
                       | LPAR + DECLSORT  - self.symbol + self.numeral + RPAR  \
                       | LPAR + DEFSORT   - self.symbol                        \
                                          + LPAR                               \
                                              + Group(ZeroOrMore(self.symbol)) \
                                          + RPAR + self.sort + RPAR            \
                       | LPAR + DECLFUN   - self.symbol                        \
                                          + LPAR                               \
                                              + Group(ZeroOrMore(self.sort))   \
                                          + RPAR + self.sort + RPAR            \
                       | LPAR + DEFFUN    - self.symbol                        \
                                          + LPAR                               \
                                          + Group(ZeroOrMore(self.sorted_var)) \
                                          - RPAR + self.sort + self.term       \
                                          + RPAR                               \
                       | LPAR + PUSH      - self.numeral + RPAR                \
                       | LPAR + POP       - self.numeral + RPAR                \
                       | LPAR + ASSERT    - self.term + RPAR                   \
                       | LPAR + CHECKSAT  - RPAR                               \
                       | LPAR + GETASSERT - RPAR                               \
                       | LPAR + GETPROOF  - RPAR                               \
                       | LPAR + GETUCORE  - RPAR                               \
                       | LPAR + GETVALUE  - LPAR + Group(OneOrMore(self.term)) \
                                          + RPAR + RPAR                        \
                       | LPAR + GETASSIGN - RPAR                               \
                       | LPAR + GETOPT    - self.keyword + RPAR                \
                       | LPAR + GETINFO   - self.info_flag - RPAR              \
                       | LPAR + EXIT      - RPAR                               \
                       | self.unknown

        self.script          = OneOrMore(self.command)


    def parse (self, infile):
        return self.script.parseFile(infile, parseAll = True)



