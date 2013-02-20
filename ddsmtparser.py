from smtparser import SMTParser
from pyparsing import ParseSyntaxException, lineno, col

KIND_ANNFUN    = "<annotated fun symbol>"
KIND_FUN       = "<var or fun symbol>"
KIND_FUNAPP    = "<fun application>"
KIND_VARB      = "<var binding>"

KIND_SCOPE     = "<scope>"
KIND_ESCOPE    = "<exists scope>"
KIND_FSCOPE    = "<forall scope>"
KIND_LSCOPE    = "<let scope>"

KIND_SORT      = "<sort>"
KIND_ARRSORT   = "<array sort>"
KIND_BVSORT    = "<bv sort>"
KIND_SORTEXPR  = "<sort expression>"

KIND_CONST     = "<const bool>"
KIND_CONSTB    = "<const bin>"
KIND_CONSTD    = "<const dec>"
KIND_CONSTN    = "<const num>"
KIND_CONSTH    = "<const hex>"
KIND_CONSTS    = "<const string>"

KIND_ANNOTN    = "!"
KIND_EXISTS    = "exists"
KIND_FORALL    = "forall"
KIND_LET       = "let"

KIND_AND       = "and"
KIND_IMPL      = "implies"
KIND_ITE       = "ite"
KIND_NOT       = "not"
KIND_OR        = "or"
KIND_XOR       = "xor"

KIND_EQ        = "="
KIND_DIST      = "distinct"
KIND_LE        = "<="
KIND_LT        = "<"
KIND_GE        = ">="
KIND_GT        = ">"

KIND_ABS       = "abs"
KIND_ADD       = "+"
KIND_DIV       = "div"
KIND_MOD       = "mod"
KIND_MUL       = "*"
KIND_NEG       = "neg"
KIND_SUB       = "-"
KIND_RDIV      = "/"

KIND_ISI       = "is_int"
KIND_TOI       = "to_int"
KIND_TOR       = "to_real"

KIND_CONC      = "concat"
KIND_EXTR      = "extract"
KIND_REP       = "repeat"
KIND_ROL       = "rotate_left"
KIND_ROR       = "rotate_right"
KIND_SEXT      = "sign_extend"
KIND_ZEXT      = "zero_extend"

KIND_BVADD     = "bvadd"
KIND_BVAND     = "bvand"
KIND_BVASHR    = "bvashr"
KIND_BVCOMP    = "bvcomp"
KIND_BVLSHR    = "bvlshr"
KIND_BVMUL     = "bvmul"
KIND_BVNAND    = "bvnand"
KIND_BVNEG     = "bvneg"
KIND_BVNOR     = "bvnor"
KIND_BVNOT     = "bvnot"
KIND_BVOR      = "bvor"
KIND_BVSDIV    = "bvsdiv"
KIND_BVSGE     = "bvsge"
KIND_BVSGT     = "bvsgt"
KIND_BVSHL     = "bvshl"
KIND_BVSLE     = "bvsle"
KIND_BVSLT     = "bvslt"
KIND_BVSMOD    = "bvsmod"
KIND_BVSREM    = "bvsrem"
KIND_BVSUB     = "bvsub"
KIND_BVUGE     = "bvuge"
KIND_BVUGT     = "bvugt"
KIND_BVUDIV    = "bvudiv"
KIND_BVULE     = "bvule"
KIND_BVULT     = "bvult"
KIND_BVUREM    = "bvurem"
KIND_BVXNOR    = "bvxnor"
KIND_BVXOR     = "bvxor"

KIND_SELECT    = "select"
KIND_STORE     = "store"

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
    [ KIND_CONST, KIND_CONSTB, KIND_CONSTD, KIND_CONSTN, KIND_CONSTH, 
      KIND_CONSTS ]

g_fun_kinds   = \
    [ KIND_ABS,    KIND_ADD,    KIND_AND,    KIND_BVADD,  KIND_BVAND,
      KIND_BVASHR, KIND_BVCOMP, KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, 
      KIND_BVNEG,  KIND_BVNOR,  KIND_BVNOT,  KIND_BVOR,   KIND_BVSDIV,
      KIND_BVSGE,  KIND_BVSGT,  KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT, 
      KIND_BVSMOD, KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,
      KIND_BVUDIV, KIND_BVULE,  KIND_BVULT,  KIND_BVUREM, KIND_BVXNOR, 
      KIND_BVXOR,  KIND_CONC,   KIND_DIST,   KIND_DIV,    KIND_EQ,
      KIND_EXTR,   KIND_GE,     KIND_GT,     KIND_IMPL,   KIND_ISI,
      KIND_ITE,    KIND_LE,     KIND_LT,     KIND_MOD,    KIND_MUL,
      KIND_NEG,    KIND_NOT,    KIND_OR,     KIND_RDIV,   KIND_REP,
      KIND_ROL,    KIND_ROR,    KIND_SELECT, KIND_SEXT,   KIND_STORE,
      KIND_SUB,    KIND_TOI,    KIND_TOR,    KIND_XOR,    KIND_ZEXT]

g_bv_fun_kinds = \
    [ 
      KIND_CONC,   KIND_EXTR,   KIND_REP,    KIND_ROL,    KIND_ROR,
      KIND_SEXT,   KIND_ZEXT,   KIND_BVADD,  KIND_BVAND,  KIND_BVASHR, 
      KIND_BVCOMP, KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, KIND_BVNEG,  
      KIND_BVNOR,  KIND_BVNOT,  KIND_BVOR,   KIND_BVSDIV, KIND_BVSGE,
      KIND_BVSGT,  KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT,  KIND_BVSMOD, 
      KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,  KIND_BVUDIV,
      KIND_BVULE,  KIND_BVULT,  KIND_BVUREM, KIND_BVXNOR, KIND_BVXOR ]

g_arr_fun_kinds = \
    [ KIND_SELECT, KIND_STORE ]

g_cmd_kinds   = \
    [ KIND_ASSERT,   KIND_CHECKSAT, KIND_DECLFUN,   KIND_DEFFUN, 
      KIND_DECLSORT, KIND_DEFSORT,  KIND_GETASSERT, KIND_GETASSIGN, 
      KIND_GETPROOF, KIND_GETUCORE, KIND_GETVALUE,  KIND_GETOPT,
      KIND_GETINFO,  KIND_EXIT,     KIND_PUSH,      KIND_POP,
      KIND_SETLOGIC, KIND_SETINFO,  KIND_SETOPT ]



class DDSMTParseCheckException (Exception):

    def __init__ (self, msg):
        self.msg = msg
    
    def __str__ (self):
        return "[ddsmt] Error: {}".format(self.msg)



class DDSMTParseException (Exception):

    def __init__ (self, infile, line, col, msg):
        self.infile = infile.strip().split("/")[-1]
        self.line = line
        self.col = col
        self.msg = msg
    
    def __str__ (self):
        return "[ddsmt] {}:{}:{}: {}".format(
                self.infile, self.line, self.col, self.msg)



class SMTNode:

    g_id = 0
    g_smtformula = None

    def __init__ (self, kind = "none", sort = None, children = []):
        assert (isinstance (children, list))
        SMTNode.g_id += 1
        self.id = SMTNode.g_id
        self.kind = kind
        self.sort = sort
        self.children = children

    def __str__ (self):
        if self.is_subst():
            return str(self.get_subst())
        return "({}{})".format(self.kind, self.children2str())

    def children2str(self):
        for c in self.children: assert (not isinstance(c, list)) # TODO DEBUG
        return " " + " ".join([str(c) for c in self.children]) \
                            if self.children else ""

    def is_bv_const (self):
        return True if type(self) == SMTBVConstNode else False

    def subst (self, substitution):
        SMTNode.g_smtformula.subst(self, substitution)

    def get_subst (self):
        return self if not self.is_subst() else \
                SMTNode.g_smtformula.get_subst(self)

    def is_subst (self):
        return SMTNode.g_smtformula and SMTNode.g_smtformula.is_subst(self)
                            


class SMTSortNode (SMTNode):

    def __init__ (self, name, nparams = 0, kind = KIND_SORT):
        super().__init__(kind)
        self.name = name
        self.nparams = nparams
    
    def __str__ (self):
        return self.name

    def is_bv_sort (self):
        return self.kind == KIND_BVSORT

    def is_arr_sort (self):
        return self.kind == KIND_ARRSORT



class SMTArraySortNode (SMTSortNode):

    def __init__ (self, index_sort = None, elem_sort = None):
        super().__init__(
                SMTArraySortNode.name(index_sort, elem_sort), 2, KIND_ARRSORT)
        self.index_sort = index_sort
        self.elem_sort = elem_sort

    @staticmethod
    def name (index_sort, elem_sort):
        assert (index_sort != None or elem_sort == None)
        return "Array" if index_sort == None and elem_sort == None \
                       else "(Array {!s} {!s})".format(index_sort, elem_sort)



class SMTBVSortNode (SMTSortNode):

    def __init__ (self, bw):
        super().__init__(SMTBVSortNode.name(bw), 0, KIND_BVSORT)
        self.bw = bw

    @staticmethod
    def name (bw):
        return "(_ BitVec {})".format(bw)



class SMTSortExprNode (SMTNode):

    def __init__ (self, sort, symbols = []):
        super().__init__(KIND_SORTEXPR, sort)
        self.symbols = symbols  # arg symbols
        
    def __str__ (self):
        if self.is_subst():
            return str(self.get_subst())
        return str(self.sort) \
                if self.sort.nparams == 0 else "({!s} {})".format(
                        self.sort, " ".join([str(s) for s in self.symbols]))


class SMTConstNode (SMTNode):

    def __init__ (self, kind, sort, value = 0, original_str = "none"):
        assert (kind in g_const_kinds)                    # ^^^^ TODO debug
        super().__init__(kind, sort)
        self.value = value
        self.original_str = original_str # TODO debug

    def __str__ (self):
        if self.is_subst():
            return str(self.get_subst())
        #return str(self.value)
        return "{}".format(self.original_str \
                if self.original_str != "none" else str(self.value))



class SMTBVConstNode (SMTConstNode):

#    def __init__ (self, kind, sort, value = 0, bw = 1, original_str = "none"):                                                         #^^^^ TODO debug
#        assert (kind in g_const_kinds)
#        super().__init__(kind, sort, value)
#        self.bw = bw
#        self.original_str = original_str  # TODO debug

    def __str__ (self):
        assert (self.kind != KIND_CONST)
        if self.is_subst():
            return str(self.get_subst())
        if self.kind == KIND_CONSTH:
            if self.original_str != "none":
                return self.original_str
            else:
                return "#x{}".format(hex(self.value)[2:]) 
        elif self.kind == KIND_CONSTB:
            return "#b{}".format(bin(self.value)[2:])
        assert (self.kind == KIND_CONSTN)
        return "(_ bv{} {})".format(self.value, self.sort.bw)



class SMTFunNode (SMTNode):

    def __init__ (self, name, sort, sorts = [], indices = []):
        assert (isinstance (sorts, list))
        assert (isinstance (indices, list))
        super().__init__(KIND_FUN, sort)
        self.name = name
        self.sorts = sorts      # signature sorts
        self.indices = [int(s.value) for s in indices]

    def __str__ (self):
        if self.is_subst():
            return str(self.get_subst())
        if self.indices == []:
            return self.name
        return "(_ {} {})".format(
                self.name, " ".join([str(s) for s in self.indices]))


class SMTAnFunNode (SMTNode):

    def __init__ (self, fun, sort):
        super().__init__(KIND_ANNFUN, sort)
        self.fun = fun

    def __str__ (self):
        return str(self.get_subst()) if self.is_subst() else \
                "(as {!s} {!s})".format(self.fun, self.sort)



class SMTFunAppNode (SMTNode):        
         
    def __init__ (self, fun, kind, sort, children):
        assert (isinstance(fun, SMTFunNode))
        assert (len(children) >= 1)
        super().__init__(kind, sort, children)
        self.fun = fun

    def __str__ (self):
        return str(self.get_subst()) if self.is_subst() else \
                "({!s}{})".format(self.fun, self.children2str())



class SMTVarBindNode (SMTNode):

    def __init__ (self, var, children):
        assert (isinstance (var, SMTFunNode))
        assert (isinstance (children, list))
        assert (len(children) == 1)
        #super().__init__(KIND_VARB, children[0].sort, children)
        super().__init__(KIND_VARB, None, children)
        self.var = var

    def __str__ (self):
        assert (len(self.children) == 1)
        return str(self.get_subst()) if self.is_subst() else \
                "({} {!s})".format(self.var.name, self.children[0])



class SMTForallExistsNode (SMTNode):

    def __init__ (self, svars, scope, kind, children):
        assert (kind in (KIND_FORALL, KIND_EXISTS))
        assert (len(children) == 1)
        super().__init__(kind, children[0].sort, children)
        self.svars = svars
        self.scope = scope

    def __str__ (self):
        return str(self.get_subst()) if self.is_subst() else \
                "({} ({}) {!s})".format(
                        self.kind, 
                        " ".join(["({} {!s})".format(s.name, s.sort)
                            for s in self.svars]) \
                                    if len(self.svars) > 0 else "",
                        self.children[0])



class SMTLetNode (SMTNode):

    def __init__ (self, scope, children):
        assert (len(children) == 2)
        assert (isinstance (children[0], list))
        # flatten children
        ch = children[0]
        ch.extend([children[1]])
        super().__init__(KIND_LET, children[1].sort, ch) 
        self.scope = scope

    def __str__ (self):
        if self.is_subst():
            return str(self.get_subst())
        assert (self.children)
        return "({} ({}) {!s})".format(
                self.kind,
                " ".join([str(c) for c in self.children[0:-1]]),
                self.children[-1])


class SMTAnnNode (SMTNode):

    def __init__ (self, attribs, sort, children):
        assert (len(children) == 1)
        super().__init__(KIND_ANNOTN, sort, children)
        self.attribs = attribs

    def __str__ (self):
        return str(self.get_subst()) if self.is_subst() else \
                "(! {!s} {})".format(
                        self.children[0], 
                        " ".join([str(a) for a in self.attribs]))



class SMTCmdNode:         

    g_id = 0
    g_smtformula = None

    def __init__ (self, kind, children = []):
        global g_cmd_kinds
        assert (isinstance (children, list))
        assert (kind in g_cmd_kinds)
        SMTCmdNode.g_id += 1
        self.id = SMTCmdNode.g_id
        self.kind = kind
        self.children = children

    def __str__ (self):
        if self.is_subst():
            return ""
        if self.kind == KIND_DECLFUN:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            return "({} {} ({}) {})".format(
                    self.kind, 
                    fun.name,
                    " ".join([str(s) for s in fun.sorts]) \
                            if len(fun.sorts) > 0 else "",
                    str(fun.sort))
        elif self.kind == KIND_DEFFUN:
            assert (len(self.children) == 3)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            svars = self.children[1]
            fterm = self.children[2]
            return "({} {} ({}) {!s} {!s})".format(
                    self.kind,
                    fun.name,
                    " ".join(["({} {!s})".format(s.name, s.sort) 
                              for s in svars]) if len(svars) > 0 else "",
                    fun.sort,
                    fterm)
        elif self.kind == KIND_DECLSORT:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTSortNode))
            sort = self.children[0]
            return "({} {} {})".format(
                    self.kind, sort.name, sort.nparams)
        elif self.kind == KIND_DEFSORT:
            assert (len(self.children) == 3)
            assert (isinstance(self.children[0], SMTSortNode))
        return "({}{})".format(self.kind, self.children2str())

    def children2str (self):
        res = [""]
        for c in self.children:
            if isinstance (c, list):
                res.append("({})".format(
                    " ".join([str(cc) for cc in c])))
            else:
                res.append(str(c))
        return " ".join([s for s in res]) if self.children else ""

    def subst (self, substitution):
        SMTCmdNode.g_smtformula.subst(self, substitution)

    def get_subst (self):
        return self if not self.is_subst() else \
                SMTCmdNode.g_smtformula.get_subst(self)

    def is_subst (self):
        return SMTCmdNode.g_smtformula and \
                SMTCmdNode.g_smtformula.is_subst(self)



class SMTPushCmdNode (SMTCmdNode):

    def __init__ (self, nscopes, scope = None):
        assert (nscopes > 0)
        super().__init__(KIND_PUSH)
        self.nscopes = nscopes
        self.scope = scope
        # Note: self.scope is the scope directly associated with this push
        #       i.e. for e.g. push 2, 2 scopes are opened and the first one
        #       is the  one associated with the resp. push command
        
    def __str__ (self):
        return "" if self.is_subst() else \
                "({} {})".format(self.kind, self.nscopes)



class SMTPopCmdNode (SMTCmdNode):

    def __init__ (self, nscopes):
        assert (nscopes > 0)
        super().__init__(KIND_POP)
        self.nscopes = nscopes

    def __str__ (self):
        return "" if self.is_subst() else \
                "({} {})".format(self.kind, self.nscopes)



class SMTScopeNode:

    g_id = 0
    g_smtformula = None

    def __init__ (self, level = 0, prev = None, kind = KIND_SCOPE):
        assert (kind in (KIND_SCOPE, KIND_FSCOPE, KIND_ESCOPE, KIND_LSCOPE))
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
        if self.is_subst():
            return ""
        res = []
        for cmd in self.cmds:
            if cmd.kind == KIND_PUSH:
                assert (len(self.scopes) > 0)
                assert (cmd.scope in self.scopes)
                assert (cmd.scope.kind not in (KIND_ESCOPE, KIND_FSCOPE))
                if cmd.scope.is_subst():
                    continue
                res.append(str(cmd))
                res.append(str(cmd.scope))
            else:
                res.append(str(cmd))
        return " ".join([s for s in res if s != ""])

    def subst (self, substitution):
        SMTScopeNode.g_smtformula.subst(self, substitution)

    def get_subst (self):
        return self if not self.is_subst() else \
                SMTScopeNode.g_smtformula.get_subst(self)

    def is_subst (self):
        return SMTScopeNode.g_smtformula and \
                SMTScopeNode.g_smtformula.is_subst(self)



class SMTSubstList:

    def __init__ (self):
        self.substs = {}

    def subst (self, node, substitution):
        self.substs[node.id] = substitution

    def is_subst (self, node):
        return node.id in self.substs

    def get_subst (self, node):
        return self.substs[node.id] if self.is_subst(node) else node



class SMTNodeSubstList (SMTSubstList):

    def subst (self, node, substitution):
        assert (isinstance (node, SMTNode))
        super().subst(node, substitution)



class SMTScopeSubstList (SMTSubstList):

    def subst (self, node, substitution):
        assert (isinstance (node, SMTScopeNode))
        assert (not self.is_subst(node))
        super().subst(node, substitution)



class SMTCmdSubstList (SMTSubstList):

    def subst (self, node, substitution):
        assert (isinstance (node, SMTCmdNode))
        assert (not self.is_subst(node))
        super().subst(node, substitution)



class SMTFormula:

    def __init__ (self):
        self.logic = "none"
        self.scopes = SMTScopeNode ()
        self.cur_scope = self.scopes
        #self.subst_scopes = {}
        #self.subst_cmds = {}
        #self.subst_nodes = {}
        self.subst_scopes = SMTScopeSubstList ()
        self.subst_cmds = SMTCmdSubstList ()
        self.subst_nodes = SMTNodeSubstList ()
        self.__add_predefined_sorts ()

    def __add_predefined_sorts (self):
        self.add_sort ("Bool")
        self.add_sort ("Int")
        self.add_sort ("Real")
        self.add_sort ("String")
        self.add_arrSort ()  # abstract array base sort
        #print ("----")
        #scopes = [self.scopes]
        #while scopes:
        #    scope = scopes.pop()
        #    for sort in scope.sorts:
        #        print ("level " + str(scope.level) + ": " + str(sort))
        #    scopes.extend(scope.scopes)
        #print ("----")

    def is_bv_logic (self):
        return self.logic.find("BV") >= 0

    def subst (self, node, substitution):
        if isinstance (node, SMTScopeNode):
            self.subst_scopes.subst(node, substitution)
        elif isinstance (node, SMTCmdNode):
            self.subst_cmds.subst(node, substitution)
        else:
            assert (isinstance (node, SMTNode))
            self.subst_nodes.subst(node, substitution)

    def is_subst (self, node):
        if isinstance (node, SMTScopeNode):
            return self.subst_scopes.is_subst(node)
        elif isinstance (node, SMTCmdNode):
            return self.subst_cmds.is_subst(node)
        assert (isinstance (node, SMTNode))
        return self.subst_nodes.is_subst(node)

    def get_subst (self, node):
        if isinstance (node, SMTScopeNode):
            assert (not self.subst_scopes.is_subst(node) or 
                        self.subst_scopes.get_subst(node) == None)
            return self.subst_scopes.get_subst(node)
        elif isinstance (node, SMTCmdNode):
            assert (not self.subst_cmds.is_subst(node) or 
                    self.subst_cmds.get_subst(node) == None)
            return self.subst_cmds.get_subst(node)
        assert (isinstance (node, SMTNode))
        assert (self.subst_nodes.get_subst(node))
        return self.subst_nodes.get_subst(node)

    def open_scope (self, nscopes = 1, kind = KIND_SCOPE):
        assert (kind == KIND_SCOPE or nscopes == 1) 
        # Note: forall, exists open exactly one scope
        first_scope = None
        for i in range (nscopes):
            new_scope = SMTScopeNode (
                    self.cur_scope.level + 1, self.cur_scope, kind)
            if not first_scope:
                first_scope = new_scope
            self.cur_scope.scopes.append(new_scope)
            self.cur_scope = new_scope
        return first_scope  # scope associated with parent push cmd

    def close_scope (self, nscopes = 1):
        for i in range (nscopes):
            assert (self.cur_scope.prev != None)
            self.cur_scope = self.cur_scope.prev

   # def smtNode (self, kind, sort, children):
   #     ch = children
   #     if (kind == KIND_LET):
   #         assert (len(children) == 2)
   #         # flatten children
   #         ch = children[0]
   #         ch.extend([children[1]])
   #     return SMTNode (kind, sort, ch)

    def constNode (self, kind, sort, value):
        assert (kind in (KIND_CONST, KIND_CONSTN, KIND_CONSTS))
        return SMTConstNode (kind, sort, value)

    def boolConstNode (self, value):
        assert (value in ("true", "false"))
        return SMTConstNode (KIND_CONST, self.sortNode ("Bool"), value)

                                          #vvvv TODO debug
    def bvConstNode (self, kind, bw, value, original_str = None):
        assert (isinstance (bw, int))
        return SMTBVConstNode (kind, self.bvSortNode(bw), value, original_str)

    def bvZeroConstNode (self, sort):
        assert (sort.is_bv_sort())
        return self.bvConstNode (KIND_CONSTN, sort.bw, 0)

    def find_sort_and_scope (self, name, scope = None):
        scope = scope if scope else self.cur_scope
        while scope:
            if name in scope.sorts:
                assert (isinstance (scope.sorts[name], SMTSortNode))
                return (scope.sorts[name], scope)
            scope = scope.prev
        return None
        
    def find_sort (self, name, scope = None):
        scope = scope if scope else self.cur_scope
        res = self.find_sort_and_scope (name, scope)
        return res[0] if res else None
    
    def delete_sort (self, name, scope = None):
        scope = scope if scope else self.cur_scope
        assert (self.find_sort (name, scope))
        while scope:
            if name in scope.sorts:
                assert (isinstance (scope.sorts[name], SMTSortNode))
                del scope.sorts[name]
                assert (not self.find_sort (name, scope))
                return
            scope = scope.prev

    def add_sort (self, name, nparams = 0, scope = None):
        scope = scope if scope else self.scopes  # default: level 0
        assert (not self.find_sort (name, self.cur_scope))
        scope.sorts[name] = SMTSortNode (name, nparams)
        return scope.sorts[name]

    def add_bvSort (self, bw):
        name = SMTBVSortNode.name(bw)
        assert (not self.find_sort(name, self.scopes))
        self.scopes.sorts[name] = SMTBVSortNode (bw)  # level 0
        return self.scopes.sorts[name]

    def add_arrSort (self, index_sort = None, elem_sort = None, scope = None):
        scope = scope if scope else self.scopes  # default: level 0
        name = SMTArraySortNode.name(index_sort, elem_sort)
        assert (not self.find_sort(name, scope))
        scope.sorts[name] = SMTArraySortNode (index_sort, elem_sort)
        return scope.sorts[name]

    def sortNode (self, name, nparams = 0, scope = None, new = False):
        scope = scope if scope else self.scopes  # default: level 0
        sort = self.find_sort (name, scope)      # concrete sort already added?
        if not sort:
            if nparams > 0:
                # abstract sort already declared?
                res = self.find_sort_and_scope (name[1:-1].split()[0], scope)
                
                if res:
                    if res[0].nparams != nparams:
                        if not new:
                            raise DDSMTParseCheckException (
                                    "'{} expects {} parameters".format(
                                        name, nparams))
                        else:
                            raise DDSMTParseCheckException (
                                    "previous declaration of '{}' with " \
                                    "{} was here".format(name, res[0].nparams))
                        sort = res[0]
                        scope = res[1]
                        if sort.is_arr_sort():
                            assert (sort.nparams == nparams)
                            name = name[1:-1].split()
                            assert (name[0] == "Array")
                            assert (len(name) == 3)
                            return self.add_arrSort (name[1], name[2], scope)
            elif not new:
                raise DDSMTParseCheckException (
                        "sort '{}' undeclared".format(name))
            return self.add_sort (name, nparams, scope)
        return sort

    def bvSortNode (self, bw):
        name = SMTBVSortNode.name(bw)
        sort = self.find_sort(name, self.scopes)  # level 0
        if not sort:
            sort = self.add_bvSort(bw)
        return sort

    def arrSortNode (self, index_sort = None, elem_sort = None, scope = None):
        scope = scope if scope else self.scopes  # default: level 0
        name = SMTArraySortNode.name(index_sort, elem_sort)
        sort = self.find_sort(name, scope)
        if not sort:
            return self.add_arrSort (index_sort, elem_sort, scope)
        return sort

    def find_fun (self, name, indices = [], scope = None):
        scope = scope if scope else self.cur_scope
        while scope:
            if name in scope.funs:
                assert (isinstance (scope.funs[name], SMTFunNode))
                if indices == scope.funs[name].indices:
                    return scope.funs[name]
            scope = scope.prev
        return None

    def add_fun (self, name, sort, sorts, indices, scope = None):
        scope = scope if scope else self.scopes  # default: level 0
        assert (not self.find_fun (name, indices, scope))
        scope.funs[name] = SMTFunNode (name, sort, sorts, indices)
        return scope.funs[name]

    def delete_fun (self, name, indices = [], scope = None):
        scope = scope if scope else self.cur_scope
        while scope:
            if name in scope.funs:
                assert (isinstance (scope.funs[name], SMTFunNode))
                if scope.funs[name].indices != indices:
                    continue
                del scope.funs[name]
                assert (not self.find_fun (name, indices, scope))
                return
            scope = scope.prev

    def funNode (self, name, sort, sorts = [], indices = [], scope = None):
        global g_fun_kinds
        scope = scope if scope and name not in g_fun_kinds \
                      else self.scopes  # default: level 0
        fun = self.find_fun (name, indices, scope)
        if not fun:
            return self.add_fun (name, sort, sorts, indices, scope)
        return fun

    def anFunNode (self, name, sort, indices = []):
        if name in g_fun_kinds:
            fun = self.funNode (name, None, indices = indices)
        else:
            fun = self.find_fun (name, indices)
            if not fun:
                raise DDSMTParseCheckException (
                        "function '{}' undeclared".format(name))
        return SMTAnFunNode (fun, sort)

    def check_funApp (self, fun, kind, children):
        # args declaration check
        for c in children:
            if not c.sort:
                assert (c.kind == KIND_FUN)
                raise DDSMTParseCheckException (
                        "function '{!s}' undeclared".format(c))
        # number of args check
        if ((len(children) != 1 and 
                 kind in (KIND_ABS, KIND_BVNEG, KIND_BVNOT, KIND_EXTR, KIND_ISI,
                          KIND_NOT, KIND_NEG,   KIND_TOI,   KIND_TOR,  KIND_REP,
                          KIND_ROL, KIND_ROR,   KIND_SEXT,  KIND_ZEXT)) or
            (len(children) != 2 and
                 kind in (KIND_ADD,    KIND_AND,    KIND_BVADD,  KIND_BVAND,  
                          KIND_BVASHR, KIND_BVCOMP, KIND_BVLSHR, KIND_BVMUL,
                          KIND_BVNAND, KIND_BVNOR,  KIND_BVOR,   KIND_BVSDIV,
                          KIND_BVSGE,  KIND_BVSGT,  KIND_BVSHL,  KIND_BVSLE,
                          KIND_BVSLT,  KIND_BVSMOD, KIND_BVSREM, KIND_BVSUB,
                          KIND_BVUGE,  KIND_BVUGT,  KIND_BVUDIV, KIND_BVULE,
                          KIND_BVULT,  KIND_BVUREM, KIND_BVXNOR, KIND_BVXOR,
                          KIND_CONC,   KIND_DIV,    KIND_DIST,   KIND_EQ,
                          KIND_IMPL,   KIND_GE,     KIND_GT,     KIND_LE, 
                          KIND_LT,     KIND_MOD,    KIND_MUL,    KIND_OR,
                          KIND_SELECT, KIND_SUB,    KIND_RDIV,   KIND_XOR)) or
            (len(children) != 3 and 
                kind in (KIND_ITE, KIND_STORE))):
            raise DDSMTParseCheckException (
                    "invalid number of arguments to '{!s}': {}" \
                    "".format(fun, len(children)))
        # number of indices check
        if self.is_bv_logic:
            if kind == KIND_EXTR and len(fun.indices) != 2:
                raise DDSMTParseCheckException (
                    "'{!s}' expects exactly two indices, {} given" \
                    "".format(fun.name, len(fun.indices)))
            elif kind in (KIND_REP, KIND_ROL, KIND_ROR, KIND_SEXT, KIND_ZEXT) \
                 and len(fun.indices) != 1:
                raise DDSMTParseCheckException (
                    "'{!s}' expects exactly one index, {} given" \
                    "".format(fun.name, len(fun.indices)))
        # args sort Bool check
        if kind in (KIND_AND, KIND_IMPL, KIND_NOT, KIND_OR, KIND_XOR,
                    KIND_LE,  KIND_LT):
            for c in children:
                if not c.sort == self.sortNode ("Bool"):
                    raise DDSMTParseCheckException (
                        "'{!s}' expects sort 'Bool' as argument(s)".format(fun))
        # args Int check
        elif kind in (KIND_ABS, KIND_DIV, KIND_MOD, KIND_TOR):
            for c in children:
                if not c.sort == self.sortNode("Int"):
                    raise DDSMTParseCheckException (
                        "'{!s}' expects sort 'Int' as argument(s)".format(fun))
        # args Real check
        elif kind in (KIND_RDIV, KIND_ISI, KIND_TOI):
            for c in children:
                if not c.sort == self.sortNode("Real"):
                    raise DDSMTParseCheckException (
                        "'{!s}' expects sort 'Real' as argument(s)".format(fun))
        # args Int or Real check
        elif kind in (KIND_ADD, KIND_GE, KIND_GT, KIND_MUL, KIND_NEG, KIND_SUB):
            csort = children[0].sort
            if csort not in (self.sortNode("Int"), self.sortNode("Real")):
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'Int' or 'Real' as argument(s)" \
                    "".format(fun))
            for c in children[1:]:
                if c.sort != csort:
                    raise DDSMTParseCheckException (
                        "'{!s}' with mismatching sorts: '{!s}' '{!s}'" \
                        "".format(fun, csort, c.sort)) 
        # args BV sort check
        elif kind in (KIND_CONC, KIND_EXTR, KIND_REP,   KIND_ROL,  KIND_ROR, 
                      KIND_SEXT, KIND_ZEXT, KIND_BVNEG, KIND_BVNOT):
            for c in children:
                if not c.sort.is_bv_sort:
                    raise DDSMTParseCheckException (
                        "'{!s}' expects BV sort as argument(s)".format(fun))
        # args equal sort check
        elif kind in (KIND_DIST, KIND_EQ):
            csort = children[0].sort
            for c in children[1:]:
                if c.sort != csort:
                    raise DDSMTParseCheckException (
                        "'{!s}' with mismatching sorts: '{!s}' '{!s}'" \
                        "".format(fun, csort, c.sort)) 
        # args equal bw check
        elif kind in (KIND_BVADD,  KIND_BVAND,  KIND_BVASHR, KIND_BVCOMP, 
                      KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, KIND_BVNOR,
                      KIND_BVOR,   KIND_BVSDIV, KIND_BVSGE,  KIND_BVSGT,  
                      KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT,  KIND_BVSMOD, 
                      KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,  
                      KIND_BVUDIV, KIND_BVULE,  KIND_BVULT,  KIND_BVUREM, 
                      KIND_BVXNOR, KIND_BVXOR):
            csort = children[0].sort
            if not csort.is_bv_sort:
                raise DDSMTParseCheckException (
                    "'{!s}' expects BV sort as argument(s)".format(fun))
            for c in children[1:]:
                if c.sort != csort:
                    raise DDSMTParseCheckException (
                        "'{!s}' with mismatching sorts: '{!s}' '{!s}'" \
                        "".format(fun, csort, c.sort)) 
        # first arg Array check
        elif kind in (KIND_SELECT, KIND_STORE):
            if not children[0].sort.is_arr_sort:
                raise DDSMTParseCheckException (
                    "'{!s}' expects Array sort as first argument".format(fun))
        # ITE arg check
        elif kind == KIND_ITE:
            if not children[0].sort == self.sortNode("Bool"):
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'Bool' as first argument".format(fun))
            if children[1].sort != children[2].sort:
                    raise DDSMTParseCheckException (
                        "'ite' with mismatching sorts: '{!s}' '{!s}'"\
                        "".format(children[1].sort, children[2].sort)) 
        # not predefined
        else:
            declfun = self.find_fun(fun.name, fun.indices)
            if declfun.sort == None:  # not declared yet
                raise DDSMTParseCheckException (
                        "function '{!s}' undeclared".format(fun))
            else:
                if len(children) != len(declfun.sorts):
                    raise DDSMTParseCheckException (
                            "'{!s}' expects {} argument(s), {} given".format(
                                declfun, len(declfun.sorts), len(children)))
                for i in range(len(children)):
                    if children[i].sort != declfun.sorts[i]:
                        raise DDSMTParseCheckException (
                            "'{!s}' with incompatible sort " \
                            "(expects '{!s}'): '{!s}'".format(
                                declfun, children[i].sort, declfun.sorts[i]))

    def funApp2sort (self, fun, kind, children):
        #self.check_funApp(fun, kind, children)
        # sort Bool
        if kind in (KIND_AND,   KIND_IMPL,  KIND_NOT,   KIND_OR,    KIND_XOR, 
                    KIND_EQ,    KIND_DIST,  KIND_LE,    KIND_LT,    KIND_GE,
                    KIND_GT,    KIND_ISI,   KIND_BVSGE, KIND_BVSGT, KIND_BVSLE,
                    KIND_BVSLT, KIND_BVUGE, KIND_BVUGT, KIND_BVULE, KIND_BVULT):
            return self.sortNode("Bool")
        # sort Int
        elif kind in (KIND_ABS, KIND_DIV, KIND_MOD):
            return self.sortNode("Int")
        # sort Real
        elif kind in (KIND_RDIV, KIND_TOI, KIND_TOR):
            return self.sortNode("Real")
        # sort BV sort != children sort
        elif kind == KIND_CONC:
            return self.bvSortNode(
                       children[0].sort.bw + children[1].sort.bw)
        elif kind == KIND_EXTR:
            return self.bvSortNode(fun.indices[0] - fun.indices[1] + 1)
        elif kind == KIND_REP:
            return self.bvSortNode(fun.indices[0] * children[0].sort.bw)
        elif kind in (KIND_SEXT, KIND_ZEXT):
            return self.bvSortNode(fun.indices[0] + children[0].sort.bw)
        elif kind == KIND_BVCOMP:
            return self.bvSortNode(1)
        # sort defined by children
        elif kind in (KIND_ADD,    KIND_MUL,    KIND_NEG,    KIND_SUB,
                      KIND_ROL,    KIND_ROR,    KIND_BVADD,  KIND_BVAND,
                      KIND_BVASHR, KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND,
                      KIND_BVNEG,  KIND_BVNOR,  KIND_BVNOT,  KIND_BVOR,
                      KIND_BVSDIV, KIND_BVSHL,  KIND_BVSMOD, KIND_BVSREM, 
                      KIND_BVSUB,  KIND_BVUDIV, KIND_BVUREM, KIND_BVXNOR,
                      KIND_BVXOR):
            return children[0].sort
        # special cases
        elif kind == KIND_ITE: 
            return children[1].sort
        elif kind == KIND_SELECT:
            return children[0].sort.elem_sort
        elif kind == KIND_STORE:
            return children[0].sort
        return fun.sort

    def funAppNode (self, fun, children):
        global g_fun_kinds
        kind = fun.kind
        if fun.name in g_fun_kinds:
            if fun.name == '-' and len(children) == 1:
                kind = KIND_NEG
            else:
                kind = fun.name
        sort = self.funApp2sort(fun, kind, children)
        return SMTFunAppNode (fun, kind, sort, children)

    #def varBindNode (self, name, children):
    #    assert (len(children) == 1)
    #    prev_scope = self.cur_scope
    #    self.open_scope (kind = KIND_VBSCOPE)
    #    # TODO blödsinn weil scope muss von let aufgemacht werden

    ## find first bfs level with nested let and forall/exists occurences
    ## and return them
    #def find_nested_letFeNodes (self, root):
    #    children = []
    #    to_visit = [root]
    #    while to_visit:
    #        # check bfs level-wise for nested occurences
    #        for node in to_visit:
    #            if node.kind in (KIND_FORALL, KIND_EXISTS, KIND_LET):
    #                children.append(node)
    #        # all bfs levels below have been handled already
    #        print (">> children: [" + ", ".join([str(c) for c in children]) + "]")
    #        if children:
    #            break
    #        # otherwise, check next bfs level
    #        tmp = []
    #        while to_visit:
    #            cur = to_visit.pop()
    #            tmp.extend(cur.children)
    #        to_visit = tmp
    #    return children

    # update levels of all scopes below root
    def update_scope_level (self, new_level, root):
        assert (new_level != root.level)
        to_visit = [root]
        delta = new_level - root.level
        while to_visit:
            cur = to_visit.pop()
            cur.level += delta
            to_visit.extend(cur.scopes)

    def letFeNode (self, kind, children, svars = None):
        assert (kind in (KIND_FORALL, KIND_EXISTS, KIND_LET))
        assert (kind != KIND_LET or svars == None)
        assert ((kind == KIND_LET and len(children) == 2) or
                (kind in (KIND_FORALL, KIND_EXISTS) and len(children) == 1))
        # find let and forall/exists node of first bfs level with such nodes
        nodes = []
        to_visit = [children[0] if kind != KIND_LET else children[1]]
        while to_visit:
            # check bfs-level-wise for nested occurences
            for node in to_visit:
                if node.kind in (KIND_FORALL, KIND_EXISTS, KIND_LET):
                    nodes.append(node)
            # all bfs levels belw have been handled already
            if nodes:
                break
            # else check next bfs level
            tmp = []
            while to_visit:
                cur = to_visit.pop()
                tmp.extend(cur.children)
            to_visit = tmp

        # move
        new_prev_scope = self.cur_scope
        scope_kind = KIND_LSCOPE
        if kind in (KIND_FORALL, KIND_EXISTS):
            scope_kind = KIND_FSCOPE if kind == KIND_FORALL else KIND_ESCOPE
        new_cur_scope = self.open_scope (kind = scope_kind)
        
        for node in nodes:
            scope = node.scope
            # Note: new let resp. forall/exists nodes are added at resp. 
            #       current scope level 1 by construction
            assert (scope.prev)
            del (scope.prev.scopes[scope.prev.scopes.index(scope)])
            self.cur_scope.scopes.append(scope)
            scope.prev = new_cur_scope
            self.update_scope_level (self.cur_scope.level + 1, scope)

        # reattach (sorted variables are added to previous to current scope 
        # level and variable bindings to scope level 0 by construction)
        if kind == KIND_LET:
            var_bindings = children[0]
            for b in var_bindings:
                assert (self.find_fun (b.var.name, b.var.indices, self.scopes))
                self.delete_fun (b.var.name, b.var.indices, self.scopes)
                self.cur_scope.funs[b.var.name] = b.var
        else:
            for s in svars:
                assert (self.find_fun (s.name, s.indices, new_prev_scope))
                self.delete_fun (s.name, s.indices, new_prev_scope)
                self.cur_scope.funs[s.name] = s

        self.close_scope()

        return SMTLetNode (new_cur_scope, children) if kind == KIND_LET \
                else SMTForallExistsNode (svars, new_cur_scope, kind, children)



#    def feNode (self, svars, kind, children):
#        assert (len(children) == 1)
#        # check for nested let, forall/exists 
#
#        nested = self.find_nested_letFeNodes (children[0])
#        new_prev_scope = self.cur_scope
#        new_cur_scope = self.open_scope (
#                kind = KIND_FSCOPE if kind == KIND_FORALL else KIND_ESCOPE)
#        for node in nested:
#            print (">>> node in nested: " + str(node))
#            scope = node.scope
#            print (">>> scope of node in nested: " + str(node.scope))
#            # Note: new let resp. forall/exists nodes are added at scope
#            # level 1 by construction.
#            assert (scope.level == 1)
#            prev_scope = scope.prev
#            assert (prev_scope)
#            # move
#            del(prev_scope.scopes[prev_scope.scopes.index(scope)])
#            self.cur_scope.scopes.append(scope)
#            scope.prev = new_cur_scope
#            self.update_scope_level(self.cur_scope.level + 1, scope)
#            print ("--- index: " + str(self.cur_scope.scopes.index(scope)))
#            print ("--- update: " + str(scope.level))
#            node.scope = self.cur_scope
#            self.close_scope ()
#
#        #for node in nested:
#        #    assert (node.kind in (KIND_FORALL, KIND_EXISTS, KIND_LET))
#        #    assert (node.scope == new_cur_scope)
#        #    scope_kind = KIND_LSCOPE
#        #    if node.kind in (KIND_FORALL, KIND_EXISTS):
#        #        scope_kind = KIND_FSCOPE \
#        #                if node.kind == KIND_FORALL else KIND_ESCOPE
#        #    # move
#        #    self.open_scope (kind = scope_kind)
#        #    assert (not node.scope.sorts)
#        #    self.cur_scope.funs = node.scope.funs
#        #    self.cur_scope.scopes = node.scope.scopes
#        #    node.scope = self.cur_scope
#        #    self.close_scope ()
#        
#        #self.open_scope (
#        #        kind = KIND_FSCOPE if kind == KIND_FORALL else KIND_ESCOPE)
#        for s in svars:  # reattach
#            self.delete_fun(s.name, new_prev_scope)
#            self.cur_scope.funs[s.name] = s
#        print ("## new_cur_scope " + str(new_cur_scope.level))
#        print ("## new_cur_scope scopes: [" + " ".join([str(s.level) for s in new_cur_scope.scopes]) + "] " + str(new_cur_scope.scopes))
#        self.close_scope ()
#        print ("## vars " + " ".join([str(f) for f in new_cur_scope.funs]))
#        return SMTForallExistsNode (svars, new_cur_scope, kind, children)

    def cmdNode (self, kind, children = []):
        assert (self.cur_scope != None)
        cmd = None
        if kind == KIND_PUSH:
            assert (len(children) == 1)
            assert (isinstance (children[0], SMTConstNode))
            cmd = SMTPushCmdNode (children[0].value)
            self.cur_scope.cmds.append(cmd)
            cmd.scope = self.open_scope(cmd.nscopes)
        elif kind == KIND_POP:
            assert (len(children) == 1)
            assert (isinstance (children[0], SMTConstNode))
            cmd = SMTPopCmdNode (children[0].value)
            self.cur_scope.cmds.append(cmd)
            self.close_scope (cmd.nscopes)
        else:
            cmd = SMTCmdNode (kind, children)
            self.cur_scope.cmds.append(cmd)
        return cmd



class DDSMTParser (SMTParser):

    def __init__ (self):
        super().__init__()
        self.__set_parse_actions()
        self.smtformula = SMTFormula ()
        self.infile = None

    def parse (self, infile):
        self.infile = infile
        try:
            super().parse(infile)
        except ParseSyntaxException as e:
            raise DDSMTParseException (self.infile, e.lineno, e.col, e.msg)
        SMTNode.g_smtformula = self.smtformula
        SMTCmdNode.g_smtformula = self.smtformula
        SMTScopeNode.g_smtformula = self.smtformula
        return self.smtformula

    def __set_parse_actions (self):
        try:
            self.numeral.setParseAction(lambda s,l,t: 
                    self.smtformula.constNode (
                        KIND_CONSTN, self.smtformula.sortNode ("Int"),
                        value = int(t[0])))
                #SMTConstNode (
                #    KIND_CONSTN, self.smtformula.sortNode ("Int"), 
                #    value=int(t[0])))

            self.decimal.setParseAction(lambda s,l,t:
                    self.smtformula.constNode (
                        KIND_CONSTD, self.smtformula.sortNode ("Real"),
                        value = float(t[0])))
                #SMTConstNode (
                #    KIND_CONSTD, self.smtformula.sortNode ("Real"), 
                #    value=float(t[0])))

            self.hexadecimal.setParseAction(self.__hex2SMTNode)
            self.binary.setParseAction(self.__bin2SMTNode)

            self.string.setParseAction(lambda s,l,t:
                    self.smtformula.constNode (
                        KIND_CONSTS, self.smtformula.sortNode ("String"),
                        value = str(t[0])))
                #SMTConstNode (
                #    KIND_CONSTS, self.smtformula.sortNode ("String"), 
                #    value=t[0]))

            self.b_value.setParseAction(lambda s, l, t:
                self.smtformula.boolConstNode (str(t[0])))

            self.symb_str.setParseAction(lambda s,l,t: 
                    " ".join([str(to) for to in t]))
            self.spec_symb_str.setParseAction(lambda s,l,t: 
                    " ".join([str(to) for to in t]))

            self.s_expr.setParseAction(self.__sexprAttrv2token)

            self.sort.setParseAction(self.__sort2SMTNode)
            self.sort_expr.setParseAction(self.__sortExpr2SMTNode)

            self.attr_value.setParseAction(self.__sexprAttrv2token)
            self.attribute.setParseAction(lambda s,l,t: 
                    " ".join([str(to) for to in t]))

            self.option.setParseAction(lambda s,l,t: 
                    " ".join([str(to) for to in t]))

            self.qual_ident.setParseAction(self.__qualIdent2SMTNode)
            self.sorted_var.setParseAction(lambda s,l,t: 
                    self.smtformula.funNode (
                        str(t[0]), t[1], scope = self.smtformula.cur_scope))
            self.var_binding.setParseAction(self.__varBind2SMTNode)
            self.term.setParseAction(self.__term2SMTNode)

            self.command.setParseAction(self.__cmd2SMTCmdNode)

            self.script.ignore(self.comment)
        except DDSMTParseCheckException as e:
            raise DDSMTParseException (
                    self.infile, lineno(l, s), col(l, s), e.msg) 

    def __hex2SMTNode (self, s, l, t):
        assert (len(t) == 1)
        value = int(t[0][2:], 16)
        bw = len(t[0][2:]) * 4
        return self.smtformula.bvConstNode (KIND_CONSTH, bw, value, str(t[0]))
        #return SMTBVConstNode (
        #        KIND_CONSTH, self.smtformula.bvSortNode(bw), value, original_str = t[0]) # TODO debug

    def __bin2SMTNode (self, s, l, t):
        assert (len(t) == 1)
        value = int(t[0][2:], 2)
        bw = len(t[0][2:])
        return self.smtformula.bvConstNode (KIND_CONSTB, bw, value)
        #return SMTBVConstNode (
        #        KIND_CONSTB, self.smtformula.bvSortNode(bw), value)

    def __sexprAttrv2token (self, s, l, t):
        if not t[0] == '(':
            return t
        return "({})".format(" ".join([str(to) for to in t[1:]]))
        
    def __sort2SMTNode (self, s, l, t):
        if t[0] == '_':
            assert (len(t) == 3)
            assert (isinstance (t[2], SMTConstNode))
            return self.smtformula.bvSortNode (t[2].value)
        elif t[0] == '(' and t[1] == "Array":
            assert (len(t) == 4)
            return self.smtformula.arrSortNode (t[2], t[3])
        else:
            try:
                return self.smtformula.sortNode (
                        "({})".format(" ".join([str(to) for to in t[1:]])) \
                                if t[0] == '(' else t[0], 
                        len(t[2:]))
            except DDSMTParseCheckException as e:
                raise DDSMTParseException (
                        self.infile, lineno(l, s), col(l, s), e.msg) 

    def __sortExpr2SMTNode (self, s, l, t):
        try:
            if t[0] == '_':
                assert (len(t) == 3)
                assert (isinstance (t[2], SMTConstNode))
                return SMTSortExprNode (self.smtformula.bvSortNode (t[2].value))
            elif t[0] == '(' and t[1] == "Array":
                assert (lent(t) == 4)
                return SMTSortExprNode (
                        self.smtformula.arrSortNode ("Array"), 
                        [str(t[2]), str(t[3])]) 
            sort = self.smtformula.sortNode(
                        str(t[1]) if t[0] == '(' else str(t[0]))
            nparams = len(t[2:]) if t[0] == '(' else len(t[1:])
            if nparams != sort.nparams:
                raise DDSMTParseException (
                        self.infile,
                        lineno (l, s),
                        col (l, s),
                        "sort '{!s}' expects {} argument(s), {} given".format(
                            sort, sort.nparams, len(t[2:])))
            return SMTSortExprNode (sort, t[2:]) \
                    if t[0] == '(' else SMTSortExprNode (sort, t[1:])
        except DDSMTParseCheckException as e:
            raise DDSMTParseException (
                    self.infile, lineno(l, s), col(l, s), e.msg) 

    def __qualIdent2SMTNode (self, s, l, t):
        if t[0] == SMTParser.AS:
            try:
                if t[1] == '_':
                    return self.smtformula.anFunNode (str(t[2]), t[-1], t[3:-1])
                return self.smtformula.anFunNode (str(t[1]), t[2])
            except DDSMTParseCheckException as e:
                raise DDSMTParseException (
                        self.infile, lineno(l, s), col(l, s), e.msg) 
        elif t[0] == '_':
            if t[1].find("bv") == 0 and self.smtformula.is_bv_logic:
                assert (len(t) == 3)
                value = int(t[1][2:])
                bw = t[2].value
                return self.smtformula.bvConstNode (KIND_CONSTN, bw, value)
                #return SMTBVConstNode (
                #        KIND_CONSTN, self.smtformula.bvSortNode(bw), value)
            else:
                assert (len(t) > 1)
                return self.smtformula.funNode (
                        str(t[1]), None, [], t[2:], self.smtformula.cur_scope)
        else:
            return self.smtformula.funNode (
                    str(t[0]), None, scope = self.smtformula.cur_scope)

    def __varBind2SMTNode (self, s, l, t):
        return SMTVarBindNode (
                self.smtformula.funNode (str(t[0]), t[1].sort), [t[1]])

    def __term2SMTNode (self, s, l, t):
        if len(t) == 1:
            return t
        if str(t[0]) == SMTParser.LET:
            assert (len(t) == 3)
            #return self.smtformula.smtNode (
            #        KIND_LET, t[2].sort, [t[1][0:], t[2]])
            return self.smtformula.letFeNode (KIND_LET, [t[1][0:], t[2]])
        elif str(t[0]) == SMTParser.FORALL:
            assert (len(t) == 3)
            return self.smtformula.letFeNode (
                            KIND_FORALL, [t[2]], t[1][0:])
        elif str(t[0]) == SMTParser.EXISTS:
            assert (len(t) == 3)
            return self.smtformula.letFeNode (
                            KIND_EXISTS, [t[2]], t[1][0:])
        elif str(t[0]) == '!':
            assert (len(t) == 3)
            return SMTAnnNode (t[2][0:], t[1].sort, [t[1]])
        else:
            assert (isinstance(t[0], SMTFunNode))
            try:
                return self.smtformula.funAppNode (t[0], t[1][0:])
            except DDSMTParseCheckException as e:
                raise DDSMTParseException (
                        self.infile, lineno(l, s), col(l, s), e.msg) 

    def __cmd2SMTCmdNode (self, s, l, t):
        kind = t[0]
        if kind == KIND_DECLSORT:
            assert (len(t) == 3)
            sort = self.smtformula.find_sort (t[1])
            if sort and sort.params != t[2].value:
                raise DDSMTParseException (
                        self.infile, 
                        lineno(l, s),
                        col (l, s),
                        "previous declaration of sort '{}' with '{}' "\
                        "was here".format(t[1], t[2].value))
            if not sort:
                sort = self.smtformula.sortNode (
                        t[1], t[2].value, self.smtformula.cur_scope, True)
            return self.smtformula.cmdNode (KIND_DECLSORT, [sort])
        elif kind == KIND_DEFSORT:
            assert (len(t) == 4)
            assert (isinstance (t[3], SMTSortExprNode))
            sort = self.smtformula.sortNode (
                    t[1], t[3].sort.nparams, self.smtformula.cur_scope, True)
            return self.smtformula.cmdNode (
                    KIND_DEFSORT, [sort, [str(to) for to in t[2]], t[3]])
        elif kind == KIND_DECLFUN:
            assert (len(t) == 4)
            # fun has been added to scope level 0 when recursively stepping
            # through declare-fun -> move to cur_scope
            fun = self.smtformula.find_fun(t[1])
            if fun:
                raise DDSMTParseException (
                        self.infile, 
                        lineno (l, s),
                        col (l, s),
                        "previous declaration of function '{0!s}'"\
                        "was here".format(fun))
            fun = self.smtformula.funNode(
                    str(t[1]), t[3], t[2][0:], [], self.smtformula.cur_scope)
            #if fun not in self.smtformula.cur_scope.funs:
            #    self.smtformula.delete_fun(t[1])
            #    fun = self.smtformula.add_fun(
            #            t[1], KIND_FUN, t[3], t[2][0:], [], 
            #            self.smtformula.cur_scope)
            return self.smtformula.cmdNode (KIND_DECLFUN, [fun])
        elif kind == KIND_DEFFUN:
            assert (len(t) == 5)
            sorts = [to.sort for to in t[2]]
            return self.smtformula.cmdNode (
                    KIND_DEFFUN, 
                    [self.smtformula.funNode (
                        str(t[1]), t[3], sorts, [], self.smtformula.cur_scope),
                     t[2][0:], 
                     t[4]])
        elif kind == KIND_GETVALUE:
            assert (len(t) == 2)
            return self.smtformula.cmdNode (KIND_GETVALUE, [t[1][0:]])
        else:
            return self.smtformula.cmdNode (t[0], children = t[1:])
