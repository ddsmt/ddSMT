from . import options
from .smtlib import *

NAME = 'strings'
MUTATORS = ['str-constants']


class StringSimplifyConstant:
    """Replace a string constant by a shorter version."""
    def filter(self, node):
        return is_string_constant(node) and node != '""'

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


def collect_mutator_options(argparser):
    options.add_mutator_argument(argparser, NAME, True, 'strings mutators')
    options.add_mutator_argument(argparser, 'str-constants', True,
                                 'replaces constants by simpler ones')


def get_mutators():
    """Returns a mapping from mutator class names to the name of their config
    options."""
    if not options.args().mutator_strings:
        return {}
    return {
        'StringSimplifyConstant': 'str_constants',
    }
