import argparse

from . import options
from . import mutators_arithmetic
from . import mutators_bv
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
        disable(namespace, mutators_bv.NAME)
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
        disable(namespace, mutators_bv.NAME)
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
        disable(namespace, mutators_bv.NAME)
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


def get_all_mutators():
    """Return all available mutators, arranged by their theory."""
    return {
        'core': (mutators_core, mutators_core.get_mutators()),
        'arithmetic':
        (mutators_arithmetic, mutators_arithmetic.get_mutators()),
        'bitvector': (mutators_bv, mutators_bv.get_mutators()),
        'boolean': (mutators_boolean, mutators_boolean.get_mutators()),
        'smtlib': (mutators_smtlib, mutators_smtlib.get_mutators()),
        'strings': (mutators_strings, mutators_strings.get_mutators()),
    }


def collect_mutator_options(argparser):
    """Adds all options related to mutators to the given argument parser."""
    for name, tdata in get_all_mutators().items():
        theory = tdata[0]
        # add argument group for this theory
        ap = add_mutator_group(argparser, name)
        # add option to disable the whole theory
        options.add_mutator_argument(ap, name, True, f'{name} mutators')
        for mname, mopt in theory.get_mutators().items():
            # add options for every individual mutator
            mdesc = str(getattr(theory, mname)())
            options.add_mutator_argument(ap, mopt, True, mdesc)
        # add custom option, if the theory wants it
        if hasattr(theory, 'get_mutator_options'):
            theory.get_mutator_options(ap)


def get_mutators(mutators):
    """Return mutator instances from a list of names.

    For each mutator class name in :code:`mutators` retrieves the proper
    theory, checks whether the mutator is enabled and then adds an
    instance of this class to the result.
    """
    res = []
    for m in mutators:
        for name, theory in get_all_mutators().items():
            # check if the theory is enabled
            if not getattr(options.args(), f'mutator_{name}', True):
                continue
            # check if this mutator belongs to this theory
            if m in theory[1]:
                attr = f'mutator_{theory[1][m].replace("-", "_")}'
                # check if this mutator is enabled
                if getattr(options.args(), attr, True):
                    res.append(getattr(theory[0], m)())
                break
    return res
