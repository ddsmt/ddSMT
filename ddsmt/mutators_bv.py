from .nodes import Node
from . import options
from .smtlib import *


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
        return (is_bv_not(node) and is_bv_not(node[1])) \
               or (is_bv_neg(node) and is_bv_neg(node[1]))

    def mutations(self, node):
        return [node[1][1]]

    def __str__(self):
        return 'eliminate double bit-vector negation'


class BVElimBVComp:
    """Replace bvcomp by a regular equality."""
    def filter(self, node):
        return is_eq(node) \
               and is_bv_constant(node[1]) \
               and get_bv_width(node[1]) == 1 \
               and any(is_bv_comp(n) for n in node[2:])

    def mutations(self, node):
        val = get_bv_constant_value(node[1])[0]
        res = []
        for n in node[2:]:
            if is_bv_comp(n):
                res.append(Node('=', *n[1:])) if val == 1 else \
                res.append(Node('not', Node('=', *n[1:])))
            else:
                res.append(Node('=', node[1], n))
        res = res if len(res) == 1 else [Node('and', *res)]
        return res

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
            return [Node('_', f'bv{val}', width + node[0][2])]
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
        return [Node('_', 'bv{constant}', upper - lower + 1)]

    def __str__(self):
        return 'evaluate bit-vector extract on constant'


class BVExtractZeroExtend:
    """Simplifies an :code:`extract` of a :code:`zero_extend` by pushing the
    :code:`zero_extend` to the outside and reducing the bit-widths, if
    possible."""
    def filter(self, node):
        return is_indexed_operator(node[0], 'extract', 2) \
               and is_indexed_operator(node[1], 'zero_extend')

    def mutations(self, node):
        var = node[1][1]
        varwidth = get_bv_width(var)
        upper = int(node[0][2].data)
        lower = int(node[0][3].data)
        # we extract upper..lower from 0|varwidth
        if lower >= varwidth:
            # we only extract from the zeroes
            return [Node('_', 'bv0', upper - lower + 1)]
        if upper < varwidth:
            # we only extract from the variable
            return [Node(node[0], var)]
        # switch extract and zero_extend, reduce lengths of extract and zero_extend
        return [
            Node(('_', 'zero_extend', str(upper - varwidth + 1)),
                 (('_', 'extract', str(varwidth - 1), str(lower)), var))
        ]

    def __str__(self):
        return 'simplify bit-vector extract on zero_extend'


class BVOneZeroITE:
    """Replace an :code:`ite` with :code:`bv1`/:code:`bv0` cases by
    :code:`bvcomp`."""
    def filter(self, node):
        if not is_operator(node, 'ite'):
            return False
        if not has_name(node[1]) \
           or get_name(node[1]) != '=' \
           or len(node[1]) != 3:
            return False
        if not is_bv_constant(node[2]) \
           or get_bv_constant_value(node[2]) != (1, '1'):
            return False
        if not is_bv_constant(node[3]) \
           or get_bv_constant_value(node[3]) != (0, '1'):
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
        return is_bv_constant(node) \
               and get_bv_constant_value(node)[0] not in [0, 1]

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
        return has_name(node) \
               and get_name(node) == '=' \
               and is_bv_constant(node[1]) \
               and get_bv_width(node[1]) == 1

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
            var = Node('declare-const', varname, Node('_', 'BitVec', b))
            zext = Node('define-fun', linput[1], (), get_type(linput[1]),
                        Node(Node('_', 'zero_extend', bw - b), varname))
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
                       get_defined_function(node[1])[0], 'zero_extend', 1) \
               and is_defined_function(node[-1][-1])[0] \
               and is_indexed_operator(
                       get_defined_function(node[-1][-1])[0], 'zero_extend', 1)

    def mutations(self, node):
        name = node[1]
        ntype = node[3]
        zext = int(get_defined_function(name)[0][-1].data)
        deffun_name = node[-1][-1]
        deffun_body = get_defined_function(deffun_name)
        deffun_zext = int(deffun_body[0][-1].data)
        decfun_name = deffun_body[-1]
        return [
            Node('define-fun', name, (), ntype,
                 (('_', 'zero_extend', zext + deffun_zext), decfun_name))
        ]

    def __str__(self):
        return 'merge previous bit-width reductions'


def get_mutators():
    """Return mapping from mutator class names to the name of their config
    options."""
    return {
        'BVConcatToZeroExtend': 'bv-zero-concat',
        'BVDoubleNegation': 'bv-double-negation',
        'BVElimBVComp': 'bv-elim-bvcomp',
        'BVEvalExtend': 'bv-eval-extend',
        'BVExtractConstants': 'bv-eval-extract',
        'BVExtractZeroExtend': 'bv-extract-zeroextend',
        'BVMergeReducedBW': 'bv-merge-reduced-bw',
        'BVOneZeroITE': 'bv-ite-to-bvcomp',
        'BVReflexiveNand': 'bv-reflexive-nand',
        'BVSimplifyConstant': 'bv-constants',
        'BVTransformToBool': 'bv-to-bool',
        'BVReduceBW': 'bv-reduce-bitwidth',
    }
