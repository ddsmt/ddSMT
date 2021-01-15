from .smtlib import *


class StringSimplifyConstant:
    """Replace a string constant by a shorter version."""
    def filter(self, node):
        return is_string_const(node) and node != '""'

    def mutations(self, node):
        content = node[1:-1]
        return [
            Node(f'"{c}"') for c in
            ['', content[:len(content) // 2], content[1:], content[:-1]]
        ]

    def global_mutations(self, linput, ginput):
        return [
            nodes.substitute(ginput, {linput: rep})
            for rep in self.mutations(linput)
        ]

    def __str__(self):
        return 'simplify string constant'


class StringReplaceAll:
    """Replace :code:`str.replace_all` by a simple :code:`str.replace`."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.replace_all'

    def mutations(self, node):
        return [Node('str.replace', *node[1:])]

    def __str__(self):
        return 'eliminate str.replace_all'


class StringIndexOfNotFound:
    """Replace :code:`str.indexof` by special value :code:`(- 1)`."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.indexof'

    def mutations(self, node):
        return [Node('-', '1')]

    def __str__(self):
        return 'eliminate str.indexof'


class StringContainsToConcat:
    """Replace :code:`str.contains` by concatenation."""
    def filter(self, node):
        return node.has_ident() and node.get_ident() == 'str.contains'

    def global_mutations(self, linput, ginput):
        var = linput[1]
        k1 = f'{var}_prefix'
        k2 = f'{var}_suffix'
        vars = [
            Node('declare-const', k1, 'String'),
            Node('declare-const', k2, 'String'),
        ]
        ginput = introduce_variables(ginput, vars)
        eq = Node('=', var, ('str.++', k1, linput[2], k2))
        return nodes.substitute(ginput, {linput: eq})

    def __str__(self):
        return 'eliminate str.contains by ++'


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    return {
        'StringContainsToConcat': 'str-contains-to-concat',
        'StringIndexOfNotFound': 'str-index-not-found',
        'StringReplaceAll': 'str-replace-all',
        'StringSimplifyConstant': 'str-constants',
    }


def is_relevant(node):
    """Checks whether this theory might be relevant for this node."""
    if node.has_ident():
        if node.get_ident() in ['declare-const']:
            if node[2] == 'String':
                return True
        elif node.get_ident() in ['declare-fun', 'define-fun', 'define-sort']:
            if node[3] == 'String':
                return True
    return False
