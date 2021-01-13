from .smtlib import *


def is_quantifier(node):
    return has_name(node) and get_name(node) in ['exists', 'forall']


class DeMorgan:
    """Uses de Morgans rules to push negations inside."""
    def filter(self, node):
        return is_operator(node, 'not') and is_operator(node[1], 'not')

    def mutations(self, node):
        if get_name(node[1]) == 'and':
            res = [('not', t) for t in node[1][1:]]
            return [('or', *res)]
        if get_name(node[1]) == 'or':
            res = [('not', t) for t in node[1][1:]]
            return [('and', *res)]
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
        return [('not', node[2])]

    def __str__(self):
        return 'replace equality with false by negation'


class EliminateImplications:
    """Replaces implications by disjunctions."""
    def filter(self, node):
        return has_name(node) and get_name(node) == '=>' and len(node) == 3

    def mutations(self, node):
        return [Node('or', ('not', node[1]), node[2])]

    def __str__(self):
        return 'eliminate implication'


class NegatedQuantifiers:
    """Pushes negation inside quantifiers."""
    def filter(self, node):
        return is_operator(node, 'not') and is_quantifier(node[1])

    def mutations(self, node):
        if get_name(node[1]) == 'exists':
            return [Node('forall', node[1][1], ('not', node[1][2]))]
        if get_name(node[1]) == 'forall':
            return [Node('exists', node[1][1], ('not', node[1][2]))]
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
            res.append(Node(*[c for c in node if c != 'false']))
        if 'true' in node:
            res.append(Node(*[c for c in node if c != 'true']))
            res.append(Node('not', tuple(c for c in node if c != 'true')))
        return res

    def __str__(self):
        return 'remove constants from xor'


class XOREliminateBinary:
    """Eliminates binary :code:`xor` by :code:`distinct`."""
    def filter(self, node):
        return has_name(node) and get_name(node) == 'xor' and len(node) == 3

    def mutations(self, node):
        return [('distinct', node[1], node[2])]

    def __str__(self):
        return 'eliminate binary xor'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'DeMorgan': 'de-morgan',
        'DoubleNegation': 'double-negations',
        'EliminateFalseEquality': 'eliminate-false-eq',
        'EliminateImplications': 'eliminate-implications',
        'NegatedQuantifiers': 'negated-quant',
        'XOREliminateBinary': 'eliminate-binary-xor',
        'XORRemoveConstants': 'remove-xor-constants',
    }
