from . import options
from . import subst
from .smtlib import *

NAME = 'bitvector'
MUTATORS = [
    'bv-constants', 'bv-eval-extract', 'bv-ite-to-bvcomp', 'bv-zero-concat'
]


def is_bv_not(node):
    """Checks whether :code:`node` is a bit-vector negation."""
    return has_name(node) and get_name(node) == 'bvnot'


def get_bv_constant_value(node):
    assert is_bv_constant(node)
    if is_leaf(node):
        if node.startswith('#b'):
            return (int(node[2:], 2), len(node[2:]))
        if node.startswith('#x'):
            return (int(node[2:], 16), len(node[2:]) * 4)
        assert False
    return (int(node[1][2:]), node[2])


def possible_bv_widths_imp(definition):
    if is_bv_type(definition):
        return [definition[2]]
    if not is_leaf(definition):
        return [w for arg in definition for w in possible_bv_widths_imp(arg)]
    return []


def possible_bv_widths(node):
    bvtype = get_type(node)
    if bvtype:
        assert is_bv_type(bvtype)
        return [bvtype[2]]
    widths = set()
    for bvtype in get_variable_info().values():
        for wid in possible_bv_widths_imp(bvtype):
            widths.add(wid)
    return list(widths)


class BVConcatToZeroExtend:
    """Replace a :code:`concat` with zero by :code:`zero_extend`."""
    def filter(self, node):
        if not has_name(node) or get_name(node) != 'concat':
            return False
        if not is_bv_constant(node[1]):
            return False
        return get_bv_constant_value(node[1])[0] == 0

    def mutations(self, node):
        return [(('_', 'zero_extend', get_bv_constant_value(node[1])[1]),
                 node[2])]

    def __str__(self):
        return 'replace concat by zero_extend'


class BVDoubleNegation:
    """Elimination double bit-vector negations."""
    def filter(self, node):
        return is_bv_not(node) and is_bv_not(node[1])

    def mutations(self, node):
        return [node[1][1]]

    def __str__(self):
        return 'eliminate double bit-vector negation'


class BVElimBVComp:
    """Replace bvcomp by a regular equality."""
    def filter(self, node):
        return has_name(node) and get_name(node) == '=' and is_bv_constant(
            node[1]) and has_name(node[2]) and get_name(node[2]) == 'bvcomp'

    def mutations(self, node):
        return [
            ['='] + node[2][1:],
            ['not', ['='] + node[2][1:]],
        ]

    def __str__(self):
        return 'eliminate bvcomp by equality'


class BVEvalExtend:
    """Evaluates a bit-vector :code:`(sign|zero)_extend` if it is applied to a
    constant or another :code:`(sign|zero)_extend`."""
    def filter(self, node):
        return is_indexed_operator(node, 'extend')

    def mutations(self, node):
        if is_bv_constant(node[1]):
            (val, width) = get_bv_constant_value(node[1])
            return [['_', 'bv{}'.format(val), str(width + node[0][2])]]
        return []

    def __str__(self):
        return 'evaluate bit-vector extend'


class BVExtractConstants:
    """Evaluates a bit-vector :code:`extract` if it is applied to a
    constant."""
    def filter(self, node):
        return is_indexed_operator(node, 'extract') and is_bv_constant(node[1])

    def mutations(self, node):
        upper = int(node[0][2])
        lower = int(node[0][3])
        constant = get_bv_constant_value(node[1])[0]
        constant = constant % (2**(upper + 1))
        constant -= constant % (2**lower)
        return [['_', 'bv{}'.format(constant), str(upper - lower + 1)]]

    def __str__(self):
        return 'evaluate bit-vector extract on constant'


class BVOneZeroITE:
    """Replace an :code:`ite` with :code:`bv1`/:code:`bv0` cases by
    :code:`bvcomp`."""
    def filter(self, node):
        if not is_operator(node, 'ite'):
            return False
        if not has_name(
                node[1]) or get_name(node[1]) != '=' or len(node[1]) != 3:
            return False
        if not is_bv_constant(
                node[2]) or get_bv_constant_value(node[2]) != (1, '1'):
            return False
        if not is_bv_constant(
                node[3]) or get_bv_constant_value(node[3]) != (0, '1'):
            return False
        return True

    def mutations(self, node):
        return [['bvcomp', node[1][1], node[1][2]]]

    def __str__(self):
        return 'eliminate ite with bv1 / bv0 cases'


class BVReflexiveNand:
    """Replace a reflexive nand by bitwise negation."""
    def filter(self, node):
        return has_name(node) and get_name(node) == 'bvnand'

    def mutations(self, node):
        if len(node) == 3 and node[1] == node[2]:
            return [['bvnot', node[1]]]
        return []

    def __str__(self):
        return 'replace bvnand by bvnot'


class BVSimplifyConstant:
    """Replace a constant by a simpler version (smaller value)."""
    def filter(self, node):
        return is_bv_constant(node) and get_bv_constant_value(node)[0] not in [
            0, 1
        ]

    def mutations(self, node):
        val, width = get_bv_constant_value(node)
        return [
            '#b{{:0>{}b}}'.format(width).format(v)
            for v in [val // 32, val // 8, val // 2]
        ]

    def global_mutations(self, linput, ginput):
        return [
            subst.subs_global(ginput, {linput: rep})
            for rep in self.mutations(linput)
        ]

    def __str__(self):
        return 'simplify bit-vector constant'


class BVTransformToBool:
    """Turn BV constructs into Boolean constructs."""
    def filter(self, node):
        return has_name(node) and get_name(node) == '=' and is_bv_constant(
            node[1]) and get_bv_width(node[1]) == 1

    def mutations(self, node):
        repl = {'bvand': 'and', 'bvor': 'or', 'bvxor': 'xor'}
        if has_name(node[2]) and get_name(node[2]) in repl:
            return [(repl[get_name(node[2])], ) + tuple([('=', node[1], c)
                                                         for c in node[2][1:]])
                    ]
        return []

    def __str__(self):
        return 'transform bit-vector to boolean'


class BVReduceBW:
    """Reduce the bit-width of a variable by introducing an extract and zero
    extension on that variable, e.g., (declare-const v (_ BitVec 32)) is
    transformed into (define-fun v () (_ BitVec 32) ((_ zero_extend 31) _v))
    with (declare-const _v (_BitVec 1)) This mutator generates all possible
    mutations for a variable."""
    def filter(self, node):
        return has_name(node) \
               and (get_name(node) == 'declare-const' or \
                   (get_name(node) == 'declare-fun' and len(node[2]) == 0)) \
               and has_type(node[1]) \
               and is_bv_type(get_type(node[1]))

    def global_mutations(self, linput, ginput):
        idx = ginput.index(linput)
        gin1 = ginput[:idx]
        gin2 = ginput[idx + 1:]

        res = []
        bw = get_bv_width(linput[1])
        for b in range(1, bw):
            varname = '_{}'.format(linput[1])
            var = ('declare-const', varname, ('_', 'BitVec', str(b)))
            zext = ('define-fun', linput[1], (), get_type(linput[1]),
                    (('_', 'zero_extend', str(bw - b)), varname))
            res.append(gin1 + [var] + [zext] + gin2)
        return res

    def __str__(self):
        return 'reduce bit-width of variable'


class BVMergeReducedBW:
    """Merge previous bit-width reductions of the form (declare-const __w
    (_BitVec MM)) (define-fun _w () (_ BitVec Y) ((_ zero_extend N) __w))
    (define-fun w () (_ BitVec X) ((_ zero_extend M) _w)) into (declare-const
    __w (_BitVec MM)) (define-fun _w () (_ BitVec Y) ((_ zero_extend N) __w))
    (define-fun w () (_ BitVec X) ((_ zero_extend M+N) __w)) Obsolete define-
    fun expressions will be removed later on."""
    def filter(self, node):
        return has_name(node) \
               and get_name(node) == 'define-fun' \
               and len(node[2]) == 0 \
               and has_type(node[1]) \
               and is_bv_type(get_type(node[1])) \
               and is_indexed_operator(
                       get_defined_function(node[1]), 'zero_extend', 1) \
               and is_defined_function(node[-1][-1]) \
               and is_indexed_operator(
                       get_defined_function(node[-1][-1]), 'zero_extend', 1)

    def mutations(self, node):
        name = node[1]
        zext = int(get_defined_function(name)[0][-1])
        deffun_name = node[-1][-1]
        deffun_body = get_defined_function(deffun_name)
        deffun_zext = int(deffun_body[0][-1])
        decfun_name = deffun_body[-1]
        return [('define-fun', name, (),
                 ('zero_extend', str(zext + deffun_zext), decfun_name))]

    def global_mutations(self, linput, ginput):
        return [
            subst.subs_global(ginput, {linput: rep})
            for rep in self.mutations(linput)
        ]

    def __str__(self):
        return 'merge previous bit-width reductions'


def collect_mutator_options(argparser):
    options.add_mutator_argument(argparser, NAME, True, 'bitvector mutators')
    options.add_mutator_argument(argparser, 'bv-constants', True,
                                 'replaces constants by simpler ones')
    options.add_mutator_argument(argparser, 'bv-elim-bvcomp', True,
                                 'replace bvcomp by a regular equality')
    options.add_mutator_argument(argparser, 'bv-eval-extract', True,
                                 'evaluate bit-vector extract on constants')
    options.add_mutator_argument(argparser, 'bv-eval-extend', True,
                                 'evaluate bit-vector extend on constants')
    options.add_mutator_argument(argparser, 'bv-ite-to-bvcomp', True,
                                 'replaces bv1/bv0 ites by bvcomp')
    options.add_mutator_argument(
        argparser, 'bv-to-bool', True,
        'replace bvor/bvand by regular Boolean operators')
    options.add_mutator_argument(argparser, 'bv-zero-concat', True,
                                 'replaces concat with zero by zero_extend')


def collect_mutators(args):
    res = []
    if args.mutator_bitvector:
        res.append(BVDoubleNegation())
        res.append(BVReflexiveNand())
        if args.mutator_bv_constants:
            res.append(BVSimplifyConstant())
        if args.mutator_bv_elim_bvcomp:
            res.append(BVElimBVComp())
        if args.mutator_bv_eval_extract:
            res.append(BVExtractConstants())
        if args.mutator_bv_eval_extend:
            res.append(BVEvalExtend())
        if args.mutator_bv_ite_to_bvcomp:
            res.append(BVOneZeroITE())
        if args.mutator_bv_to_bool:
            res.append(BVTransformToBool())
        if args.mutator_bv_zero_concat:
            res.append(BVConcatToZeroExtend())
        res.append(BVReduceBW())
        res.append(BVMergeReducedBW())
    return res
