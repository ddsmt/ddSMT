# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (C) 2013-2020, Aina Niemetz.
# Copyright (C) 2018, Jane Lange.
# Copyright (C) 2018, Andres Noetzli.
# Copyright (C) 2019, Mathias Preiner.
#
# This file is part of ddSMT.
#
# ddSMT is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ddSMT is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ddSMT.  If not, see <http://www.gnu.org/licenses/>.
#

from parser.smtparser import SMTParser, SMTParseException

KIND_ANNFUN    = "<annotated fun symbol>"
KIND_FUN       = "<var or fun symbol>"
KIND_FUNAPP    = "<fun application>"
KIND_VARB      = "<var binding>"
KIND_SVAR      = "<sorted var>"

KIND_SORT      = "<sort>"
KIND_DSORT     = "<defined sort>"
KIND_ARRSORT   = "<array sort>"
KIND_BVSORT    = "<bv sort>"
KIND_FPSORT    = "<fp sort>"
KIND_SORTEXPR  = "<sort expression>"

KIND_CONST      = "<const bool>"
KIND_CONSTB     = "<const bin>"
KIND_CONSTD     = "<const dec>"
KIND_CONSTN     = "<const num>"
KIND_CONSTH     = "<const hex>"
KIND_CONSTFPN   = "<const fp nan>"
KIND_CONSTFPPI  = "<const fp pos inf>"
KIND_CONSTFPNI  = "<const fp neg inf>"
KIND_CONSTFPPZ  = "<const fp pos zero>"
KIND_CONSTFPNZ  = "<const fp neg zero>"
KIND_CONSTRMRNE = "<const rm rne>"
KIND_CONSTRMRNA = "<const rm rna>"
KIND_CONSTRMRTZ = "<const rm rtz>"
KIND_CONSTRMRTP = "<const rm rtp>"
KIND_CONSTRMRTN = "<const rm rtn>"
KIND_CONSTS     = "<const string>"

KIND_ANNOTN    = "!"
KIND_EXISTS    = "exists"
KIND_FORALL    = "forall"
KIND_LET       = "let"

KIND_AND       = "and"
KIND_IMPL      = "=>"
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

KIND_FPFP      = "fp"
KIND_FPPOSZERO = "+zero"
KIND_FPNEGZERO = "-zero"
KIND_FPPOSINF  = "+oo"
KIND_FPNEGINF  = "-oo"
KIND_FPNAN     = "NaN"
KIND_FPABS     = "fp.abs"
KIND_FPNEG     = "fp.neg"
KIND_FPADD     = "fp.add"
KIND_FPSUB     = "fp.sub"
KIND_FPMUL     = "fp.mul"
KIND_FPDIV     = "fp.div"
KIND_FPFMA     = "fp.fma"
KIND_FPSQRT    = "fp.sqrt"
KIND_FPREM     = "fp.rem"
KIND_FPRTI     = "fp.roundToIntegral"
KIND_FPMIN     = "fp.min"
KIND_FPMAX     = "fp.max"
KIND_FPLEQ     = "fp.leq"
KIND_FPLT      = "fp.lt"
KIND_FPGEQ     = "fp.geq"
KIND_FPGT      = "fp.gt"
KIND_FPEQ      = "fp.eq"
KIND_FPISNORM  = "fp.isNormal"
KIND_FPISSUB   = "fp.isSubnormal"
KIND_FPISZERO  = "fp.isZero"
KIND_FPISINF   = "fp.isInfinite"
KIND_FPISNAN   = "fp.isNaN"
KIND_FPISNEG   = "fp.isNegative"
KIND_FPISPOS   = "fp.isPositive"
KIND_FPTOUBV   = "fp.to_ubv"
KIND_FPTOSBV   = "fp.to_sbv"
KIND_FPTOFP    = "to_fp"
KIND_FPTOFPUNS = "to_fp_unsigned"

KIND_STR_LEN      = "str.len"
KIND_STR_CONCAT   = "str.++"
KIND_STR_CONTAINS = "str.contains"
KIND_STR_SUBSTR   = "str.substr"
KIND_STR_REPLACE  = "str.replace"
KIND_STR_INDEXOF  = "str.indexof"
KIND_STR_PREFIXOF = "str.prefixof"
KIND_STR_SUFFIXOF = "str.suffixof"

KIND_SELECT    = "select"
KIND_STORE     = "store"

KIND_ASSERT    = "assert"
KIND_CHECKSAT  = "check-sat"
KIND_DECLCONST = "declare-const"
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
KIND_GETMODEL  = "get-model"
KIND_EXIT      = "exit"
KIND_PUSH      = "push"
KIND_POP       = "pop"
KIND_SETLOGIC  = "set-logic"
KIND_SETINFO   = "set-info"
KIND_SETOPT    = "set-option"
KIND_ECHO      = "echo"


g_const_kinds = \
    [
        KIND_CONST,
        KIND_CONSTB,
        KIND_CONSTD,
        KIND_CONSTN,
        KIND_CONSTH,
        KIND_CONSTFPN,
        KIND_CONSTFPPI,
        KIND_CONSTFPNI,
        KIND_CONSTFPPZ,
        KIND_CONSTFPNZ,
        KIND_CONSTRMRNE,
        KIND_CONSTRMRNA,
        KIND_CONSTRMRTZ,
        KIND_CONSTRMRTP,
        KIND_CONSTRMRTN,
        KIND_CONSTS
    ]

g_fun_kinds   = \
    {
        KIND_ABS: 1,
        KIND_ADD: -1,
        KIND_AND: -1,
        KIND_BVADD: 2,
        KIND_BVAND: 2,
        KIND_BVASHR: 2,
        KIND_BVCOMP: 2,
        KIND_BVLSHR: 2,
        KIND_BVMUL: 2,
        KIND_BVNAND: 2,
        KIND_BVNEG: 1,
        KIND_BVNOR: 2,
        KIND_BVNOT: 1,
        KIND_BVOR: 2,
        KIND_BVSDIV: 2,
        KIND_BVSGE: 2,
        KIND_BVSGT: 2,
        KIND_BVSHL: 2,
        KIND_BVSLE: 2,
        KIND_BVSLT: 2,
        KIND_BVSMOD: 2,
        KIND_BVSREM: 2,
        KIND_BVSUB: 2,
        KIND_BVUGE: 2,
        KIND_BVUGT: 2,
        KIND_BVUDIV: 2,
        KIND_BVULE: 2,
        KIND_BVULT: 2,
        KIND_BVUREM: 2,
        KIND_BVXNOR: 2,
        KIND_BVXOR: 2,
        KIND_FPFP: 3,
        KIND_FPABS: 1,
        KIND_FPNEG: 1,
        KIND_FPADD: 3,
        KIND_FPSUB: 3,
        KIND_FPMUL: 3,
        KIND_FPDIV: 3,
        KIND_FPFMA: 4,
        KIND_FPSQRT: 2,
        KIND_FPREM: 2,
        KIND_FPRTI: 2,
        KIND_FPMIN: 2,
        KIND_FPMAX: 2,
        KIND_FPLEQ: -1,
        KIND_FPLT: -1,
        KIND_FPGEQ: -1,
        KIND_FPGT: -1,
        KIND_FPEQ: -1,
        KIND_FPISNORM: 1,
        KIND_FPISSUB: 1,
        KIND_FPISZERO: 1,
        KIND_FPISINF: 1,
        KIND_FPISNAN: 1,
        KIND_FPISNEG: 1,
        KIND_FPISPOS: 1,
        KIND_FPTOUBV: 2,
        KIND_FPTOSBV: 2,
        KIND_FPTOFP: -1,
        KIND_FPTOFPUNS: 2,
        KIND_STR_LEN: 1,
        KIND_STR_CONCAT: -1,
        KIND_STR_CONTAINS: 2,
        KIND_STR_SUBSTR: 3,
        KIND_STR_REPLACE: 3,
        KIND_STR_INDEXOF: 3,
        KIND_STR_PREFIXOF: 2,
        KIND_STR_SUFFIXOF: 2,
        KIND_CONC: -1,
        KIND_DIST: -1,
        KIND_DIV: -1,
        KIND_EQ: -1,
        KIND_EXTR: 1,
        KIND_GE: -1,
        KIND_GT: -1,
        KIND_IMPL: -1,
        KIND_ISI: 1,
        KIND_ITE: 3,
        KIND_LE: -1,
        KIND_LT: -1,
        KIND_MOD: 2,
        KIND_MUL: -1,
        KIND_NEG: 1,
        KIND_NOT: 1,
        KIND_OR: -1,
        KIND_RDIV: -1,
        KIND_REP: 1,
        KIND_ROL: 1,
        KIND_ROR: 1,
        KIND_SELECT: 2,
        KIND_SEXT: 1,
        KIND_STORE: 3,
        KIND_SUB: -1,
        KIND_TOI: 1,
        KIND_TOR: 1,
        KIND_XOR: -1,
        KIND_ZEXT: 1
    }

g_cmd_kinds   = \
    [
        KIND_ASSERT,
        KIND_CHECKSAT,
        KIND_DECLCONST,
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
        KIND_GETMODEL,
        KIND_EXIT,
        KIND_PUSH,
        KIND_POP,
        KIND_SETLOGIC,
        KIND_SETINFO,
        KIND_SETOPT,
        KIND_ECHO
    ]



class DDSMTParseCheckException (Exception):

    def __init__ (self, msg):
        self.msg = msg

    def __str__ (self):
        return "[ddsmt] Error: {}".format(self.msg)


class DDSMTParseException (SMTParseException):

    def __str__ (self):
        return "[ddsmt] {}:{}:{}: {}".format(
                self.filename, self.line, self.col, self.msg)


class SMTNode:

    __slots__ = ["id", "kind", "sort", "children"]
    g_smtformula = None

    def __init__ (self, kind = "none", sort = None, children = []):
        assert (isinstance (children, list))
        SMTFormula.g_node_id += 1
        self.id = SMTFormula.g_node_id
        self.kind = kind
        self.sort = sort
        self.children = children

    def __str__ (self):
        return str(self.get_subst()) if self.is_subst() else \
                "({}{})".format(self.kind, self.children2str())

    def children2str(self):
        return " " + " ".join([str(c) for c in self.children]) \
                            if self.children else ""

    def dump (self, outfile, lead = " "):
        if self.is_subst():
            self.get_subst().dump(outfile, lead)
        else:
            outfile.write(lead)
            outfile.write(str(self))

    def is_const (self):
        return False

    def is_false_const (self):
        return False

    def is_true_const (self):
        return False

    def is_false_bvconst (self):
        return False

    def is_true_bvconst (self):
        return False

    def is_fun (self):
        return False

    def is_and (self):
        return False

    def is_or (self):
        return False

    def is_bvand (self):
        return False

    def is_bvor (self):
        return False

    def is_bvshift (self):
        return False

    def is_ite (self):
        return False

    def is_let (self):
        return False

    def is_quant (self):
        return False

    def is_varb (self):
        return False

    def is_write (self):
        return False

    def is_fun_app(self):
        return False

    def subst (self, substitution):
        SMTNode.g_smtformula.subst(self, substitution)

    def get_subst (self):
        return self if not self.is_subst() else \
                SMTNode.g_smtformula.get_subst(self)

    def is_subst (self):
        return SMTNode.g_smtformula and SMTNode.g_smtformula.is_subst(self)


class SMTSortNode (SMTNode):

    __slots__ = ["name", "nparams", "defsort"]

    def __init__ (self, name, nparams = 0, kind = KIND_SORT, defsort = None):
        super().__init__(kind)
        self.name = name
        self.nparams = nparams
        self.defsort = defsort

    def __str__ (self):
        return self.name

    def __eq__ (self, other):
        if not other:
            return False
        sort0 = self.name
        sort1 = other.name
        if self.defsort:
            assert (isinstance(self.defsort, SMTDefinedSortNode))
            params = self.name.lstrip('(').rstrip(')').split()[1:]
            sort0 = self.defsort.instantiate (params)
        if other.defsort:
            assert (isinstance(other.defsort, SMTDefinedSortNode))
            params = other.name.lstrip('(').rstrip(')').split()[1:]
            sort1 = other.defsort.instantiate (params)
        return sort0 == sort1

    def __ne__ (self, other):
        return not self.__eq__(other)

    def is_bv_sort (self):
        return False

    def is_fp_sort (self):
        return False

    def is_arr_sort (self):
        return False

    def is_bool_sort (self):
        return self.name == "Bool"

    def is_int_sort (self):
        return self.name == "Int"

    def is_real_sort (self):
        return self.name == "Real"

    def is_str_sort (self):
        return self.name == "String"

    def is_rm_sort (self):
        return self.name == "RoundingMode"


class SMTDummySortNode (SMTSortNode):

    def __init__(self):
        super().__init__("dummy", 0, KIND_SORT)
    def __str__ (self):
        return "{}"


class SMTDefinedSortNode (SMTSortNode):

    __slots__ = ["sf", "params", "sort"]

    def __init__ (self, smtformula, name, params, sort):
        super().__init__(name, len(params), KIND_DSORT)
        self.sort = sort  # string with placeholders
        self.params = params
        self.sf = smtformula

    def instantiate (self, params = []):
        return self.sort.format(*params)

    def is_bv_sort (self):
        """
        Return true if (the instnatiated) sort is a bit-vector sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_bv_sort() if sort else False

    def is_fp_sort (self):
        """
        Return true if (the instnatiated) sort is a floating-point sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_fp_sort() if sort else False

    def is_arr_sort (self):
        """
        Return true if (the instnatiated) sort is an array sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_arr_sort() if sort else False

    def is_bool_sort (self):
        """
        Return true if (the instnatiated) sort is a Boolean sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_bool_sort() if sort else False

    def is_int_sort (self):
        """
        Return true if (the instnatiated) sort is an Integer sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_int_sort() if sort else False

    def is_real_sort (self):
        """
        Return true if (the instnatiated) sort is a Real sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_real_sort() if sort else False

    def is_str_sort (self):
        """
        Return true if (the instnatiated) sort is a String sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_str_sort() if sort else False

    def is_rm_sort (self):
        """
        Return true if (the instnatiated) sort is a RoundingMode sort.

        This will only be called directly on an SMTDefinedSortNode if it
        doesn't have parameters -- that's the only case when a
        SMTDefinedSortNode can be assigned to a term, else the instantiated
        sort will be assigned.
        """
        if len(self.params) > 0: return False
        name = self.instantiate()
        sort = self.sf.find_sort_and_scope(name)
        return sort[0].is_real_sort() if sort else False


class SMTArraySortNode (SMTSortNode):

    __slots__ = ["index_sort", "elem_sort"]

    def __init__ (self, index_sort = None, elem_sort = None):
        super().__init__(
                SMTArraySortNode.get_name(index_sort, elem_sort),
                2, KIND_ARRSORT)
        self.index_sort = index_sort
        self.elem_sort = elem_sort

    @staticmethod
    def get_name (index_sort, elem_sort):
        assert (index_sort != None or elem_sort == None)
        return "Array" if index_sort == None and elem_sort == None \
                       else "(Array {!s} {!s})".format(index_sort, elem_sort)

    def is_arr_sort (self):
        return True


class SMTBVSortNode (SMTSortNode):

    __slots__ = ["bw"]

    def __init__ (self, bw):
        super().__init__(SMTBVSortNode.get_name(bw), 0, KIND_BVSORT)
        self.bw = bw

    @staticmethod
    def get_name (bw):
        return "(_ BitVec {})".format(bw)

    def is_bv_sort (self):
        return True


class SMTFPSortNode (SMTSortNode):

    __slots__ = ["ew", "sw"]

    def __init__ (self, ew, sw, is_special = False):
        super().__init__(
                SMTFPSortNode.get_name(ew, sw, is_special), 0, KIND_FPSORT)
        self.ew = ew
        self.sw = sw

    def __eq__ (self, other):
        if not isinstance (other, SMTFPSortNode):
            return False
        return super().__eq__(other) or (self.ew == other.ew and self.sw == other.sw)

    def __ne__ (self, other):
        return not self.__eq__(other)

    @staticmethod
    def get_name (ew, sw, is_special = False):
        if is_special:
            if ew == 5 and sw == 11:
                return "Float16"
            elif ew == 8 and sw == 24:
                return "Float32"
            elif ew == 11 and sw == 53:
                return "Float64"
            else:
                assert (ew == 15 and sw == 113)
                return "Float128"
        return "(_ FloatingPoint {} {})".format(ew, sw)

    def is_fp_sort (self):
        return True


class SMTSortExprNode (SMTNode):

    __slots__ = ["symbols"]

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

    __slots__ = ["value"]
    #__slots__ = ["value", "ostr"]  # TODO debug

    def __init__ (self, kind, sort, value = 0):
    #def __init__ (self, kind, sort, value = 0, ostr = ""): # TODO debug
        assert (kind in g_const_kinds)
        super().__init__(kind, sort)
        self.value = value
        #self.ostr = ostr # TODO debug

    def __str__ (self):
        if self.is_subst():
            return str(self.get_subst())
        return str(self.value)
        #return self.ostr if self.ostr else str(self.value) # TODO debug

    def is_const (self):
        return True

    def is_false_const (self):
        return self.kind == KIND_CONST and self.value == "false"

    def is_true_const (self):
        return self.kind == KIND_CONST and self.value == "true"


class SMTBVConstNode (SMTConstNode):

    def __str__ (self):
        assert (self.kind != KIND_CONST)
        if self.is_subst():
            return str(self.get_subst())
        if self.kind == KIND_CONSTH:
            ##### TODO debug
            #if self.ostr:
            #    return self.ostr
            #### end debug
            shex = str(hex(self.value)[2:])
            nzeros = self.sort.bw // 4 - len(shex)
            return "#x{}{}".format(
                    "".join(['0' for i in range(0, nzeros)]), shex)
        elif self.kind == KIND_CONSTB:
            ##### TODO debug
            #if self.ostr:
            #    return self.ostr
            #### end debug
            sbin = str(bin(self.value)[2:])
            nzeros = self.sort.bw - len(sbin)
            return "#b{}{}".format(
                    "".join(['0' for i in range(0, nzeros)]), sbin)
        assert (self.kind == KIND_CONSTN)
        return "(_ bv{} {})".format(self.value, self.sort.bw)

    def is_false_bvconst (self):
        return self.sort.bw == 1 and self.value == 0

    def is_true_bvconst (self):
        return self.sort.bw == 1 and self.value == 1


class SMTFPConstNode (SMTConstNode):

    def __str__ (self):
        assert (self.kind != KIND_CONST)
        if self.is_subst():
            return str(self.get_subst())
        if self.kind == KIND_CONSTFPPI:
            return "(_ +oo {} {})".format(self.sort.ew, self.sort.sw)
        elif self.kind == KIND_CONSTFPNI:
            return "(_ -oo {} {})".format(self.sort.ew, self.sort.sw)
        elif self.kind == KIND_CONSTFPPZ:
            return "(_ +zero {} {})".format(self.sort.ew, self.sort.sw)
        elif self.kind == KIND_CONSTFPNZ:
            return "(_ -zero {} {})".format(self.sort.ew, self.sort.sw)
        assert (self.kind == KIND_CONSTFPN)
        return "(_ NaN {} {})".format(self.sort.ew, self.sort.sw)


class SMTRMConstNode (SMTConstNode):

    __slots__ = ["is_special"]

    def __init__ (self, kind, sort, is_special = False):
        super().__init__(kind, sort)
        self.is_special = is_special

    def __str__ (self):
        assert (self.kind != KIND_CONST)
        if self.is_subst():
            return str(self.get_subst())
        if self.kind == KIND_CONSTRMRNE:
            return "roundNearestTiesToEven" if self.is_special else "RNE"
        elif self.kind == KIND_CONSTRMRNA:
            return "roundNearestTiesToAway" if self.is_special else "RNA"
        elif self.kind == KIND_CONSTRMRTZ:
            return "roundTowardZero" if self.is_special else "RTZ"
        elif self.kind == KIND_CONSTRMRTN:
            return "roundTowardNegative" if self.is_special else "RTN"
        assert (self.kind == KIND_CONSTRMRTP)
        return "roundTowardPositive" if self.is_special else "RTP"


class SMTFunNode (SMTNode):

    __slots__ = ["name", "sorts", "indices"]

    def __init__ (self, name, sort, sorts = [], indices = [], children = []):
        assert (isinstance (sorts, list))
        assert (isinstance (indices, list))
        assert (not children or len(children) == 1)
        super().__init__(KIND_FUN, sort, children)
        # Note: in case of indexed functions, name is stored as "(_ ...)"
        #       (necessary for function caching)
        self.name = name
        self.sorts = sorts  # signature sorts
        self.indices = [int(s.value) for s in indices]

    def __str__ (self):
        if self.is_subst():
            return str(self.get_subst())
        return self.name

    def is_fun (self):
        return True


class SMTAnFunNode (SMTNode):

    __slots__ = ["fun"]

    def __init__ (self, fun, sort):
        super().__init__(KIND_ANNFUN, sort)
        self.fun = fun

    def __sizeof (self):
        return super().__sizeof__() + self.fun.__sizeof__()

    def __str__ (self):
        return str(self.get_subst()) if self.is_subst() else \
                "(as {!s} {!s})".format(self.fun, self.sort)


class SMTFunAppNode (SMTNode):

    __slots__ = ["fun"]

    def __init__ (self, fun, kind, sort, children):
        assert (isinstance(fun, SMTFunNode))
        assert (len(children) >= 1)
        super().__init__(kind, sort, children)
        self.fun = fun

    def __str__ (self):
        # we have to prevent recursive calls here, else deep nesting levels
        # blow up the recursion depth limit
        strings = []
        to_visit = [self]
        visited = {}
        while to_visit:
            cur = to_visit.pop().get_subst()
            if not cur:
                continue
            if type(cur) != SMTFunAppNode:
                strings.append(str(cur))
            else:
                if cur.id not in visited:
                    to_visit.append(cur)
                    to_visit.extend(cur.children)
                    visited[cur.id] = cur.id
                else:
                    cs = []
                    for c in cur.children:
                        if not strings:
                            break
                        cs.append(strings.pop())
                    strings.append(
                            "({} {})".format(
                                cur.fun,
                                " ".join([s for s in cs])))
        assert (len(strings) == 1)
        return strings.pop()

    def dump (self, outfile, lead = " "):
        # we have to prevent recursive calls here, else deep nesting levels
        # blow up the recursion depth limit
        to_visit = [self]
        visited = {}
        while to_visit:
            cur = to_visit.pop().get_subst()
            if not cur:
                continue
            if type(cur) != SMTFunAppNode:
                cur.dump(outfile)
            else:
                if cur.id not in visited:
                    to_visit.append(cur)
                    outfile.write(lead)
                    outfile.write("({}".format(cur.fun))
                    to_visit.extend(cur.children[::-1])
                    visited[cur.id] = cur.id
                else:
                    outfile.write(")")

    def is_and (self):
        return self.kind == KIND_AND

    def is_or (self):
        return self.kind == KIND_OR

    def is_bvand (self):
        return self.kind == KIND_BVAND

    def is_bvor (self):
        return self.kind == KIND_BVOR

    def is_bvshift (self):
        return self.kind == KIND_BVLSHR \
               or self.kind == KIND_BVASHR \
               or self.kind == KIND_BVSHL

    def is_ite (self):
        return self.kind == KIND_ITE

    def is_write (self):
        return self.kind == KIND_STORE

    def is_fun_app(self):
        return True


class SMTVarBindNode (SMTNode):

    __slots__ = ["var"]

    def __init__ (self, var, children):
        assert (isinstance (var, SMTFunNode))
        assert (isinstance (children, list))
        assert (len(children) == 1)
        super().__init__(KIND_VARB, None, children)
        self.var = var

    def __str__ (self):
        assert (len(self.children) == 1)
        return str(self.get_subst()) if self.is_subst() else \
                "({} {!s})".format(str(self.var), self.children[0])


    def dump (self, outfile, lead = " " ):
        if self.is_subst():
            subst = self.get_subst()
            if subst:
                subst.dump(outfile, lead)
        else:
            outfile.write(lead)
            outfile.write("({}".format(str(self.var)))
            self.children[0].dump(outfile)
            outfile.write(")")

    def is_varb (self):
        return True


class SMTSortedQVarNode (SMTNode):

    __slots__ = ["var"]

    def __init__ (self, var):
        assert (isinstance (var, SMTFunNode))
        assert (var.sort)
        super().__init__(KIND_SVAR, var.sort)
        self.var = var

    def __str__ (self):
        return str(self.var)


class SMTForallExistsNode (SMTNode):

    __slots__ = ["svars"]

    def __init__ (self, svars, kind, children):
        assert (kind in (KIND_FORALL, KIND_EXISTS))
        assert (len(children) == 1)
        super().__init__(kind, children[0].sort, children)
        self.svars = svars

    def __str__ (self):
        # we have to prevent recursive calls here, else deep nesting levels
        # blow up the recursion depth limit
        strings = []
        to_visit = [self]
        visited = {}
        while to_visit:
            cur = to_visit.pop().get_subst()
            if not cur:
                continue
            if type(cur) != SMTForallExistsNode:
                strings.append(str(cur))
            else:
                if cur.id not in visited:
                    to_visit.append(cur)
                    to_visit.extend(cur.children)
                    visited[cur.id] = cur.id
                else:
                    assert (len(strings) == 1)
                    strings.append(
                            "({} ({}) {})".format(
                                cur.kind,
                                " ".join(
                                    ["({} {!s})".format(str(s.var), s.var.sort)
                                    for s in cur.svars]) \
                                            if len(cur.svars) > 0 else "",
                                strings.pop()))
        assert (len(strings) == 1)
        return strings.pop()

    def dump (self, outfile, lead = " "):
        # we have to prevent recursive calls here, else deep nesting levels
        # blow up the recursion depth limit
        to_visit = [self]
        visited = {}
        while to_visit:
            cur = to_visit.pop().get_subst()
            if not cur:
                continue
            if type(cur) != SMTForallExistsNode:
                cur.dump(outfile)
            else:
                if cur.id not in visited:
                    to_visit.append(cur)
                    outfile.write(lead)
                    outfile.write("({} ({})".format(
                        cur.kind,
                        " ".join(["({} {!s})".format(str(s.var), s.var.sort)
                            for s in cur.svars]) if len(cur.svars) > 0 else ""))
                    to_visit.extend(cur.children[::-1])
                    visited[cur.id] = cur.id
                else:
                    outfile.write(")")

    def is_quant (self):
        return True


class SMTLetNode (SMTNode):

    def __init__ (self, children):
        super().__init__(KIND_LET, children[-1].sort, children)

    def __str__ (self):
        # we have to prevent recursive calls here, else deep nesting levels
        # blow up the recursion depth limit
        strings = []
        to_visit = [self]
        visited = {}
        while to_visit:
            cur = to_visit.pop()
            cursubst = cur.get_subst()
            if not cursubst and type(cur) == SMTVarBindNode:
                continue
            cur = cursubst
            if type(cur) != SMTLetNode:
                strings.append(str(cur))
            else:
                if cur.id not in visited:
                    to_visit.append(cur)
                    to_visit.extend(cur.children)
                    visited[cur.id] = cur.id
                else:
                    cs = []
                    for c in cur.children:
                        if not strings:
                            break
                        cs.append(strings.pop())
                    strings.append(
                            "({} ({}) {})".format(
                                cur.kind,
                                " ".join([s for s in cs[0:-1]]),
                                cs[-1]))
        assert (len(strings) == 1)
        return strings.pop()

    def dump (self, outfile, lead = " "):
        # we have to prevent recursive calls here, else deep nesting levels
        # blow up the recursion depth limit
        to_visit = [self]
        visited = {}
        cntvb = 0
        while to_visit:
            cur = to_visit.pop()
            cursubst = cur.get_subst()
            if not cursubst and type(cur) == SMTVarBindNode:
                cntvb += 1
                continue
            cur = cursubst
            if type(cur) != SMTLetNode:
                if type(cur) != SMTVarBindNode:
                    if cntvb:
                        outfile.write(")")
                    if cur:
                        cur.dump(outfile)
                    cntvb = 0
                else:
                    if cntvb:
                        cur.dump(outfile)
                    else:
                        cur.dump(outfile, "")
                    cntvb += 1
            else:
                if cntvb:
                    outfile.write(")")
                    cntvb = 0
                if cur.id not in visited:
                    to_visit.append(cur)
                    outfile.write(lead)
                    outfile.write("({} (".format(cur.kind))
                    to_visit.extend(cur.children[::-1])
                    visited[cur.id] = cur.id
                else:
                    outfile.write(")")

    def is_let (self):
        return True


class SMTAnnNode (SMTNode):

    __slots__ = ["attributes"]

    def __init__ (self, attributes, sort, children):
        assert (len(children) == 1)
        super().__init__(KIND_ANNOTN, sort, children)
        self.attributes = attributes

    def __str__ (self):
        return str(self.get_subst()) if self.is_subst() else \
                "(! {!s} {})".format(
                        self.children[0],
                        " ".join([str(a) for a in self.attributes]))


class SMTNamedAnnNode (SMTAnnNode):

    __slots__ = ["name", "indices", "dumped"]

    def __init__ (self, attributes, sort, children, name):
        super().__init__(attributes, sort, children)
        # treat annotation nodes as function nodes in case that attribute
        # ':named' is given
        self.name = name
        self.indices = []
        # distinguish full and name-only dumps
        self.dumped = False

    def dump (self, outfile, lead = " "):
        if self.is_subst():
            self.get_subst().dump(outfile, lead)
        else:
            outfile.write(lead)
            if self.dumped:  # name-only
                outfile.write(self.name)
            else:
                outfile.write(str(self))
                self.dumped = True


class SMTCmdNode:

    __slots__ = ["id", "kind", "children"]
    g_smtformula = None

    def __init__ (self, kind, children = []):
        global g_cmd_kinds
        assert (isinstance (children, list))
        assert (kind in g_cmd_kinds)
        SMTFormula.g_node_id += 1
        self.id = SMTFormula.g_node_id
        self.kind = kind
        self.children = children

    def __str__ (self):
        if self.is_subst():
            return ""
        if self.kind == KIND_DECLCONST:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            return "({} {} {})".format(
                    self.kind,
                    fun.name,
                    str(fun.sort))
        elif self.kind == KIND_DECLFUN:
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
            assert (isinstance(self.children[0], SMTDefinedSortNode))
            return "({}{})".format(self.kind, self.defChildren2str())
        elif self.kind == KIND_ECHO:
            return "({} {})".format(self.kind, self.children[0])

        return "({}{})".format(self.kind, self.children2str())

    def dump (self, outfile, lead = ""):
        if self.is_subst():
            return
        outfile.write(lead)
        if self.kind == KIND_DECLCONST:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            outfile.write("({} {} {})\n".format(
                    self.kind,
                    fun.name,
                    str(fun.sort)))
        elif self.kind == KIND_DECLFUN:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            outfile.write("({} {} ({}) {})\n".format(
                    self.kind,
                    fun.name,
                    " ".join([str(s) for s in fun.sorts]) \
                            if len(fun.sorts) > 0 else "",
                    str(fun.sort)))
        elif self.kind == KIND_DEFFUN:
            assert (len(self.children) == 3)
            assert (isinstance(self.children[0], SMTFunNode))
            fun = self.children[0]
            svars = self.children[1]
            fterm = self.children[2]
            outfile.write("({} {} ({}) {!s}".format(
                    self.kind,
                    fun.name,
                    " ".join(["({} {!s})".format(s.name, s.sort)
                              for s in svars]) if len(svars) > 0 else "",
                    fun.sort))
            fterm.dump(outfile)
            outfile.write(")\n")

        elif self.kind == KIND_DECLSORT:
            assert (len(self.children) == 1)
            assert (isinstance(self.children[0], SMTSortNode))
            sort = self.children[0]
            outfile.write("({} {} {})\n".format(
                    self.kind, sort.name, sort.nparams))
        elif self.kind == KIND_ASSERT:
            outfile.write("({}".format(self.kind))
            assert (len(self.children) == 1)
            self.children[0].dump(outfile)
            outfile.write(")\n")
        elif self.kind == KIND_GETVALUE:
            outfile.write("({} (".format(self.kind))
            for i in range(len(self.children)):
                child = self.children[i]
                child.dump(outfile)
            outfile.write("))\n")
        else:
            if self.kind == KIND_DEFSORT:
                assert (len(self.children) == 3)
                assert (isinstance(self.children[0], SMTSortNode))
            outfile.write("{!s}".format(self))
            if self.kind != KIND_EXIT:
                outfile.write("\n")

    def defChildren2str (self):
        res = ["", self.children[0].name]
        res.append("({})".format(" ".join([str(c) for c in self.children[1]])))
        res.append(self.children[0].instantiate(self.children[0].params))
        return " ".join([s for s in res]) if self.children else ""

    def children2str (self):
        res = [""]
        for c in self.children:
            if isinstance (c, list):
                res.append("({})".format(
                    " ".join([str(cc) for cc in c])))
            else:
                res.append(str(c))
        return " ".join([s for s in res]) if self.children else ""

    def is_assert (self):
        return self.kind == KIND_ASSERT

    def is_definefun (self):
        return self.kind == KIND_DEFFUN

    def is_getvalue (self):
        return self.kind == KIND_GETVALUE

    def is_exit (self):
        return self.kind == KIND_EXIT

    def is_setlogic (self):
        return self.kind == KIND_SETLOGIC

    def subst (self, substitution):
        SMTCmdNode.g_smtformula.subst(self, substitution)

    def get_subst (self):
        return self if not self.is_subst() else \
                SMTCmdNode.g_smtformula.get_subst(self)

    def is_subst (self):
        return SMTCmdNode.g_smtformula and \
                SMTCmdNode.g_smtformula.is_subst(self)


class SMTPushCmdNode (SMTCmdNode):

    __slots__ = ["nscopes", "scope"]

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

    __slots__ = ["nscopes"]

    def __init__ (self, nscopes):
        assert (nscopes > 0)
        super().__init__(KIND_POP)
        self.nscopes = nscopes

    def __str__ (self):
        return "" if self.is_subst() else \
                "({} {})".format(self.kind, self.nscopes)



class SMTScopeNode:

    __slots__ = ["id", "level", "prev", "kind", "scopes", "cmds", "funs",
                 "sorts", "declfun_cmds", "declfun_id"]
    g_smtformula = None

    def __init__ (self, level = 0, prev = None):
        SMTFormula.g_node_id += 1
        self.id = SMTFormula.g_node_id
        self.level  = level
        self.prev   = prev
        self.scopes = []
        self.cmds   = []
        self.funs   = {}
        self.sorts  = {}
        self.declfun_cmds = {}  # used for substition with fresh variables
        self.declfun_id   = 0

    def __str__ (self):
        if self.is_subst():
            return ""
        res = []
        for cmd in self.cmds:
            if cmd.kind == KIND_SETLOGIC:
                res.append(str(cmd))
                # dump declarations of substition variables
                for name in self.declfun_cmds:
                    res.append(str(self.declfun_cmds[name]))
            elif cmd.kind == KIND_PUSH:
                assert (len(self.scopes) > 0)
                assert (cmd.scope in self.scopes)
                if cmd.scope.is_subst():
                    continue
                res.append(str(cmd))
                res.append(str(cmd.scope))
            else:
                res.append(str(cmd))
        return "\n".join([s for s in res if s != ""])

    def dump (self, outfile, lead = ""):
        if self.is_subst():
            return
        outfile.write(lead)
        for cmd in self.cmds:
            if cmd.kind == KIND_SETLOGIC:
                cmd.dump(outfile)
                # dump declarations of substition variables
                for name in self.declfun_cmds:
                    self.declfun_cmds[name].dump(outfile)
            elif cmd.kind == KIND_PUSH:
                assert (len(self.scopes) > 0)
                assert (cmd.scope in self.scopes)
                if cmd.scope.is_subst():
                    continue
                cmd.dump(outfile)
                cmd.scope.dump(outfile)
            else:
                cmd.dump(outfile)

    def subst (self, substitution):
        SMTScopeNode.g_smtformula.subst(self, substitution)

    def get_subst (self):
        return self if not self.is_subst() else \
                SMTScopeNode.g_smtformula.get_subst(self)

    def is_subst (self):
        return SMTScopeNode.g_smtformula and \
                SMTScopeNode.g_smtformula.is_subst(self)

    def is_substvar (self, node):
        if not node.is_fun():
            return False
        return node.name in self.declfun_cmds



class SMTSubstList:
    def __init__ (self):
        self.substs = {}

    def subst (self, node, substitution):
        assert (not substitution or \
                not substitution.is_subst() or \
                not substitution.get_subst().is_subst())
        self.substs[node.id] = substitution \
                if not substitution else substitution.get_subst()

    def is_subst (self, node):
        return node.id in self.substs

    def get_subst (self, node):
        while node and node.is_subst():
            assert node != self.substs[node.id]
            node = self.substs[node.id]
        return node

class SMTFormula:
    g_node_id = 0 # unique id for nodes of type SMTNode, SMTCmdNode, 
                  # and SMTScopeNode

    def __init__ (self):
        self.logic = "ALL"
        self.scopes = SMTScopeNode ()
        self.cur_scope = self.scopes
        self.substs = SMTSubstList ()
        self.sorts_cache = {}
        self.consts_cache = {}
        self.funs_cache = {}   # fun name -> currently visible declaring scopes
        self.anns_cache = []   # named annotation nodes
        self.__add_predefined_sorts ()

    def __add_predefined_sorts (self):
        self.add_sort ("Bool")
        self.add_sort ("Int")
        self.add_sort ("Real")
        self.add_sort ("String")
        self.add_sort ("RoundingMode")
        self.add_fpSort (5, 11, True)    # Float16
        self.add_fpSort (8, 24, True)    # Float32
        self.add_fpSort (11, 53, True)   # Float64
        self.add_fpSort (15, 113, True)  # Float128
        self.add_arrSort ()      # abstract array base sort

    def dump (self, filename = None, root = None):
        out = root if root != None else self.scopes
        for ann in self.anns_cache:
            ann.dumped = False  # reset
        if not filename:
            out.dump(sys.stdout)
            sys.stdout.write("\n")
        else:
            with open(filename, 'w') as outfile:
                out.dump(outfile)
                outfile.write("\n")

    def is_bv_logic (self):
        return self.logic == "ALL" or self.logic.find("BV") >= 0

    def is_fp_logic (self):
        return self.logic == "ALL" or self.logic.find("FP") >= 0

    def is_int_logic (self):
        return self.logic == "ALL" or self.logic.find("I") >= 0

    def is_real_logic (self):
        return self.logic == "ALL" or self.logic.find("R") >= 0

    def is_str_logic (self):
        return self.logic == "ALL" or self.logic.find("S") >= 0

    # FIXME: incomplete, is there a better way to do this?
    def is_arr_logic (self):
        return self.logic == "ALL" or \
               self.logic in ("AUFLIA", "AUFLIRA", "AUFNIRA", "QF_ABV",
                              "QF_AUFBV", "QF_AUFLIA", "QF_AX")

    def is_substvar (self, node):
        return self.scopes.is_substvar(node)

    def subst (self, node, substitution):
        self.substs.subst(node, substitution)
        if isinstance (node, SMTNode) and node.is_fun() and \
            self.is_substvar(node):
            del (self.scopes.declfun_cmds[node.name])


    def is_subst (self, node):
        return self.substs.is_subst(node)

    def get_subst (self, node):
        if isinstance(node, SMTCmdNode) or isinstance(node, SMTScopeNode):
            assert (not self.substs.is_subst(node) or 
                        self.substs.get_subst(node) == None)
        return self.substs.get_subst(node)

    def open_scope (self, nscopes = 1):
        # Note: forall, exists open exactly one scope
        first_scope = None
        for i in range (nscopes):
            new_scope = SMTScopeNode(self.cur_scope.level + 1, self.cur_scope)
            if not first_scope:
                first_scope = new_scope
            self.cur_scope.scopes.append(new_scope)
            self.cur_scope = new_scope
        return first_scope  # scope associated with parent push cmd

    def close_scope (self, nscopes = 1):
        for i in range (nscopes):
            assert (self.cur_scope.prev != None)
            for name in self.cur_scope.sorts:
                assert (self.sorts_cache[name] == self.cur_scope)
                del(self.sorts_cache[name])
            for name in self.cur_scope.funs:
                assert (self.funs_cache[name][-1] == self.cur_scope)
                self.funs_cache[name].pop()
            self.cur_scope = self.cur_scope.prev

    def constNode (self, kind, sort, value, ostr = None):
        global g_const_kinds
        assert (kind in g_const_kinds)
        assert (ostr or kind == KIND_CONSTS)
        if ostr and ostr in self.consts_cache:
            return self.consts_cache[ostr]
        const = SMTConstNode (kind, sort, value)
        #const = SMTConstNode (kind, sort, value, ostr) # TODO debug
        self.consts_cache[ostr] = const
        return const

    def boolConstNode (self, value):
        assert (value in ("true", "false"))
        return self.constNode (KIND_CONST, self.sortNode("Bool"), value, value)

    def bvConstNode (self, kind, bw, value, ostr):
        assert (isinstance (bw, int))
        if ostr in self.consts_cache:
            return self.consts_cache[ostr]
        const = SMTBVConstNode (kind, self.bvSortNode(bw), value)
        #const = SMTBVConstNode (kind, self.bvSortNode(bw), value, ostr) # TODO debug
        self.consts_cache[ostr] = const
        return const

    def fpConstNode (self, kind, ew, sw, ostr):
        """
        Create a FP constant node of given kind.
        Note: We only represent constants with fixed values as FP constants,
              i.e., +zero, -zero, +oo, -oo, NaN.

        :kind: The kind of the constant, one of
                 - KIND_CONSTFPPZ
                 - KIND_CONSTFPNZ
                 - KIND_CONSTFPPI
                 - KIND_CONSTFPNI
                 - KIND_CONSTFPN
        :ew:   Exponent bit-width.
        :sw:   Significand bit-width.
        :ostr: SMT-LIB string represntation.
        """
        assert (isinstance (ew, int))
        assert (isinstance (sw, int))
        if ostr in self.consts_cache:
            return self.consts_cache[ostr]
        const = SMTFPConstNode (kind, self.fpSortNode(ew, sw))
        #const = SMTFPConstNode (kind, self.fpSortNode(ew, sw), ostr) # TODO debug
        self.consts_cache[ostr] = const
        return const

    def rmConstNode (self, value):
        """
        Create a RM constant node of given kind.

        :value: The value of the constant, one of
                 - RNE or roundNearestTiesToEven
                 - RNA or roundNearestTiesToAway
                 - RTZ or roundTowardZero
                 - RTN or roundTowardNegative
                 - RTP or roundTowardPositive
        :ostr: SMT-LIB string represntation.
        """
        if value in self.consts_cache:
            return self.consts_cache[value]
            const = SMTRMConstNode (
                    KIND_CONSTRMRNE, self.sortNode("RoundingMode"))
        elif value == "RNE":
            const = SMTRMConstNode (
                    KIND_CONSTRMRNE, self.sortNode("RoundingMode"))
        elif value == "RNA":
            const = SMTRMConstNode (
                    KIND_CONSTRMRNA, self.sortNode("RoundingMode"))
        elif value == "RTZ":
            const = SMTRMConstNode (
                    KIND_CONSTRMRTZ, self.sortNode("RoundingMode"))
        elif value == "RTN":
            const = SMTRMConstNode (
                    KIND_CONSTRMRTN, self.sortNode("RoundingMode"))
        elif value == "RTP":
            const = SMTRMConstNode (
                    KIND_CONSTRMRTP, self.sortNode("RoundingMode"))
        elif value == "roundNearestTiesToEven":
            const = SMTRMConstNode (
                    KIND_CONSTRMRNE, self.sortNode("RoundingMode"), True)
        elif value == "roundNearestTiesToAway":
            const = SMTRMConstNode (
                    KIND_CONSTRMRNA, self.sortNode("RoundingMode"), True)
        elif value == "roundTowardZero":
            const = SMTRMConstNode (
                    KIND_CONSTRMRTZ, self.sortNode("RoundingMode"), True)
        elif value == "roundTowardNegative":
            const = SMTRMConstNode (
                    KIND_CONSTRMRTN, self.sortNode("RoundingMode"), True)
        else:
            assert (value == "roundTowardPositive")
            const = SMTRMConstNode (
                    KIND_CONSTRMRTN, self.sortNode("RoundingMode"), True)
        self.consts_cache[value] = const
        return const

    def zeroConstNodeOfSort (self, sort, pos = True):
        """
        Create const node representing zero of given sort.
        Note: Argument 'pos' is only used for FP const nodes.

        :pos: True to create +zero, else -zero.
        """
        if sort.is_bv_sort():
            return self.bvConstNode(
                KIND_CONSTN, sort.bw, 0, "(_ bv0 {})".format(sort.bw))
        elif sort.is_fp_sort():
            return self.fpConstNode(
                KIND_CONSTFPPZ if pos else KIND_CONSTFPNZ,
                sort.ew,
                sort.sw,
                "(_ {}zero {} {})".format(
                    "+" if pos else "-", sort.ew, sort.sw))
        elif sort.is_int_sort():
            return self.constNode(
                KIND_CONSTN, self.sortNode("Int"), 0, "0")
        elif sort.is_real_sort():
            return self.constNode(
                KIND_CONSTD, self.sortNode("Real"), 0.0, "0.0")
        elif sort.is_str_sort():
            return self.constNode(
                KIND_CONSTS, self.sortNode("String"), "\"\"", "\"\"")
        else:
            raise DDSMTParseCheckException("Unhandled sort '{}'".format(sort))

    def find_sort_and_scope (self, name):
        if name in self.sorts_cache:
            return (self.sorts_cache[name].sorts[name], self.sorts_cache[name])
        return None

    def find_sort (self, name):
        res = self.find_sort_and_scope (name)
        return res[0] if res else None

    def add_dummySort(self, name):
        self.scopes.sorts[name] = SMTDummySortNode()
        return self.scopes.sorts[name]

    def add_sort (self, name, nparams = 0, scope = None):
        scope = scope if scope else self.scopes  # default: level 0
        assert (not self.find_sort (name))
        scope.sorts[name] = SMTSortNode (name, nparams)
        self.sorts_cache[name] = scope
        return scope.sorts[name]

    def add_definedSort (self, name, params, sort, scope = None):
        assert (not self.find_sort (name))
        scope = scope if scope else self.scopes  # default: level 0
        scope.sorts[name] = SMTDefinedSortNode (self, name, params, sort)
        self.sorts_cache[name] = scope
        return scope.sorts[name]

    def add_bvSort (self, bw):
        """
        Create and add BV sort to the sorts cache.
        Note: We do not consider scopes for non-parameterized sorts but always
              create them at context level 0.

        :bw:     The bit-width of the sort to create.
        :return: The created sort.
        """
        name = SMTBVSortNode.get_name(bw)
        assert (not self.find_sort (name))
        self.scopes.sorts[name] = SMTBVSortNode (bw)  # level 0
        self.sorts_cache[name] = self.scopes
        return self.scopes.sorts[name]

    def add_fpSort (self, ew, sw, is_special = False):
        """
        Create and add FP sort to the sorts cache.
        Note: We do not consider scopes for non-parameterized sorts but always
              create them at context level 0.

        :ew:         The exponent bit-width of the sort to create.
        :sw:         The significand bit-width of the sort to create.
        :is_special: True if sort is any of the Float* sorts.
        :return:     The created sort.
        """
        name = SMTFPSortNode.get_name(ew, sw, is_special)
        assert (not self.find_sort (name))
        self.scopes.sorts[name] = SMTFPSortNode (ew, sw, is_special)  # level 0
        self.sorts_cache[name] = self.scopes
        return self.scopes.sorts[name]

    def add_arrSort (self, index_sort = None, elem_sort = None, scope = None):
        """
        Create and add array sort to the sorts cache.

        :index_sort: The index sort of the sort to create.
        :elem_sort:  The element sort of the sort to create.
        :scope:      The scope (context level) of the sort to create.
        :return:     The created sort.
        """
        scope = scope if scope else self.scopes  # default: level 0
        name = SMTArraySortNode.get_name(index_sort, elem_sort)
        assert (not self.find_sort (name))
        scope.sorts[name] = SMTArraySortNode (index_sort, elem_sort)
        self.sorts_cache[name] = scope
        return scope.sorts[name]

    def dummySortNode (self, name):
        sort = self.find_sort(name)
        if not sort:
            return self.add_dummySort(name)
        return sort

    def sortNode (self, name, nparams = 0, scope = None, new = False, \
                        use_placeholders = False):
        scope = scope if scope else self.scopes  # default: level 0
        sort = self.find_sort (name)  # concrete sort already declared?
        if not sort:
            sorts = name[1:-1].split()
            if nparams > 0 and len(sorts) > 0:
                # abstract sort already declared?
                res = self.find_sort_and_scope (sorts[0])
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
                       return self.add_arrSort (
                               name[1], name[2], scope, use_placeholders)
            elif not new:
                if use_placeholders:
                    return self.add_dummySort(sort)
                raise DDSMTParseCheckException (
                        "sort '{}' undeclared".format(name))
            return self.add_sort (name, nparams, scope)
        return sort

    def definedSortNode (self, name, params, sortstr, scope = None):
        scope = scope if scope else self.scopes  # default: level 0
        sort = self.find_sort (name)
        if not sort:
            return self.add_definedSort (name, params, sortstr, scope)
        return sort

    def bvSortNode (self, bw):
        """
        Create or get cached BV sort node.
        Note: We do not consider scopes for non-parameterized sorts but always
              create them at context level 0.

        :bw:     The bit-width of the sort to create.
        :return: The created/cached sort.
        """
        name = SMTBVSortNode.get_name(bw)
        sort = self.find_sort (name)
        if not sort:
            sort = self.add_bvSort(bw)
        return sort

    def fpSortNode (self, ew, sw, is_special = False):
        """
        Create or get cached FP sort node.
        Note: We do not consider scopes for non-parameterized sorts but always
              create them at context level 0.

        :ew:     The exponent bit-width of the sort to create.
        :sw:     The significand bit-width of the sort to create.
        :return: The created/cached sort.
        """
        name = SMTFPSortNode.get_name(ew, sw, is_special)
        sort = self.find_sort (name)
        if not sort:
            sort = self.add_fpSort(ew, sw)
        return sort

    def arrSortNode (self, index_sort = None, elem_sort = None, scope = None,
                           use_placeholders = False):
        """
        Create or get cached array sort node.

        :index_sort:       The index sort of the sort to create.
        :elem_sort:        The element sort of the sort to create.
        :scope:            The scope (context level) of the sort to create.
        :use_placeholders: True if undeclared sorts are to be interpreted
                           as place holders.
        :return:           The created/cached sort.
        """
        scope = scope if scope else self.scopes  # default: level 0
        name = SMTArraySortNode.get_name(index_sort, elem_sort)
        sort = self.find_sort (name)
        if not sort:
            return self.add_arrSort (index_sort, elem_sort, scope)
        return sort

    def find_fun (self, name, sort = None, scope = None, find_nested = True):
        scope = scope if scope else self.cur_scope
        # Note: no redeclaration if symbol occurs with and without enclosing '|'
        if name not in self.funs_cache or not self.funs_cache[name]:
            if name[0] == '|':
               name = name[1:-1]
            else:
                name = "|{}|".format(name)
        # Note: we check stepwise, first for the current scope, and only if
        #       requested for scopes outer to the current (needed to enable
        #       overwriting of variables in let, forall, exists)
        if name in scope.funs:
            return scope.funs[name]
        if find_nested and name in self.funs_cache and self.funs_cache[name] \
           and (not sort or self.funs_cache[name][-1].funs[name].sort == sort):
               return self.funs_cache[name][-1].funs[name]
        return None

    def add_fun (self, name, sort, sorts, indices, children, scope = None):
        scope = scope if scope else self.scopes
        scope.funs[name] = SMTFunNode (name, sort, sorts, indices, children)
        if name in self.funs_cache:
            self.funs_cache[name].append(scope)
        else:
            self.funs_cache[name] = [scope]
        return scope.funs[name]

    def delete_fun (self, name, scope = None):
        scope = scope if scope else self.scopes
        while scope:
            # Note: no sort check here as this is used for substvars only
            if name in scope.funs:
                del(scope.funs[name])
            scope = scope.prev

    def funNode (self, name, sort, sorts = [], indices = [], children = [],
                 scope = None, find_nested = True):
        global g_fun_kinds
        scope = scope if scope and name not in g_fun_kinds \
                      else self.scopes  # default: level 0
        fun = self.find_fun (name, sort, find_nested = find_nested)
        if not fun:
            return self.add_fun (name, sort, sorts, indices, children, scope)
        assert (not sort or fun.sort == sort)
        return fun

    def anFunNode (self, name, sort, indices = []):
        if name in g_fun_kinds:
            fun = self.funNode (name, None, [], indices)
        else:
            fun = self.find_fun (name)
            if not fun:
                raise DDSMTParseCheckException (
                        "function '{}' undeclared".format(name))
        return SMTAnFunNode (fun, sort)


    def debug_sort_check(self, fun, kind, children):
        """
        Argument sort checks for debugging.

        Note: Sort inference is not supported if sort is a defined sort without
              arguments (i.e., a SMTDefinedSortNode) -- we can't derive the
              instantiated sort without access to the sorts in SMTFormula,
              and the sort nodes don't have access to it.

        :fun:      The function to apply.
        :kind:     The kind of the function.
        :children: The arguments to the function.
        """
        sortbool = self.sortNode("Bool")
        sortint = self.sortNode("Int")
        sortreal = self.sortNode("Real")
        sortstr = self.sortNode("String")

        # args sort Bool check
        if kind in (KIND_AND, KIND_IMPL, KIND_NOT, KIND_OR, KIND_XOR):
            for c in children:
                if not c.sort == sortbool:
                    raise DDSMTParseCheckException (
                        "'{!s}' expects sort 'Bool' as argument(s), " \
                        "found '{}'".format(fun, c.sort))
        # args Int check
        elif kind in (KIND_ABS, KIND_DIV, KIND_MOD, KIND_TOR):
            for c in children:
                if not c.sort == sortint:
                    raise DDSMTParseCheckException (
                        "'{!s}' expects sort 'Int' as argument(s), " \
                        "found '{}'".format(fun, c.sort))
        # args Real check
        elif kind in (KIND_RDIV, KIND_ISI, KIND_TOI):
            for c in children:
                if c.sort not in (sortint, sortreal):
                    raise DDSMTParseCheckException (
                        "'{!s}' expects sort 'Real' as argument(s)" \
                        "".format(fun))
        # args Int or Real check
        elif kind in (KIND_ADD, KIND_GE, KIND_GT, KIND_LE, KIND_LT, KIND_MUL,
                      KIND_NEG, KIND_SUB):
            c0 = children[0]
            if c0.sort not in (sortint, sortreal):
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'Int' or 'Real' as argument(s)" \
                    "".format(fun))
        # args BV sort check
        elif kind in (KIND_CONC, KIND_EXTR, KIND_REP,   KIND_ROL,  KIND_ROR,
                      KIND_SEXT, KIND_ZEXT, KIND_BVNEG, KIND_BVNOT):
            for c in children:
                if not c.sort.is_bv_sort():
                    raise DDSMTParseCheckException (
                        "'{!s}' expects BV sort as argument(s)".format(fun))
        # args FP sort check
        elif kind == KIND_FPFP:
            if children[0].sort.bw != 1:
                raise DDSMTParseCheckException (
                    "'{!s}' expects BV of size 1 as first argument".format(fun))
            for c in children:
                if not c.sort.is_bv_sort():
                    raise DDSMTParseCheckException (
                        "'{!s}' expects BV sort as argument(s)".format(fun))
        elif kind in (KIND_FPISNORM, KIND_FPISSUB, KIND_FPISZERO, KIND_FPISINF,
                      KIND_FPISNAN,  KIND_FPISNEG, KIND_FPISPOS,  KIND_FPABS,
                      KIND_FPNEG):
            for c in children:
                if not c.sort.is_fp_sort():
                    raise DDSMTParseCheckException (
                        "'{!s}' expects FP sort as argument(s)".format(fun))
        elif kind in (KIND_FPSQRT, KIND_FPRTI):
            if not children[0].sort.is_rm_sort():
                   raise DDSMTParseCheckException (
                       "'{!s}' expects RM expression "\
                       "as first argument".format(fun))
            if not children[1].sort.is_fp_sort():
                   raise DDSMTParseCheckException (
                       "'{!s}' expects FP expression "\
                       "as second argument".format(fun))
        elif kind == KIND_FPTOFP:
            if len(children) == 1:
                if not children[0].sort.is_bv_sort():
                       raise DDSMTParseCheckException (
                        "'{!s}' expects BV sort as argument(s)".format(fun))
            else:
                if not children[0].sort.is_rm_sort():
                       raise DDSMTParseCheckException (
                           "'{!s}' expects RM expression "\
                           "as first argument".format(fun))
                if not children[1].sort.is_fp_sort() \
                   and not children[1].sort.is_bv_sort():
                       raise DDSMTParseCheckException (
                               "'{!s}' expects FP or BV expression "\
                               "as second argument".format(fun))
        elif kind == KIND_FPTOFPUNS:
            if not children[0].sort.is_rm_sort():
                   raise DDSMTParseCheckException (
                       "'{!s}' expects RM expression "\
                       "as first argument".format(fun))
            if not children[1].sort.is_bv_sort():
                   raise DDSMTParseCheckException (
                       "'{!s}' expects BV expression "\
                       "as second argument".format(fun))
        # args equal sort check
        elif kind in (KIND_DIST, KIND_EQ):
            c0 = children[0]
            for c in children[1:]:
                if c.sort != c0.sort \
                   and not isinstance(c.sort, SMTDefinedSortNode) \
                   and not isinstance(c0.sort, SMTDefinedSortNode) \
                   and c0.sort not in (sortint, sortreal) \
                   and c.sort not in (sortint, sortreal):
                    raise DDSMTParseCheckException (
                        "'{!s}' with mismatching sorts: '{!s}' '{!s}'" \
                        "".format(fun, c0.sort, c.sort))
        # args BV bw check
        elif kind in (KIND_BVADD,  KIND_BVAND,  KIND_BVASHR, KIND_BVCOMP,
                      KIND_BVLSHR, KIND_BVMUL,  KIND_BVNAND, KIND_BVNOR,
                      KIND_BVOR,   KIND_BVSDIV, KIND_BVSGE,  KIND_BVSGT,
                      KIND_BVSHL,  KIND_BVSLE,  KIND_BVSLT,  KIND_BVSMOD,
                      KIND_BVSREM, KIND_BVSUB,  KIND_BVUGE,  KIND_BVUGT,
                      KIND_BVUDIV, KIND_BVULE,  KIND_BVULT,  KIND_BVUREM,
                      KIND_BVXNOR, KIND_BVXOR):
            c0 = children[0]
            if not c0.sort.is_bv_sort():
                raise DDSMTParseCheckException (
                    "'{!s}' expects BV sort as argument(s)".format(fun))
            for c in children[1:]:
                if c.sort != c0.sort \
                   and not isinstance(c.sort, SMTDefinedSortNode) \
                   and not isinstance(c0.sort, SMTDefinedSortNode):
                    raise DDSMTParseCheckException (
                        "'{!s}' with mismatching sorts: '{!s}' '{!s}'" \
                        "".format(fun, c0.sort, c.sort))
        # args FP ew sw check
        elif kind in (KIND_FPREM, KIND_FPMIN, KIND_FPMAX, KIND_FPLEQ,
                      KIND_FPLT,  KIND_FPGEQ, KIND_FPGT,  KIND_FPEQ):
            c0 = children[0]
            if not c0.sort.is_fp_sort():
                raise DDSMTParseCheckException (
                    "'{!s}' expects FP sort as argument(s)".format(fun))
            for c in children[1:]:
                if c.sort != c0.sort \
                   and not isinstance(c.sort, SMTDefinedSortNode) \
                   and not isinstance(c0.sort, SMTDefinedSortNode):
                    raise DDSMTParseCheckException (
                        "'{!s}' with mismatching sorts: '{!s}' '{!s}'" \
                        "".format(fun, c0.sort, c.sort))
        # args RM FP
        elif kind in (KIND_FPADD, KIND_FPSUB,   KIND_FPMUL, KIND_FPDIV,
                      KIND_FPFMA, KIND_FPTOUBV, KIND_FPTOSBV):
            c0 = children[0]
            if not c0.sort.is_rm_sort():
                raise DDSMTParseCheckException (
                    "'{!s}' expects RM sort as argument(s)".format(fun))
            for c in children[1:]:
                if not c.sort.is_fp_sort():
                    raise DDSMTParseCheckException (
                        "'{!s}' expects FP sort as argument(s)".format(fun))
        # first arg Array check
        elif kind in (KIND_SELECT, KIND_STORE):
            if not children[0].sort.is_arr_sort():
                   raise DDSMTParseCheckException (
                       "'{!s}' expects Array sort as "\
                       "first argument".format(fun))
        # ITE arg check
        elif kind == KIND_ITE:
            if not children[0].sort == sortbool:
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'Bool' as first argument".format(fun))
            if children[1].sort != children[2].sort            \
               and children[1].sort not in (sortreal, sortint) \
               and children[2].sort not in (sortreal, sortint):
                    raise DDSMTParseCheckException (
                        "'ite' with mismatching sorts: '{!s}' '{!s}'"\
                        "".format(children[1].sort, children[2].sort))
        # args String sort check
        elif kind in (KIND_STR_LEN, KIND_STR_CONCAT, KIND_STR_CONTAINS,
                      KIND_STR_REPLACE, KIND_STR_PREFIXOF, KIND_STR_SUFFIXOF):
            for c in children:
                if c.sort != sortstr:
                    raise DDSMTParseCheckException (
                        "'{!s}' expects String sort as argument(s)".format(fun))
        # str.substr arg check
        elif kind == KIND_STR_SUBSTR:
            if not children[0].sort == sortstr:
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'String' as first argument".format(fun))
            if not children[1].sort == sortint or not children[2].sort == sortint:
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'Int' as second and third argument".format(fun))
        # str.indexof arg check
        elif kind == KIND_STR_INDEXOF:
            if not children[0].sort == sortstr or not children[1].sort == sortstr:
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'String' as first and second argument".format(fun))
            if not children[2].sort == sortint:
                raise DDSMTParseCheckException (
                    "'{!s}' expects sort 'Int' as third argument".format(fun))


    def check_funApp (self, fun, kind, children):
        """
        Check if application of function of given kind with the given
        arguments is valid.

        :fun:      The function to apply.
        :kind:     The kind of the function.
        :children: The arguments to the function.
        """
        sortbool = self.sortNode("Bool")
        sortint = self.sortNode("Int")
        sortreal = self.sortNode("Real")
        sortrm = self.sortNode("RoundingMode")
        sortstr = self.sortNode("String")

        # args declaration check
        for c in children:
            if not c.sort:
                assert (c.kind == KIND_FUN)
                raise DDSMTParseCheckException (
                        "function argument '{!s}' undeclared".format(c))

        # fun declaration check
        if kind in g_fun_kinds:
            arity = g_fun_kinds[kind]
            n = len(children)
            # number of args for defined functions
            if (kind == KIND_FPTOFP and (n < 1 or n > 2)) or\
               (kind != KIND_FPTOFP and
               (arity == -1 and n <= 1) or(arity > 0 and arity != n)):
                   raise DDSMTParseCheckException (
                           "function '{!s}' expects (at least) {} argument(s), "\
                            "{} given".format(fun, g_fun_kinds[kind], n))
            # indices check
            if self.is_bv_logic:
                if kind == KIND_EXTR and len(fun.indices) != 2:
                    raise DDSMTParseCheckException (
                        "'{!s}' expects exactly two indices, {} given" \
                        "".format(fun.name, len(fun.indices)))
                elif kind in (KIND_REP, KIND_ROL, KIND_ROR, KIND_SEXT,
                              KIND_ZEXT) \
                     and len(fun.indices) != 1:
                         raise DDSMTParseCheckException (
                                 "'{!s}' expects exactly one index, {} given" \
                                 "".format(fun.name, len(fun.indices)))
            if self.is_fp_logic:
                if (kind == KIND_FPTOUBV or kind == KIND_FPTOSBV) \
                    and len(fun.indices) != 1:
                        raise DDSMTParseCheckException (
                            "'{!s}' expects exactly one index, {} given" \
                            "".format(fun.name, len(fun.indices)))
            # debug sort checks
            self.debug_sort_check(fun, kind, children)
        else:
            declfun = self.find_fun (fun.name)
            assert (declfun)
            if declfun.sort == None:  # not declared yet
                raise DDSMTParseCheckException (
                        "function '{!s}' undeclared".format(fun))
            else:
                if len(children) != len(declfun.sorts):
                    raise DDSMTParseCheckException (
                            "'{!s}' expects {} argument(s), {} given".format(
                                declfun, len(declfun.sorts), len(children)))


    def funApp2sort (self, fun, kind, children):
        self.check_funApp(fun, kind, children)
        # sort Bool
        if kind in (KIND_AND,   KIND_IMPL,  KIND_NOT,   KIND_OR,    KIND_XOR,
                    KIND_EQ,    KIND_DIST,  KIND_LE,    KIND_LT,    KIND_GE,
                    KIND_GT,    KIND_ISI,   KIND_BVSGE, KIND_BVSGT, KIND_BVSLE,
                    KIND_BVSLT, KIND_BVUGE, KIND_BVUGT, KIND_BVULE, KIND_BVULT,
                    KIND_FPISNORM, KIND_FPISSUB, KIND_FPISZERO, KIND_FPISINF,
                    KIND_FPISNAN,  KIND_FPISNEG, KIND_FPISPOS, 
                    KIND_FPMIN,    KIND_FPMAX,   KIND_FPLEQ,    KIND_FPLT,
                    KIND_FPGEQ,    KIND_FPGT,    KIND_FPEQ,
                    KIND_STR_CONTAINS, KIND_STR_PREFIXOF, KIND_STR_SUFFIXOF):
            return self.sortNode("Bool")
        # sort Int
        elif kind in (KIND_ABS, KIND_DIV, KIND_MOD, KIND_TOI, KIND_STR_LEN,
                      KIND_STR_INDEXOF):
            return self.sortNode("Int")
        # sort Real
        elif kind in (KIND_RDIV, KIND_TOR):
            return self.sortNode("Real")
        # sort String
        elif kind in (KIND_STR_CONCAT, KIND_STR_SUBSTR, KIND_STR_REPLACE):
            return self.sortNode("String")
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
        elif kind == KIND_FPFP:
            return self.fpSortNode(
                    children[1].sort.bw, 1 + children[2].sort.bw)
        elif kind == KIND_FPTOUBV or kind == KIND_FPTOSBV:
            return self.bvSortNode(fun.indices[0])
        # sort defined by children
        elif kind in (KIND_ADD, KIND_MUL, KIND_NEG, KIND_SUB):
            if True in [c.sort == self.sortNode("Real") for c in children]:
                return self.sortNode("Real")
            return children[0].sort

        elif kind in (KIND_NEG,    KIND_ROL,    KIND_ROR,    KIND_BVADD,
                      KIND_BVAND,  KIND_BVASHR, KIND_BVLSHR, KIND_BVMUL,
                      KIND_BVNAND, KIND_BVNEG,  KIND_BVNOR,  KIND_BVNOT,
                      KIND_BVOR,   KIND_BVSDIV, KIND_BVSHL,  KIND_BVSMOD,
                      KIND_BVSREM, KIND_BVSUB,  KIND_BVUDIV, KIND_BVUREM,
                      KIND_BVXNOR, KIND_BVXOR,  KIND_FPABS,  KIND_FPNEG,
                      KIND_FPMIN,  KIND_FPMAX,  KIND_FPREM):
            return children[0].sort

        elif kind in (KIND_FPADD, KIND_FPSUB, KIND_FPMUL, KIND_FPDIV,
                      KIND_FPFMA, KIND_FPSQRT, KIND_FPRTI):
            return children[1].sort
        # special cases
        elif kind == KIND_ITE:
            if True in [c.sort == self.sortNode("Real") for c in children[1:]]:
                return self.sortNode("Real")
            return children[1].sort
        elif kind == KIND_SELECT:
            return children[0].sort.elem_sort
        elif kind == KIND_STORE:
            return children[0].sort
        elif kind == KIND_FPTOFP or kind == KIND_FPTOFPUNS:
            return self.fpSortNode(fun.indices[0], fun.indices[1])
        return fun.sort

    def funAppNode (self, fun, children):
        global g_fun_kinds
        kind = fun.kind
        name = fun.name if not fun.name[0] == '(' else fun.name.split()[1]
        if name in g_fun_kinds:
            if name == '-' and len(children) == 1:
                kind = KIND_NEG
            else:
                kind = name
        sort = self.funApp2sort(fun, kind, children)
        return SMTFunAppNode (fun, kind, sort, children)

    def letFeNode (self, kind, children, svars = None):
        assert (kind in (KIND_LET, KIND_FORALL, KIND_EXISTS))
        assert (kind != KIND_LET or svars == None)
        assert ((kind == KIND_LET and len(children) == 2) or
                (kind in (KIND_FORALL, KIND_EXISTS) and len(children) == 1))
        if kind == KIND_LET:
            assert (self.__assert_varb)
            # flatten children
            ch = []
            ch.extend(children[0])
            ch.append(children[1])
        else:
            assert (self.__assert_svar)
            ch = children
        #self.close_scope()
        return SMTLetNode (ch) if kind == KIND_LET \
                               else SMTForallExistsNode (svars, kind, ch)

    def annNode (self, attributes, sort, children):
        for attrib in attributes:
            attrib = attrib.split()
            if attrib[0] == ":named":
                if len(attrib) != 2:
                    raise DDSMTParseCheckException (
                            "missing attribute value for ':named'")
                name = attrib[1]
                fun = self.find_fun (name, None, self.cur_scope, False)
                if fun:
                    raise DDSMTParseCheckException (
                            "previous declaration of function {} was here" \
                            "".format(name))
                self.cur_scope.funs[name] = SMTNamedAnnNode (
                        attributes, sort, children, name)
                if name in self.funs_cache:
                    self.funs_cache[name].append(self.cur_scope)
                else:
                    self.funs_cache[name] = [self.cur_scope]
                self.anns_cache.append(self.cur_scope.funs[name])
                return self.cur_scope.funs[name]
        return SMTAnnNode (attributes, sort, children)


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

    def add_fresh_declfunCmdNode (self, sort):
        self.scopes.declfun_id += 1
        name = "_substvar_{}_".format(self.scopes.declfun_id)
        while self.find_fun (name, scope=self.scopes, find_nested=False):
            self.scopes.declfun_id = int(name[10:-1]) + 1
            name = "_substvar_{}_".format(self.scopes.declfun_id)
        fun = self.add_fun (name, sort, [], [], [])
        self.scopes.declfun_cmds[name] = SMTCmdNode (KIND_DECLFUN, [fun])
        return fun

    def __assert_varb (self, var_bindings):
        for varb in var_bindings:
            assert (varb.scope == self.cur_scope)
            assert (self.find_fun(varb.var.name, scope=self.cur_scope))
        return True

    def __assert_svar (self, sorted_vars):
        for svar in sorted_vars:
            assert (svar.scope == self.cur_scope)
            assert (self.find_fun(svar.var.name, scope=self.cur_scope))
        return True



class DDSMTParser (SMTParser):

    def __init__ (self):
        super().__init__()
        self.smtformula = SMTFormula()
        self.__set_parse_actions()

    def parse (self, infile):
        try:
            super().parse(infile)
        except SMTParseException as e:
            raise DDSMTParseException (e.msg, e.parser)
        SMTNode.g_smtformula = self.smtformula
        SMTCmdNode.g_smtformula = self.smtformula
        SMTScopeNode.g_smtformula = self.smtformula
        return self.smtformula

    def __set_parse_actions (self):
        sf = self.smtformula
        try:
            self.numeral.set_parse_action (lambda t:
                    sf.constNode (
                        KIND_CONSTN, sf.sortNode ("Int"), int(t[0]), t[0]))

            self.decimal.set_parse_action (lambda t:
                    sf.constNode (
                        KIND_CONSTD, sf.sortNode ("Real"), float(t[0]), t[0]))

            self.hexadecimal.set_parse_action (lambda t:
                    sf.bvConstNode (
                        KIND_CONSTH,
                        len(t[0][2:]) * 4,   # bw
                        int(t[0][2:], 16),   # value
                        t[0].lower()))
                        #t[0])) # TODO debug

            self.binary.set_parse_action (lambda t:
                    sf.bvConstNode (
                        KIND_CONSTB,
                        len(t[0][2:]),       # bw
                        int(t[0][2:], 2),    # value
                        t[0]))

            self.string.set_parse_action (lambda t:
                    sf.constNode (KIND_CONSTS, sf.sortNode ("String"), t[0]))

            self.b_value.set_parse_action (lambda t: sf.boolConstNode (t[0]))
            self.rm_value.set_parse_action (lambda t: sf.rmConstNode (t[0]))

            self.symbol.set_parse_action (lambda t: str(t))
            self.keyword.set_parse_action (lambda t: str(t))

            self.spec_constant.set_parse_action (lambda t: t[0])

            self.s_expr.set_parse_action (lambda t:
                    "({})".format(" ".join([str(to) for to in t[1]])) \
                            if t[0] == SMTParser.LPAR else t[0])

            self.sort.set_parse_action (self.__sort2SMTNode)
            self.defined_sort.set_parse_action (self.__definedSort2SMTNode)
            self.sort_expr.set_parse_action (self.__sortExpr2SMTNode)

            self.attr_value.set_parse_action (lambda t:
                    "({})".format(" ".join([str(to) for to in t[1]])) \
                            if t[0] == SMTParser.LPAR else t[0])

            self.attribute.set_parse_action (lambda t:
                    " ".join([str(to) for to in t]))

            self.qual_ident.set_parse_action (self.__qualIdent2SMTNode)

            self.var_binding.set_parse_action(self.__varBinding2SMTNode)

            self.sorted_var.set_parse_action (lambda t:
                    sf.funNode (
                        str(t[0]), t[1], [], [], [], sf.cur_scope, False))

            self.sorted_qvar.set_parse_action(self.__sortedQVar2SMTNode)

            self.var_bindings.set_parse_action (self.__varBindings)
            self.sorted_qvars.set_parse_action (self.__sortedQVars)

            self.term.set_parse_action (self.__term2SMTNode)

            self.option.set_parse_action (lambda t:
                    " ".join([str(to) for to in t]))

            self.command.set_parse_action (self.__cmd2SMTCmdNode)

        except DDSMTParseCheckException as e:
            raise DDSMTParseException (e.msg, e.parser)

    def open_scope(self):
        self.smtformula.open_scope()

    def close_scope(self):
        self.smtformula.close_scope()

    def __sort2SMTNode (self, t, use_placeholders = False):
        sf = self.smtformula
        try:
            if len(t) == 1:
                t_ident = t[0]
                if t_ident[0] == SMTParser.IDXED:
                    assert (len(t_ident) == 3)
                    assert (len(t_ident[2]) >= 1)
                    assert (isinstance(t_ident[2][0], SMTConstNode))
                    if len(t_ident[2]) == 1:
                        return sf.bvSortNode (t_ident[2][0].value)
                    else:
                        assert (len(t_ident[2]) == 2)
                        assert (isinstance(t_ident[2][1], SMTConstNode))
                        return sf.fpSortNode (
                                t_ident[2][0].value, t_ident[2][1].value)
                else:
                    assert (len(t_ident) == 1)
                    assert (type(t_ident[0]) == str)
                    res = sf.sortNode (
                            t_ident[0], use_placeholders=use_placeholders)
                    s = sf.find_sort_and_scope (str(t_ident))
                    if s and isinstance(s[0], SMTDefinedSortNode):
                        res.defsort = s[0]
            else:
                assert (t[0] == SMTParser.LPAR)
                assert (len(t[1]) == 1)  # only bv and fp sorts are indexed
                t_ident = t[1]
                t_sorts = t[2]
                if str(t_ident) == "Array":
                    assert (len(t_sorts) == 2)
                    assert (isinstance(t_sorts[0], SMTSortNode))
                    assert (isinstance(t_sorts[1], SMTSortNode))
                    return sf.arrSortNode (
                            t_sorts[0], t_sorts[1], use_placeholders)
                assert(sf.find_sort_and_scope (str(t_ident)))
                res = sf.sortNode (
                        "({} {})".format(
                            str(t_ident), " ".join([str(s) for s in t_sorts])),
                        len(t_sorts))
                res.defsort = sf.find_sort_and_scope (str(t_ident))[0]
                assert (isinstance (res.defsort, SMTDefinedSortNode))
            return res
        except DDSMTParseCheckException as e:
            raise DDSMTParseException (e.msg, self)


    def __definedSort2SMTNode (self, t):
        """
        Parse action for sorts that occur in the definition of a defined sort.
        Sorts that are not recognized are interpreted as place holders instead
        of throwing an exception, e.g.,
        'X' in (define-sort S (X) (Array X Bool)).
        """
        return self.__sort2SMTNode (t, True)


    def __sortExpr2SMTNode (self, t):
        sf = self.smtformula
        try:
            if t[0] != SMTParser.LPAR:
                assert (len(t) == 1)
                t_ident = t[0]
                if t_ident[0] == SMTParser.IDXED:
                    assert (len(t_ident) == 3)
                    assert (len(t_ident[2]) >= 1)
                    assert (isinstance(t_ident[2][0], SMTConstNode))
                    if len(t_ident[2]) == 1:
                        return SMTSortExprNode (
                                sf.bvSortNode (t_ident[2][0].value))
                    else:
                        assert (len(t_ident[2]) == 2)
                        assert (isinstance(t_ident[2][1], SMTConstNode))
                        return SMTSortExprNode (sf.fpSortNode (
                            t_ident[2][0].value, t_ident[2][1].value))
                else:
                    assert (len(t_ident) == 1)
                    assert (type(t_ident[0]) == str)
                    return SMTSortExprNode (sf.sortNode (
                        str(t_ident), use_placeholders=True))
            else:
                assert (len(t[1]) == 1)  # none but bv sorts are indexed
                t_ident = t[1]
                t_sorts = t[2]
                if str(t_ident) == "Array":
                    assert (len(t_sorts) == 2)
                    assert (isinstance(t_sorts[0], SMTSortNode))
                    assert (isinstance(t_sorts[1], SMTSortNode))
                    return SMTSortExprNode (
                            sf.arrSortNode (),
                            [str(t_sorts[0]), str(t_sorts[1])])
                sort = sf.sortNode (str(t_ident), use_placeholders=True)
                if len(t_sorts) != sort.nparams:
                    raise DDSMTParseException (
                            "sort '{!s}' expects {} argument(s), {} given"\
                            "".format(sort, sort.nparams, len(t_sorts)),
                            self)
                return SMTSortExprNode (sort, t_sorts)
        except DDSMTParseCheckException as e:
            raise DDSMTParseException (e.msg, self)


    def __qualIdent2SMTNode (self, t):
        sf = self.smtformula
        try:
            if len(t) == 1:
                t_ident = t[0]
                if t_ident[0] == SMTParser.IDXED:
                    if str(t_ident[1]).find("bv") == 0 \
                       and (sf.is_bv_logic() or sf.is_fp_logic):
                           assert (len(t_ident) == 3)
                           assert (len(t_ident[2]) == 1)
                           assert (isinstance(t_ident[2][0], SMTConstNode))
                           bw = t_ident[2][0].value
                           value = int(t_ident[1][2:])
                           return sf.bvConstNode (
                                   KIND_CONSTN,
                                   bw,
                                   value,
                                   "(_ bv{} {})".format(value, bw))
                    elif str(t_ident[1]).find("+zero") == 0 \
                         and sf.is_fp_logic():
                             assert (len(t_ident) == 3)
                             assert (len(t_ident[2]) == 2)
                             assert (isinstance(t_ident[2][0], SMTConstNode))
                             assert (isinstance(t_ident[2][1], SMTConstNode))
                             ew = t_ident[2][0].value
                             sw = t_ident[2][1].value
                             return sf.fpConstNode (
                                     KIND_CONSTFPPZ,
                                     ew,
                                     sw,
                                     "(_ +zero {} {})".format(ew, sw))
                    elif str(t_ident[1]).find("-zero") == 0 \
                         and sf.is_fp_logic():
                             assert (len(t_ident) == 3)
                             assert (len(t_ident[2]) == 2)
                             assert (isinstance(t_ident[2][0], SMTConstNode))
                             assert (isinstance(t_ident[2][1], SMTConstNode))
                             ew = t_ident[2][0].value
                             sw = t_ident[2][1].value
                             return sf.fpConstNode (
                                     KIND_CONSTFPNZ,
                                     ew,
                                     sw,
                                     "(_ -zero {} {})".format(ew, sw))
                    elif str(t_ident[1]).find("+oo") == 0 and sf.is_fp_logic():
                         assert (len(t_ident) == 3)
                         assert (len(t_ident[2]) == 2)
                         assert (isinstance(t_ident[2][0], SMTConstNode))
                         assert (isinstance(t_ident[2][1], SMTConstNode))
                         ew = t_ident[2][0].value
                         sw = t_ident[2][1].value
                         return sf.fpConstNode (
                                 KIND_CONSTFPPI,
                                 ew,
                                 sw,
                                 "(_ +oo {} {})".format(ew, sw))
                    elif str(t_ident[1]).find("-oo") == 0 and sf.is_fp_logic():
                         assert (len(t_ident) == 3)
                         assert (len(t_ident[2]) == 2)
                         assert (isinstance(t_ident[2][0], SMTConstNode))
                         assert (isinstance(t_ident[2][1], SMTConstNode))
                         ew = t_ident[2][0].value
                         sw = t_ident[2][1].value
                         return sf.fpConstNode (
                                 KIND_CONSTFPNI,
                                 ew,
                                 sw,
                                 "(_ -oo {} {})".format(ew, sw))
                    elif str(t_ident[1]).find("NaN") == 0 and sf.is_fp_logic():
                         assert (len(t_ident) == 3)
                         assert (len(t_ident[2]) == 2)
                         assert (isinstance(t_ident[2][0], SMTConstNode))
                         assert (isinstance(t_ident[2][1], SMTConstNode))
                         ew = t_ident[2][0].value
                         sw = t_ident[2][1].value
                         return sf.fpConstNode (
                                 KIND_CONSTFPN,
                                 ew,
                                 sw,
                                 "(_ NaN {} {})".format(ew, sw))
                    else:
                        assert (len(t_ident) > 1)
                        name = "(_ {} {})".format(
                                str(t_ident[1]),
                                " ".join([str(s) for s in t_ident[2]]))
                        return sf.funNode (name, None, [], t_ident[2],
                                           scope=sf.cur_scope)
                else:
                    return sf.funNode (str(t_ident), None, scope=sf.cur_scope)
            else:
                assert (t[0] == SMTParser.AS)
                t_ident = t[1]
                t_sort = t[2]
                if t_ident[0] == SMTParser.IDXED:
                    name = "(_ {} {})".format(
                            str(t_ident[1]),
                            " ".join([str(s) for s in t_ident[2]]))
                    return sf.anFunNode (name, t_sort, t_ident[2])
                else:
                    assert (len(t_ident) == 1)
                    return sf.anFunNode (str(t_ident), t_sort)
        except DDSMTParseCheckException as e:
            raise DDSMTParseException (e.msg, self)

    def __varBinding2SMTNode (self, t):
        sf = self.smtformula
        varb = SMTVarBindNode (
                sf.funNode (
                    str(t[0]), t[1].sort, [], [], [], sf.cur_scope, False),
                [t[1]])
        return varb

    def __sortedQVar2SMTNode (self, t):
        sf = self.smtformula
        svar = SMTSortedQVarNode (
                sf.funNode (str(t[0]), t[1], [], [], [], sf.cur_scope, False))
        return svar

    def __varBindings (self, t):
        assert (len(t) == 1)
        assert (isinstance(t[0], list))
        assert (isinstance(t[0][0], SMTVarBindNode))
        return t[0]

    def __sortedQVars (self, t):
        assert (len(t) == 1)
        assert (isinstance(t[0], list))
        assert (isinstance(t[0][0], SMTSortedQVarNode))
        return t[0]

    def __term2SMTNode (self, t):
        sf = self.smtformula
        try:
            if len(t) == 1:
                return t[0]
            if t[0] == SMTParser.LET:
                assert (len(t) == 3)
                return sf.letFeNode (KIND_LET, [t[1], t[2]])
            elif t[0] in (SMTParser.FORALL, SMTParser.EXISTS):
                assert (len(t) == 3)
                return sf.letFeNode (t[0], [t[2]], t[1])
            elif t[0] == SMTParser.EXCL:
                assert (len(t) == 3)
                return sf.annNode (t[2], t[1].sort, [t[1]])
            else:
                assert (isinstance(t[0], SMTFunNode))
                return sf.funAppNode (t[0], t[1])
        except DDSMTParseCheckException as e:
            raise DDSMTParseException (e.msg, self)

    def __cmd2SMTCmdNode (self, t):
        sf = self.smtformula
        kind = t[0]
        if kind == KIND_SETLOGIC:
            assert (len(t) == 2)
            sf.logic = t[1]
        if kind == KIND_DECLSORT:
            assert (len(t) == 3)
            sort = sf.find_sort (t[1])
            if sort and sort.nparams != t[2].value:
               (line, col) = self.get_pos()
               raise DDSMTParseException (
                        "previous declaration of sort '{}' with '{}' "\
                        "was here".format(t[1], t[2].value),
                        self)
            if not sort:
                sort = sf.sortNode (t[1], t[2].value, sf.cur_scope, True)
            return sf.cmdNode (KIND_DECLSORT, [sort])
        elif kind == KIND_DEFSORT:
            assert (len(t) == 4)
            assert (isinstance (t[3], SMTSortExprNode))
            sort = sf.definedSortNode (
                    t[1], [str(to) for to in t[2]], str(t[3]), sf.cur_scope)
            return sf.cmdNode (
                    KIND_DEFSORT, [sort, [str(to) for to in t[2]], t[3]])
        elif kind == KIND_DECLCONST:
            assert (len(t) == 3)
            fun = sf.find_fun(t[1], t[2], find_nested=False)
            if fun:
                (line, col) = self.get_pos()
                raise DDSMTParseException (
                         "previous declaration of constant/function '{!s}'"\
                         "was here".format(fun),
                         self)
            fun = sf.funNode (t[1], t[2], [], [], [], sf.cur_scope)
            return sf.cmdNode (KIND_DECLCONST, [fun])
        elif kind == KIND_DECLFUN:
            assert (len(t) == 4)
            fun = sf.find_fun(t[1], t[3], find_nested=False)
            if fun:
                (line, col) = self.get_pos()
                raise DDSMTParseException (
                         "previous declaration of function '{!s}'"\
                         "was here".format(fun),
                         self)
            fun = sf.funNode (t[1], t[3], t[2][0:], [], [], sf.cur_scope)
            return sf.cmdNode (KIND_DECLFUN, [fun])
        elif kind == KIND_DEFFUN:
            assert (len(t) == 5)
            sorts = [to.sort for to in t[2]]
            return sf.cmdNode (
                    KIND_DEFFUN,
                    [sf.funNode (t[1], t[3], sorts, [], [t[4]], sf.cur_scope),
                     t[2], t[4]])
        elif kind == KIND_GETVALUE:
            assert (len(t) == 2)
            return sf.cmdNode (KIND_GETVALUE, t[1])
        else:
            return sf.cmdNode (kind, children = t[1:])
