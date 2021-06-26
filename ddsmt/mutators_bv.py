#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in AUTHORS file.
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

from . import nodes
from .nodes import Node
from .smtlib import *
from .mutator_utils import Simplification


class BVNormalizeConstants:
    """Normalize bit-vector constants to be represented using the ``(_ bvN M)``
    notation."""
    def filter(self, node):
        return node.is_leaf() and is_bv_const(node)

    def mutations(self, node):
        val, bw = get_bv_constant_value(node)
        return [Simplification({node.id: Node('_', f'bv{val}', bw)}, [])]

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
            Simplification(
                {
                    node.id:
                    Node(('_', 'zero_extend', get_bv_constant_value(
                        node[1])[1]), node[2])
                }, [])
        ]

    def __str__(self):
        return 'replace concat by zero_extend'


class BVDoubleNegation:
    """Eliminate double bit-vector negations."""
    def filter(self, node):
        if is_bv_not(node) and len(node) > 1 and is_bv_not(node[1]):
            return True
        if is_bv_neg(node) and is_bv_neg(node[1]):
            return True
        return False

    def mutations(self, node):
        return [Simplification({node.id: node[1][1]}, [])]

    def __str__(self):
        return 'eliminate double bit-vector negation'


class BVElimBVComp:
    """Replace equality over ``bvcomp`` and constant with a regular equality.

    For example, ``(= (bvcomp a b) #b1)`` is replaced with ``(= a b)``.
    """
    def filter(self, node):
        return (is_eq(node) and len(node) > 2 and is_bv_const(node[1])
                and get_bv_width(node[1]) == 1
                and any(is_bv_comp(n) for n in node[2:]))

    def mutations(self, node):
        val = get_bv_constant_value(node[1])[0]
        res = []
        for n in node[2:]:
            if is_bv_comp(n):
                if val == 1:
                    res.append(Node('=', *n[1:]))
                else:
                    res.append(Node('not', Node('=', *n[1:])))
            else:
                res.append(Node('=', node[1], n))
        if len(res) == 1:
            return [Simplification({node.id: res[0]}, [])]
        else:
            return [Simplification({node.id: Node('and', *res)}, [])]

    def __str__(self):
        return 'eliminate bvcomp by equality'


class BVEvalExtend:
    """Evaluate a bit-vector ``(sign|zero)_extend`` if it is applied to a
    constant or another ``(sign|zero)_extend``."""
    def filter(self, node):
        return ((is_indexed_operator_app(node, 'zero_extend')
                 or is_indexed_operator_app(node, 'sign_extend'))
                and len(node) > 1 and is_bv_const(node[1]))

    def mutations(self, node):
        (val, width) = get_bv_constant_value(node[1])
        index = get_indices(node[0], node[0][1])[0]
        if is_indexed_operator_app(node, 'sign_extend'):
            val_bin = bin(val)
            if len(val_bin[2:]) == width and val_bin[2] == '1':
                ones = '1' * index
                return [
                    Simplification({node.id: Node(f'#b{ones}{val_bin[2:]}')},
                                   [])
                ]
        return [
            Simplification({node.id: Node('_', f'bv{val}', width + index)}, [])
        ]

    def __str__(self):
        return 'evaluate bit-vector extend'


class BVExtractConstants:
    """Evaluate a bit-vector ``extract`` if it is applied to a constant."""
    def filter(self, node):
        return (is_indexed_operator_app(node, 'extract', 2) and len(node) > 1
                and is_bv_const(node[1]))

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
        return [
            Simplification({node.id: Node(f'#b{constant[upper:lower+1]}')}, [])
        ]

    def __str__(self):
        return 'evaluate bit-vector extract on constant'


class BVExtractZeroExtend:
    """Simplify an ``extract`` of a ``zero_extend`` by pushing the
    ``zero_extend`` to the outside and reducing the bit-width, if possible.
    """
    #Requires that global information has been populated via
    #``collect_information``.
    def filter(self, node):
        return (is_indexed_operator_app(node, 'extract', 2) and len(node) > 1
                and is_indexed_operator_app(node[1], 'zero_extend'))

    def mutations(self, node):
        term = node[1][1]
        bw = get_bv_width(term)
        if bw <= 0:
            return []
        idx = get_indices(node[0], 'extract', 2)
        upper = idx[0]
        lower = idx[1]
        # we extract upper..lower from 0|varwidth
        if lower >= bw:
            # we only extract from the zeroes
            return [
                Simplification({node.id: Node('_', 'bv0', upper - lower + 1)},
                               [])
            ]
        if upper < bw:
            # we only extract from the variable
            return [Simplification({node.id: Node(node[0], term)}, [])]
        # switch extract and zero_extend, reduce lengths of extract and
        # zero_extend
        return [
            Simplification(
                {
                    node.id:
                    Node(('_', 'zero_extend', str(upper - bw + 1)),
                         (('_', 'extract', str(bw - 1), str(lower)), term))
                }, [])
        ]

    def __str__(self):
        return 'simplify bit-vector extract on zero_extend'


class BVIteToBVComp:
    """Replace an ``ite`` of bit-width one with ``bvcomp``."""
    #Requires that global information has been populated via
    #``collect_information``.
    def filter(self, node):
        if not is_operator_app(node, 'ite'):
            return False
        if (not is_operator_app(node[1], '=') or len(node[1]) != 3
                or not is_bv_sort(get_sort(node[1][1]))
                or get_sort(node[1][1]) is None):
            return False
        if not is_bv_const(node[2]) or not is_bv_const(node[3]):
            return False
        if get_bv_constant_value(node[2]) != (1, 1):
            return False
        if get_bv_constant_value(node[3]) != (0, 1):
            return False
        return True

    def mutations(self, node):
        return [
            Simplification({node.id: Node('bvcomp', node[1][1], node[1][2])},
                           [])
        ]

    def __str__(self):
        return 'eliminate ite with bv1 / bv0 cases'


class BVReflexiveNand:
    """Replace a reflexive ``bvnand`` by bitwise negation."""
    def filter(self, node):
        return (is_operator_app(node, 'bvnand') and len(node) == 3
                and node[1] == node[2])

    def mutations(self, node):
        return [Simplification({node.id: Node('bvnot', node[1])}, [])]

    def __str__(self):
        return 'replace bvnand by bvnot'


class BVSimplifyConstants:
    """Replace a bit-vector constant with a simpler constant of smaller value.
    """
    def filter(self, node):
        return (is_bv_const(node)
                and get_bv_constant_value(node)[0] not in [0, 1])

    def mutations(self, node):
        val, width = get_bv_constant_value(node)
        yield Simplification(
            {node.id: Node('#b{{:0>{}b}}'.format(width).format(0))}, [])
        yield Simplification(
            {node.id: Node('#b{{:0>{}b}}'.format(width).format(1))}, [])
        yield from [
            Simplification(
                {node.id: Node('#b{{:0>{}b}}'.format(width).format(v))}, [])
            for v in [val // 32, val // 8, val // 2] if v not in [0, 1]
        ]

    def global_mutations(self, node, input_):
        yield from [
            Simplification({node: simp.substs[node.id]}, [])
            for simp in self.mutations(node)
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
        if not is_operator_app(node, '=') or len(node) != 3:
            return False

        if is_bv_const(node[1]) and get_bv_width(node[1]) == 1:
            return node[2].has_ident() and node[2].get_ident() in self.repl

        return (is_bv_const(node[2]) and get_bv_width(node[2]) == 1
                and node[1].has_ident() and node[1].get_ident() in self.repl)

    def mutations(self, node):
        if is_bv_const(node[1]) and get_bv_width(node[1]) == 1:
            c = node[1]
            n = node[2]
        else:
            c = node[2]
            n = node[1]
        return [
            Simplification(
                {
                    node.id:
                    Node(self.repl[n.get_ident()], *
                         [Node('=', c, d) for d in n[1:]])
                }, [])
        ]

    def __str__(self):
        return 'transform bit-vector to boolean'


class BVZeroExtendPredicate():
    """Eliminate ``zero_extend`` when both operands of an equality, disequality
    or inequality are zero extended.

    For example, transform ``(= ((_ zero_extend 2) a) ((_ zero_extend 2) b))``
    into ``(= a b)``, and ``(= ((_ zero_extend 2) a) ((_ zero_extend 4) b))``
    into ``(= a ((_ zero_extend 2 b)))``.
    """
    def filter(self, node):
        return node.has_ident() and len(node) == 3 and node.get_ident() in [
            '=', 'distinct', 'bvult', 'bvule', 'bvugt', 'bvuge', 'bvslt',
            'bvsle', 'bvsgt', 'bvsge'
        ] and is_indexed_operator_app(node[1], 'zero_extend',
                                      1) and is_indexed_operator_app(
                                          node[2], 'zero_extend', 1)

    def mutations(self, node):
        idx1 = get_indices(node[1][0], 'zero_extend', 1)[0]
        idx2 = get_indices(node[2][0], 'zero_extend', 1)[0]
        if idx1 == idx2:
            return [
                Simplification(
                    {node.id: Node(node.get_ident(), node[1][1], node[2][1])},
                    [])
            ]
        if idx1 > idx2:
            return [
                Simplification(
                    {
                        node.id:
                        Node(
                            node.get_ident(),
                            Node(('_', 'zero_extend', int(idx1) - int(idx2)),
                                 node[1][1]), node[2][1])
                    }, [])
            ]
        return [
            Simplification(
                {
                    node.id:
                    Node(
                        node.get_ident(), node[1][1],
                        Node(('_', 'zero_extend', int(idx2) - int(idx1)),
                             node[2][1]))
                }, [])
        ]

    def __str__(self):
        return 'eliminate zero_extend when both operands of a predicate are \
                zero extended'


class BVReduceBW:
    """Reduce the bit-width of a variable by introducing an ``extract`` and
    ``zero_extend`` on that variable.

    For example, ``(declare-const v (_ BitVec 32))`` is transformed into

    .. code-block:: common-lisp

        (declare-const _v (_BitVec 1))
        (define-fun v () (_ BitVec 32) ((_ zero_extend 31) _v))
    """
    #Requires that global information has been populated via
    #``collect_information``.
    def filter(self, node):
        if not node.has_ident():
            return False
        return (((node.get_ident() == 'declare-const' and len(node) > 2) or
                 (node.get_ident() == 'declare-fun' and len(node) > 3
                  and len(node[2]) == 0)) and get_sort(node[1]) is not None
                and is_bv_sort(get_sort(node[1])))

    def global_mutations(self, node, input_):
        bw = get_bv_width(node[1])
        bws = sorted(set([bw - 1, bw // 2, 2, 1]))
        for b in bws:
            if 0 < b < bw:
                varname = '_{}'.format(node[1])
                var = Node('declare-const', varname, Node('_', 'BitVec', b))
                zext = Node('define-fun', node[1], (), get_sort(node[1]),
                            Node(Node('_', 'zero_extend', bw - b), varname))
                yield Simplification({node.id: zext}, [var])

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
        return (is_operator_app(node, 'define-fun') and len(node[2]) == 0
                and get_sort(node[1]) is not None
                and is_bv_sort(get_sort(node[1]))
                and is_defined_fun(node[1]) and is_indexed_operator_app(
                    get_defined_fun(node[1]), 'zero_extend', 1)
                and is_defined_fun(node[-1][-1]) and is_indexed_operator_app(
                    get_defined_fun(node[-1][-1]), 'zero_extend', 1))

    def mutations(self, node):
        name = node[1]
        nsort = node[3]
        zext = int(get_defined_fun(name)[0][-1].data)
        deffun_name = node[-1][-1]
        deffun_body = get_defined_fun(deffun_name)
        deffun_zext = int(deffun_body[0][-1].data)
        decfun_name = deffun_body[-1]
        return [
            Simplification(
                {
                    node.id:
                    Node('define-fun', name, (), nsort,
                         (('_', 'zero_extend', zext + deffun_zext),
                          decfun_name))
                }, [])
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
        'BVZeroExtendPredicate': 'bv-zeroextend-pred',
        'BVReduceBW': 'bv-reduce-bitwidth',
    }


def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        if node.get_ident() in ['declare-const']:
            if nodes.contains(node[2], is_bv_sort):
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if nodes.contains(node[3], is_bv_sort):
                return True
    return False
