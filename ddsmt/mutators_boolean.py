from .smtlib import *


def is_quantifier(node):
    return has_name(node) and get_name(node) in ['exists', 'forall']


class BoolDeMorgan:
    """Use de Morgans rules to push negations inside."""
    def filter(self, node):
        return is_operator(node, 'not') and (is_operator(node[1], 'and')
                                             or is_operator(node[1], 'or'))

    def mutations(self, node):
        negated = [Node('not', t) for t in node[1][1:]]
        if get_name(node[1]) == 'and':
            return [Node('or', *negated)]
        if get_name(node[1]) == 'or':
            return [Node('and', *negated)]
        return []

    def __str__(self):
        return 'push negation inside'


class BoolDoubleNegation:
    """Eliminate double negations."""
    def filter(self, node):
        return is_operator(node, 'not') and is_operator(node[1], 'not')

    def mutations(self, node):
        return [node[1][1]]

    def __str__(self):
        return 'eliminate double negation'


class BoolEliminateFalseEquality:
    """Replace an equality with :code:`false` by a negation."""
    def filter(self, node):
        return not is_leaf(node) and len(node) == 3 and has_name(
            node) and get_name(node) == '=' and node[1] == 'false'

    def mutations(self, node):
        return [('not', node[2])]

    def __str__(self):
        return 'replace equality with false by negation'


class BoolEliminateImplication:
    """Replace implications by disjunctions."""
    def filter(self, node):
        return has_name(node) and get_name(node) == '=>' and len(node) == 3

    def mutations(self, node):
        return [Node('or', ('not', node[1]), node[2])]

    def __str__(self):
        return 'eliminate implication'


class BoolNegatedQuantifier:
    """Push negations inside quantifiers."""
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


class BoolXORRemoveConstant:
    """Eliminate constant children from :code:`xor`."""
    def filter(self, node):
        return is_operator(node, 'xor')

    def mutations(self, node):
        res = []
        if 'false' in node:
            res.append(Node(*[c for c in node if c != 'false']))
        if 'true' in node:
            res.append(Node(*[c for c in node if c != 'true']))
            res.append(Node('not', (c for c in node if c != 'true')))
        return res

    def __str__(self):
        return 'remove constants from xor'


class BoolXOREliminateBinary:
    """Eliminate binary :code:`xor` by :code:`distinct`."""
    def filter(self, node):
        return is_operator(node, 'xor') and len(node) == 3

    def mutations(self, node):
        return [Node('distinct', node[1], node[2])]

    def __str__(self):
        return 'eliminate binary xor'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'BoolDeMorgan': 'bool-de-morgan',
        'BoolDoubleNegation': 'bool-double-negations',
        'BoolEliminateFalseEquality': 'bool-false-eq',
        'BoolEliminateImplication': 'bool-implications',
        'BoolNegatedQuantifier': 'bool-negate-quants',
        'BoolXOREliminateBinary': 'bool-xor-binary',
        'BoolXORRemoveConstant': 'bool-xor-constants',
    }
