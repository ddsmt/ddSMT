import argparse

from . import options
from . import mutators_arithmetic
from . import mutators_bitvectors
from . import mutators_boolean
from . import mutators_core
from . import mutators_smtlib
from . import mutators_strings


def disable(namespace, option):
    setattr(namespace, 'mutator_{}'.format(option.replace('-', '_')), False)


def disable_all(namespace, options):
    for opt in options:
        disable(namespace, opt)


class AgressiveAction(argparse.Action):
    """Mode that only checks aggressive mutations."""
    def __call__(self, parser, namespace, values, option_string=None):
        setattr(namespace, 'mode_aggressive', True)
        disable(namespace, mutators_arithmetic.NAME)
        disable(namespace, mutators_bitvectors.NAME)
        disable(namespace, mutators_boolean.NAME)
        disable_all(namespace, mutators_core.MUTATORS)
        disable(namespace, mutators_strings.NAME)
        setattr(namespace, 'mutator_constants', True)
        setattr(namespace, 'mutator_erase_children', True)
        setattr(namespace, 'mutator_inline_functions', True)
        setattr(namespace, 'mutator_replace_by_variable', True)
        setattr(namespace, 'mutator_substitute_children', True)


class BeautifyAction(argparse.Action):
    """Mode that enables mutations merely beautify the output."""
    def __call__(self, parser, namespace, values, option_string=None):
        setattr(namespace, 'mutator_simplify_quoted_symbols', True)
        setattr(namespace, 'mutator_simplify_symbol_names', True)
        setattr(namespace, 'wrap_lines', True)


class LetEliminationAction(argparse.Action):
    """Mode that only checks for let eliminations."""
    def __call__(self, parser, namespace, values, option_string=None):
        setattr(namespace, 'mode_let_elimination', True)
        disable(namespace, mutators_arithmetic.NAME)
        disable(namespace, mutators_bitvectors.NAME)
        disable(namespace, mutators_boolean.NAME)
        disable(namespace, mutators_core.NAME)
        disable_all(namespace, mutators_smtlib.MUTATORS)
        disable(namespace, mutators_strings.NAME)
        setattr(namespace, 'mutator_let_elimination', True)
        setattr(namespace, 'mutator_let_substitution', True)


class ReductionOnlyAction(argparse.Action):
    """Mode that only checks mutations that reduce the number of nodes."""
    def __call__(self, parser, namespace, values, option_string=None):
        setattr(namespace, 'mode_reduction_only', True)
        setattr(namespace, 'mutator_sort_children', False)


class TopLevelOnlyAction(argparse.Action):
    """Mode that only uses top level binary reduction."""
    def __call__(self, parser, namespace, values, option_string=None):
        disable(namespace, mutators_arithmetic.NAME)
        disable(namespace, mutators_bitvectors.NAME)
        disable(namespace, mutators_boolean.NAME)
        disable_all(namespace, mutators_core.MUTATORS)
        disable(namespace, mutators_smtlib.NAME)
        disable(namespace, mutators_strings.NAME)
        setattr(namespace, 'mutator_top_level_binary_reduction', True)


def collect_mutator_modes(argparser):
    argparser.add_argument('--mode-aggressive',
                           default=False,
                           nargs=0,
                           action=AgressiveAction,
                           help='agressively minimize')
    argparser.add_argument(
        '--aggressiveness',
        metavar='perc',
        type=float,
        default=0.01,
        help='percentage of the input a mutators needs to remove')
    argparser.add_argument('--mode-beautify',
                           default=False,
                           nargs=0,
                           action=BeautifyAction,
                           help='enables beautification mutators')
    argparser.add_argument('--mode-let-elimination',
                           default=False,
                           nargs=0,
                           action=LetEliminationAction,
                           help='only eliminate let binders')
    argparser.add_argument('--mode-reduction-only',
                           default=False,
                           nargs=0,
                           action=ReductionOnlyAction,
                           help='only allow reducing mutations')
    argparser.add_argument('--mode-top-level-only',
                           default=False,
                           nargs=0,
                           action=TopLevelOnlyAction,
                           help='use top level binary reduction')


def add_mutator_group(argparser, name):
    """Add a new argument group for a mutator group."""
    return argparser.add_argument_group('{} mutator arguments'.format(name),
                                        help_name=name,
                                        help_group='mutator help',
                                        help_text='show help for {} mutators')


def collect_mutator_options(argparser):
    """Adds all options related to mutators to the given argument parser."""
    mutators_core.collect_mutator_options(add_mutator_group(argparser, 'core'))
    mutators_boolean.collect_mutator_options(
        add_mutator_group(argparser, 'boolean'))
    mutators_arithmetic.collect_mutator_options(
        add_mutator_group(argparser, 'arithmetic'))
    mutators_bitvectors.collect_mutator_options(
        add_mutator_group(argparser, 'bitvector'))
    mutators_smtlib.collect_mutator_options(
        add_mutator_group(argparser, 'smtlib'))
    mutators_strings.collect_mutator_options(
        add_mutator_group(argparser, 'string'))


def collect_mutators(args):
    """Initializes the list of all active mutators."""
    res = []
    res += mutators_core.collect_mutators(args)
    res += mutators_boolean.collect_mutators(args)
    res += mutators_arithmetic.collect_mutators(args)
    res += mutators_bitvectors.collect_mutators(args)
    res += mutators_smtlib.collect_mutators(args)
    res += mutators_strings.collect_mutators(args)
    return res


def get_mutators(mutators):
    """Return mutator instances from a list of names.

    For each mutator class name in :code:`mutators` retrieves the proper
    theory, checks whether the mutator is enabled and then adds an
    instance of this class to the result.
    """
    lookups = {
        mutators_arithmetic: mutators_arithmetic.get_mutators(),
        mutators_bitvectors: mutators_bitvectors.get_mutators(),
        mutators_boolean: mutators_boolean.get_mutators(),
        mutators_core: mutators_core.get_mutators(),
        mutators_smtlib: mutators_core.get_mutators(),
        mutators_strings: mutators_core.get_mutators(),
    }
    res = []
    for m in mutators:
        for theory, lookup in lookups.items():
            if m in lookup:
                attr = f'mutator_{lookup[m]}'
                if getattr(options.args(), attr, True):
                    res.append(getattr(theory, m)())
                break
    return res
