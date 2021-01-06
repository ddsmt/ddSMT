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
            '"{}"'.format(c) for c in
            ['', content[:len(content) // 2], content[1:], content[:-1]]
        ]

    def global_mutations(self, linput, ginput):
        return [
            substitute(ginput, {linput: rep}) for rep in self.mutations(linput)
        ]

    def __str__(self):
        return 'simplify string constant'


def collect_mutator_options(argparser):
    options.add_mutator_argument(argparser, NAME, True, 'strings mutators')
    options.add_mutator_argument(argparser, 'str-constants', True,
                                 'replaces constants by simpler ones')


def collect_mutators(args):
    res = []
    if args.mutator_strings:
        if args.mutator_str_constants:
            res.append(StringSimplifyConstant())
    return res
