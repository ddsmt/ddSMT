from .nodes import Node
from . import options
from .smtlib import *

NAME = 'bitvector'
MUTATORS = [
    'bv-constants', 'bv-eval-extract', 'bv-ite-to-bvcomp', 'bv-zero-concat'
]


def is_bv_not(node):
    """Checks whether :code:`node` is a bit-vector negation."""
    return has_name(node) and get_name(node) == 'bvnot'


def get_bv_constant_value(node):
    """Assume that node is a bit-vector constant and return :code:`(value, bit-
    width)`."""
    assert is_bv_constant(node)
    if node.is_leaf():
        if node.data.startswith('#b'):
            return (int(node[2:], 2), len(node[2:]))
        if node.data.startswith('#x'):
            return (int(node[2:], 16), len(node[2:]) * 4)
        assert False
    return (int(node[1][2:]), node[2])


def possible_bv_widths_imp(definition):
    """Try to guess a list of bit-widths that this node may have."""
    if is_bv_type(definition):
        return [definition[2]]
    if not is_leaf(definition):
        return [w for arg in definition for w in possible_bv_widths_imp(arg)]
    return []


def possible_bv_widths(node):
    """Return the bit-widths this node may have.

    First try to get the type of the given node, then just collect bit-
    width that show up elsewhere in the input.
    """
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
        return [
            Node(('_', 'zero_extend', get_bv_constant_value(node[1])[1]),
                 node[2])
        ]

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
            Node('=', *node[2][1:]),
            Node('not', Node('=', *node[2][1:])),
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
            return [Node('_', f'bv{val}', str(width + node[0][2]))]
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
        return [Node('_', 'bv{constant}', str(upper - lower + 1))]

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
        return [Node('bvcomp', node[1][1], node[1][2])]

    def __str__(self):
        return 'eliminate ite with bv1 / bv0 cases'


class BVReflexiveNand:
    """Replace a reflexive nand by bitwise negation."""
    def filter(self, node):
        return has_name(node) and get_name(node) == 'bvnand'

    def mutations(self, node):
        if len(node) == 3 and node[1] == node[2]:
            return [Node('bvnot', node[1])]
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
            Node('#b{{:0>{}b}}'.format(width).format(v))
            for v in [val // 32, val // 8, val // 2]
        ]

    def global_mutations(self, linput, ginput):
        return [
            nodes.substitute(ginput, {linput: rep})
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
            return [
                Node(repl[get_name(node[2])],
                     *[Node('=', node[1], c) for c in node[2][1:]])
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
               and get_type(node[1]) is not None \
               and is_bv_type(get_type(node[1]))

    def global_mutations(self, linput, ginput):
        idx = ginput.index(linput)
        gin1 = ginput[:idx]
        gin2 = ginput[idx + 1:]

        res = []
        bw = get_bv_width(linput[1])
        for b in range(1, bw):
            varname = '_{}'.format(linput[1])
            var = Node('declare-const', varname, Node('_', 'BitVec', str(b)))
            zext = Node('define-fun', linput[1], (), get_type(linput[1]),
                        Node(Node('_', 'zero_extend', str(bw - b)), varname))
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
               and get_type(node[1]) is not None \
               and is_bv_type(get_type(node[1])) \
               and is_indexed_operator(
                       get_defined_function(node[1]), 'zero_extend', 1) \
               and is_defined_function(node[-1][-1]) \
               and is_indexed_operator(
                       get_defined_function(node[-1][-1]), 'zero_extend', 1)

    def mutations(self, node):
        name = node[1]
        zext = int(get_defined_function(name)[0][-1].data)
        deffun_name = node[-1][-1]
        deffun_body = get_defined_function(deffun_name)
        deffun_zext = int(deffun_body[0][-1].data)
        decfun_name = deffun_body[-1]
        return [
            Node('define-fun', name, (),
                 ('zero_extend', str(zext + deffun_zext), decfun_name))
        ]

    def global_mutations(self, linput, ginput):
        return [
            nodes.substitute(ginput, {linput: rep})
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


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    if not options.args().mutator_bitvector:
        return {}
    return {
        'BVDoubleNegation': 'dummy',
        'BVReflexiveNand': 'dummy',
        'BVSimplifyConstant': 'bv_constants',
        'BVElimBVComp': 'bv_elim_bvcomp',
        'BVExtractConstants': 'bv_eval_extract',
        'BVEvalExtend': 'bv_eval_extend',
        'BVOneZeroITE': 'bv_ite_to_bvcomp',
        'BVTransformToBool': 'bv_to_bool',
        'BVConcatToZeroExtend': 'bv_zero_concat',
        'BVReduceBW': 'dummy',
        'BVMergeReducedBW': 'dummy',
    }
