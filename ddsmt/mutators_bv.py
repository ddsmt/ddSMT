#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in the AUTHORS file.
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
# along with ddSMT.  If not, see <https://www.gnu.org/licenses/>.

from .nodes import Node
from .smtlib import *


class BVNormalizeConstants:
    """Normalize bit-vector constants to be represented using the ``(_ bvN M)``
    notation."""
    def filter(self, node):
        return node.is_leaf() and is_bv_const(node)

    def mutations(self, node):
        val, bw = get_bv_constant_value(node)
        return [Node('_', f'bv{val}', bw)]

    def __str__(self):
        return 'normalize bit-vector const'


class BVConcatToZeroExtend:
    """Replace a ``concat`` with zero by ``zero_extend``."""
    def filter(self, node):
        if not node.has_ident() or node.get_ident() != 'concat':
            return False
        if not is_bv_const(node[1]):
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
    """Replace ``bvcomp`` with a constant by a regular equality."""
    def filter(self, node):
        return is_eq(node) \
               and is_bv_const(node[1]) \
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
    """Evaluates a bit-vector ``(sign|zero)_extend`` if it is applied to a
    constant or another ``(sign|zero)_extend``."""
    def filter(self, node):
        return (is_indexed_operator_app(node, 'zero_extend') \
                or is_indexed_operator_app(node, 'sign_extend')) \
               and is_bv_const(node[1])

    def mutations(self, node):
        (val, width) = get_bv_constant_value(node[1])
        index = get_indices(node[0], node[0][1])[0]
        if is_indexed_operator_app(node, 'sign_extend'):
            val_bin = bin(val)
            if len(val_bin[2:]) == width and val_bin[2] == '1':
                ones = '1' * index
                return [Node(f'#b{ones}{val_bin[2:]}')]
        return [Node('_', f'bv{val}', width + index)]

    def __str__(self):
        return 'evaluate bit-vector extend'


class BVExtractConstants:
    """Evaluates a bit-vector ``extract`` if it is applied to a constant."""
    def filter(self, node):
        return is_indexed_operator_app(node, 'extract', 2) \
               and is_bv_const(node[1])

    def mutations(self, node):
        if node[1].has_ident():
            assert node[1][0] == '_'
            val, bw = get_bv_constant_value(node[1])
            constant = bin(val)[2:]
            diff = bw - len(constant)
            if diff > 0:
                constant = f"{'0' * diff}{constant}"
        else:
            assert node[1].data.startswith('#b')
            constant = node[1][2:]
        n = len(constant)
        idx = get_indices(node[0], 'extract', 2)
        upper = n - idx[0] - 1
        lower = n - idx[1] - 1
        return [Node(f'#b{constant[upper:lower+1]}')]

    def __str__(self):
        return 'evaluate bit-vector extract on constant'


class BVExtractZeroExtend:
    """Simplifies an ``extract`` of a ``zero_extend`` by pushing the
    ``zero_extend`` to the outside and reducing the bit-width, if possible.

    Requires that global information has been populated via
    ``collect_information``.
    """
    def filter(self, node):
        return is_indexed_operator_app(node, 'extract', 2) \
               and is_indexed_operator_app(node[1], 'zero_extend')

    def mutations(self, node):
        term = node[1][1]
        bw = get_bv_width(term)
        if bw <= 0: return []
        idx = get_indices(node[0], 'extract', 2)
        upper = idx[0]
        lower = idx[1]
        # we extract upper..lower from 0|varwidth
        if lower >= bw:
            # we only extract from the zeroes
            return [Node('_', 'bv0', upper - lower + 1)]
        if upper < bw:
            # we only extract from the variable
            return [Node(node[0], term)]
        # switch extract and zero_extend, reduce lengths of extract and zero_extend
        return [
            Node(('_', 'zero_extend', str(upper - bw + 1)),
                 (('_', 'extract', str(bw - 1), str(lower)), term))
        ]

    def __str__(self):
        return 'simplify bit-vector extract on zero_extend'


class BVIteToBVComp:
    """Replace an ``ite`` of bit-width one with ``bvcomp``.

    Requires that global information has been populated via
    ``collect_information``.
    """
    def filter(self, node):
        if not is_operator_app(node, 'ite'):
            return False
        if not node[1].has_ident() \
           or node[1].get_ident() != '=' \
           or len(node[1]) != 3 \
           or get_sort(node[1][1]) == None \
           or not is_bv_sort(get_sort(node[1][1])):
            return False
        if not is_bv_const(node[2]) \
           or get_bv_constant_value(node[2]) != (1, 1):
            return False
        if not is_bv_const(node[3]) \
           or get_bv_constant_value(node[3]) != (0, 1):
            return False
        return True

    def mutations(self, node):
        return [Node('bvcomp', node[1][1], node[1][2])]

    def __str__(self):
        return 'eliminate ite with bv1 / bv0 cases'


class BVReflexiveNand:
    """Replace a reflexive nand by bitwise negation."""
    def filter(self, node):
        return node.has_ident() \
               and node.get_ident() == 'bvnand' \
               and len(node) == 3 \
               and node[1] == node[2]

    def mutations(self, node):
        return [Node('bvnot', node[1])]

    def __str__(self):
        return 'replace bvnand by bvnot'


class BVSimplifyConstants:
    """Replace a bit-vector constant by a simpler constant of smaller value."""
    def filter(self, node):
        return is_bv_const(node) \
               and get_bv_constant_value(node)[0] not in [0, 1]

    def mutations(self, node):
        val, width = get_bv_constant_value(node)
        return [
                Node('#b{{:0>{}b}}'.format(width).format(0)),
                Node('#b{{:0>{}b}}'.format(width).format(1)),
               ] +  [
                Node('#b{{:0>{}b}}'.format(width).format(v)) \
                    for v in [val // 32, val // 8, val // 2] if v not in [0, 1]
               ]

    def global_mutations(self, linput, ginput):
        return [
            nodes.substitute(ginput, {linput: rep})
            for rep in self.mutations(linput)
        ]

    def __str__(self):
        return 'simplify bit-vector constant'


class BVTransformToBool:
    """Turn bit-vector operators into Boolean operators.

    For example, transform ``(= bv1 (bvor X Y))`` into ``(or (= bv1 X)
    (= bv1 Y))``.
    """
    repl = {'bvand': 'and', 'bvor': 'or', 'bvxor': 'xor'}

    def filter(self, node):
        return node.has_ident() \
               and node.get_ident() == '=' \
               and len(node) == 3 \
               and all(
                   (is_bv_const(n) and get_bv_width(n) == 1) \
                   or (n.has_ident() and n.get_ident() in self.repl) \
                       for n in node[1:])

    def mutations(self, node):
        if is_bv_const(node[1]) and get_bv_width(node[1]) == 1:
            c = node[1]
            n = node[2]
        else:
            c = node[2]
            n = node[1]
        return [
            Node(self.repl[n.get_ident()], *[Node('=', c, d) for d in n[1:]])
        ]

    def __str__(self):
        return 'transform bit-vector to boolean'


class BVReduceBW:
    """Reduce the bit-width of a variable by introducing an extract and zero
    extension on that variable, e.g.,

    .. code-block:: common-lisp

        (declare-const v (_ BitVec 32)) is transformed into
        (define-fun v () (_ BitVec 32) ((_ zero_extend 31) _v)) with
        (declare-const _v (_BitVec 1))

    This mutator generates all possible mutations for a variable.

    Requires that global information has been populated via
    ``collect_information``.
    """
    def filter(self, node):
        return node.has_ident() \
               and (node.get_ident() == 'declare-const' or \
                   (node.get_ident() == 'declare-fun' and len(node[2]) == 0)) \
               and get_sort(node[1]) is not None \
               and is_bv_sort(get_sort(node[1]))

    def global_mutations(self, linput, ginput):
        idx = ginput.index(linput)
        gin1 = ginput[:idx]
        gin2 = ginput[idx + 1:]
        bw = get_bv_width(linput[1])
        bws = sorted(set([bw - 1, bw // 2, 2, 1]))
        for b in bws:
            if 0 < b < bw:
                varname = '_{}'.format(linput[1])
                var = Node('declare-const', varname, Node('_', 'BitVec', b))
                zext = Node('define-fun', linput[1], (), get_sort(linput[1]),
                            Node(Node('_', 'zero_extend', bw - b), varname))
                yield gin1 + [var] + [zext] + gin2
        return

    def __str__(self):
        return 'reduce bit-width of variable'


class BVMergeReducedBW:
    """Merge previous bit-width reductions of the form.

    .. code-block:: common-lisp

        (declare-const __w (_BitVec MM))
        (define-fun _w () (_ BitVec Y) ((_ zero_extend N) __w))
        (define-fun w () (_ BitVec X) ((_ zero_extend M) _w))``

    into

    .. code-block:: common-lisp

        (declare-const __w (_BitVec MM))
        (define-fun _w () (_ BitVec Y) ((_ zero_extend N) __w))
        (define-fun w () (_ BitVec X) ((_ zero_extend M+N) __w))

    Obsolete ``define-fun`` expressions will be removed later on.
    """
    def filter(self, node):
        return node.has_ident() \
               and node.get_ident() == 'define-fun' \
               and len(node[2]) == 0 \
               and get_sort(node[1]) is not None \
               and is_bv_sort(get_sort(node[1])) \
               and is_indexed_operator_app(
                       get_defined_fun(node[1]), 'zero_extend', 1) \
               and is_defined_fun(node[-1][-1]) \
               and is_indexed_operator_app(
                       get_defined_fun(node[-1][-1]), 'zero_extend', 1)

    def mutations(self, node):
        name = node[1]
        nsort = node[3]
        zext = int(get_defined_fun(name)[0][-1].data)
        deffun_name = node[-1][-1]
        deffun_body = get_defined_fun(deffun_name)
        deffun_zext = int(deffun_body[0][-1].data)
        decfun_name = deffun_body[-1]
        return [
            Node('define-fun', name, (), nsort,
                 (('_', 'zero_extend', zext + deffun_zext), decfun_name))
        ]

    def __str__(self):
        return 'merge previous bit-width reductions'


def get_mutators():
    """Return mapping from mutator class names to the name of their config
    options."""
    return {
        'BVNormalizeConstants': 'bv-norm-constants',
        'BVConcatToZeroExtend': 'bv-zero-concat',
        'BVDoubleNegation': 'bv-double-negation',
        'BVElimBVComp': 'bv-elim-bvcomp',
        'BVEvalExtend': 'bv-eval-extend',
        'BVExtractConstants': 'bv-extract-constants',
        'BVExtractZeroExtend': 'bv-extract-zeroextend',
        'BVMergeReducedBW': 'bv-merge-reduced-bw',
        'BVIteToBVComp': 'bv-ite-to-bvcomp',
        'BVReflexiveNand': 'bv-reflexive-nand',
        'BVSimplifyConstants': 'bv-simp-constants',
        'BVTransformToBool': 'bv-to-bool',
        'BVReduceBW': 'bv-reduce-bitwidth',
    }


def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        if node.get_ident() in ['declare-const']:
            if is_bv_sort(node[2]):
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if is_bv_sort(node[3]):
                return True
    return False
