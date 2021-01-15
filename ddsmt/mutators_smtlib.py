import re

from .smtlib import *


class CheckSatAssuming:
    """Replaces a :code:`check-sat-assuming` by a regular :code:`check-sat`."""
    def filter(self, node):
        return has_ident(node) and get_ident(node) == 'check-sat-assuming'

    def mutations(self, node):
        return [Node('check-sat')]

    def __str__(self):
        return 'substitute check-sat-assuming by check-sat'


class EliminateDistinct:
    """Replaces distinct by a negated equality."""
    def filter(self, node):
        return has_ident(node) and get_ident(node) == 'distinct'

    def mutations(self, node):
        return [Node('not', tuple(['='] + list(node[1:])))]

    def __str__(self):
        return 'eliminate distinct'


class EliminateVariable:
    """Eliminate a variable using an equality.

    Tries to globally replace every leaf node from an equality by every
    other node from the same equality.
    """
    def filter(self, node):
        return is_eq(node) and any(map(lambda n: n.is_leaf(), node[1:]))

    def global_mutations(self, linput, ginput):
        res = []
        ops = linput[1:]
        targets = list(filter(lambda n: n.is_leaf(), ops))
        for t in targets:
            for c in ops:
                if c == t:
                    continue
                res.append(substitute_vars_except_decl(ginput, {t: c}))
        return res

    def __str__(self):
        return 'eliminate variable from equality'


class InlineDefinedFuns:
    """Explicitly inlines a defined function."""
    def filter(self, node):
        return is_defined_function(node)

    def mutations(self, node):
        return [get_defined_function(node)]

    def __str__(self):
        return 'inline defined function'


class LetElimination:
    """Substitutes a :code:`let` expression with its body."""
    def filter(self, node):
        return is_operator_app(node, 'let')

    def mutations(self, node):
        return [node[2]]

    def __str__(self):
        return 'eliminate let binder'


class LetSubstitution:
    """Substitutes a variable bound by a :code:`let` binder into the nested
    term."""
    def filter(self, node):
        return is_operator_app(node, 'let')

    def mutations(self, node):
        res = []
        for var in node[1]:
            if any(n == var[0] for n in nodes.dfs(node[2])):
                subs = nodes.substitute(node[2], {var[0]: var[1]})
                res.append(Node(node[0], node[1], subs))
        return res

    def __str__(self):
        return 'substitute variable into let body'


class PushPopRemoval:
    """Removes matching :code:`(push)(pop)` pairs.

    First tries successive pairs, distant ones later.
    """
    def global_mutations(self, linput, ginput):
        if linput != ginput[0]:
            return []
        res = []
        pairs = []
        # identify (push) / (pop) pairs
        stack = []
        for i in range(len(ginput)):
            if ginput[i] == ('push', ):
                stack.append(i)
            if ginput[i] == ('pop', ) and stack != []:
                pairs.append((stack[-1], i))
                stack.pop()
        # remove directly successive pairs
        for p in pairs:
            if p[0] + 1 == p[1]:
                i = p[0]
                res.append(ginput[:i] + ginput[i + 2:])
        if res != []:
            return res
        # remove non-successive pairs
        for p in pairs:
            r = ginput[:p[0]] + ginput[p[0] + 1:p[1]] + ginput[p[1] + 1:]
            res.append(r)
        return res

    def __str__(self):
        return 'remove push-pop pair'


class SimplifyLogic:
    """Replaces the logic specified in :code:`(check-logic ...)` by a simpler
    one."""
    def filter(self, node):
        return has_ident(node) and get_ident(node) == 'set-logic'

    def mutations(self, node):
        logic = node[1]
        cands = []
        repls = {'BV': '', 'FP': '', 'UF': '', 'S': '', 'T': '', 'NRA': 'LRA'}
        for r in repls:
            if r in logic:
                assert logic.is_leaf()
                cands.append(logic.data.replace(r, repls[r]))
        return [Node('set-logic', c) for c in cands]

    def __str__(self):
        return 'simplify logic'


class SimplifyQuotedSymbols:
    """Turns a quoted symbol into a simple symbol."""
    def filter(self, node):
        return is_piped_symbol(node) and re.match(
            '\\|[a-zA-Z0-9~!@$%^&*_+=<>.?/-]+\\|', node.data) is not None

    def mutations(self, node):
        return [get_piped_symbol(node)]

    def global_mutations(self, linput, ginput):
        return [nodes.substitute(ginput, {linput: get_piped_symbol(linput)})]

    def __str__(self):
        return 'simplify quoted symbol'


class SimplifySymbolNames:
    """Simplify variable names."""
    def filter(self, node):
        return has_ident(node) and get_ident(node) in [
            'declare-const', 'declare-datatypes', 'declare-fun',
            'declare-sort', 'define-fun', 'exists', 'forall'
        ] and not is_const(node[1])

    def global_mutations(self, linput, ginput):
        if get_ident(linput) == 'declare-datatypes':
            res = []
            for c in self.__flatten(linput[1:]):
                res = res + self.__mutate_symbol(c, ginput)
            return res
        if get_ident(linput) in ['exists', 'forall']:
            res = []
            for v in linput[1]:
                res = res + self.__mutate_symbol(v[0], ginput)
            return res
        return self.__mutate_symbol(linput[1], ginput)

    def __flatten(self, n):
        """Yield given node as flattened sequence."""
        if isinstance(n, Node):
            for e in n.data:
                yield from self.__flatten(e)
        else:
            yield Node(n)

    def __mutate_symbol(self, symbol, ginput):
        """Return a list of mutations of ginput based on simpler versions of
        symbol."""
        if is_piped_symbol(symbol):
            return [
                nodes.substitute(ginput, {symbol: Node('|' + s + '|')})
                for s in self.__simpler(get_piped_symbol(symbol))
            ]
        return [
            nodes.substitute(ginput, {symbol: Node(s)})
            for s in self.__simpler(symbol)
        ]

    def __simpler(self, symbol):
        """Return a list of simpler versions of the given symbol."""
        sym = symbol.data
        if len(sym) < 2:
            return []
        return [sym[:len(sym) // 2], sym[1:], sym[:-1]]

    def __str__(self):
        return 'simplify symbol name'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'CheckSatAssuming': 'check-sat-assuming',
        'EliminateDistinct': 'eliminate-distinct',
        'EliminateVariable': 'eliminate-variables',
        'InlineDefinedFuns': 'inline-functions',
        'LetElimination': 'let-elimination',
        'LetSubstitution': 'let-substitution',
        'PushPopRemoval': 'push-pop-removal',
        'SimplifyLogic': 'simplify-logic',
        'SimplifyQuotedSymbols': 'simplify-quoted-symbols',
        'SimplifySymbolNames': 'simplify-symbol-names',
    }
