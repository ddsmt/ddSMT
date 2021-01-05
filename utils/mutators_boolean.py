from . import options
from .smtlib import *

NAME = 'boolean'
MUTATORS = [
    'de-morgan', 'double-negations', 'eliminate-false-eq',
    'eliminate-implications', 'negate-quant'
]


def is_quantifier(node):
    return has_name(node) and get_name(node) in ['exists', 'forall']


class DeMorgan:
    """Uses de Morgans rules to push negations inside."""
    def filter(self, node):
        return is_operator(node, 'not') and is_operator(node[1], 'not')

    def mutations(self, node):
        if get_name(node[1]) == 'and':
            res = [['not', t] for t in node[1][1:]]
            return [['or', *res]]
        if get_name(node[1]) == 'or':
            res = [['not', t] for t in node[1][1:]]
            return [['and', *res]]
        return []

    def __str__(self):
        return 'push negation inside'


class DoubleNegation:
    """Elimination double negations."""
    def filter(self, node):
        return is_operator(node, 'not') and is_operator(node[1], 'not')

    def mutations(self, node):
        return [node[1][1]]

    def __str__(self):
        return 'eliminate double negation'


class EliminateFalseEquality:
    """Replaces an equality with :code:`false` by a negation."""
    def filter(self, node):
        return not is_leaf(node) and len(node) == 3 and has_name(
            node) and get_name(node) == '=' and node[1] == 'false'

    def mutations(self, node):
        return [['not', node[2]]]

    def __str__(self):
        return 'replace equality with false by negation'


class EliminateImplications:
    """Replaces implications by disjunctions."""
    def filter(self, node):
        return has_name(node) and get_name(node) == '=>' and len(node) == 3

    def mutations(self, node):
        return [['or', ['not', node[1]], node[2]]]

    def __str__(self):
        return 'eliminate implication'


class NegatedQuantifiers:
    """Pushes negation inside quantifiers."""
    def filter(self, node):
        return is_operator(node, 'not') and is_quantifier(node[1])

    def mutations(self, node):
        if get_name(node[1]) == 'exists':
            return [['forall', node[1][1], ['not', node[1][2]]]]
        if get_name(node[1]) == 'forall':
            return [['exists', node[1][1], ['not', node[1][2]]]]
        return []

    def __str__(self):
        return 'push negation inside of quantifier'


class XORRemoveConstants:
    """Eliminates constant children from :code:`xor`."""
    def filter(self, node):
        return has_name(node) and get_name(node) == 'xor'

    def mutations(self, node):
        res = []
        if 'false' in node:
            res.append([c for c in node if c != 'false'])
        if 'true' in node:
            res.append([c for c in node if c != 'true'])
            res.append(['not', [c for c in node if c != 'true']])
        return res

    def __str__(self):
        return 'remove constants from xor'


class XOREliminateBinary:
    """Eliminates binary :code:`xor` by :code:`distinct`."""
    def filter(self, node):
        return has_name(node) and get_name(node) == 'xor' and len(node) == 3

    def mutations(self, node):
        return [['distinct', node[1], node[2]]]

    def __str__(self):
        return 'eliminate binary xor'


def collect_mutator_options(argparser):
    options.add_mutator_argument(argparser, NAME, True, 'boolean mutators')
    options.add_mutator_argument(argparser, 'de-morgan', True,
                                 'apply de Morgan to push negations inside')
    options.add_mutator_argument(argparser, 'double-negations', True,
                                 'eliminate double negations')
    options.add_mutator_argument(argparser, 'eliminate-binary-xor', True,
                                 'eliminate binary xor')
    options.add_mutator_argument(argparser, 'eliminate-false-eq', True,
                                 'eliminate equalities with false')
    options.add_mutator_argument(argparser, 'eliminate-implications', True,
                                 'eliminate implications')
    options.add_mutator_argument(argparser, 'negated-quant', True,
                                 'push negations inside quantifiers')
    options.add_mutator_argument(argparser, 'remove-xor-constants', True,
                                 'remove constants from xor')


def collect_mutators(args):
    res = []
    if args.mutator_boolean:
        if args.mutator_de_morgan:
            res.append(DeMorgan())
        if args.mutator_double_negations:
            res.append(DoubleNegation())
        if args.mutator_eliminate_binary_xor:
            res.append(XOREliminateBinary())
        if args.mutator_eliminate_false_eq:
            res.append(EliminateFalseEquality())
        if args.mutator_eliminate_implications:
            res.append(EliminateImplications())
        if args.mutator_negated_quant:
            res.append(NegatedQuantifiers())
        if args.mutator_remove_xor_constants:
            res.append(XORRemoveConstants())
    return res
