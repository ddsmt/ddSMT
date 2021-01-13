import argparse

from . import options
from . import mutators_arithmetic
from . import mutators_bv
from . import mutators_boolean
from . import mutators_core
from . import mutators_smtlib
from . import mutators_strings


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


def get_mutators(mutators):
    """Return mutator instances from a list of names.

    For each mutator class name in :code:`mutators` retrieves the proper
    theory, checks whether the mutator is enabled and then adds an
    instance of this class to the result.
    """
    res = []
    for m in mutators:
        for _, theory in get_all_mutators().items():
            # check if this mutator belongs to this theory
            if m in theory[1]:
                attr = f'mutator_{theory[1][m].replace("-", "_")}'
                # check if this mutator is enabled
                if getattr(options.args(), attr, True):
                    res.append(getattr(theory[0], m)())
                break
    return res


def toggle_theory(namespace, theory_name, value):
    """Enables or disables all mutators for the given theory by setting their
    respective options in :code:`namespace`."""
    setattr(namespace, f'mutators_{theory_name}', value)
    _, mutators = get_all_mutators()[theory_name]
    for _, opt in mutators.items():
        setattr(namespace, f'mutator_{opt.replace("-", "_")}', value)


def toggle_all_theories(namespace, value):
    """Enables or disables all mutators for all theories by setting their
    respective options in :code:`namespace`."""
    for theory_name, data in get_all_mutators().items():
        setattr(namespace, f'mutators_{theory_name}', value)
        for _, opt in data[1].items():
            setattr(namespace, f'mutator_{opt.replace("-", "_")}', value)


class TheoryToggleAction(options.ToggleAction):
    """A specialization of :code:`ToggleAction` that disables (or enables) all
    mutators of a given theory."""
    def __init__(self, theory, *args, **kwargs):
        """Expects an additional option with the name of the theory."""
        self.__theory = theory
        super(TheoryToggleAction, self).__init__(*args, **kwargs)

    def __call__(self, parser, namespace, values, option_string=None):
        """Set the option, as well as all mutator options for this theory."""
        value = self._get_value(option_string)
        setattr(namespace, self.dest, value)
        toggle_theory(namespace, self.__theory, value)


class DisableAllTheoriesAction(argparse.Action):
    """Disables all mutators from all theories when called."""
    def __call__(self, parser, namespace, values, option_string=None):
        setattr(namespace, self.dest, True)
        toggle_all_theories(namespace, False)


def add_mutator_group(argparser, name):
    """Add a new argument group for a mutator group, including options to
    enable and disable the whole theory."""
    res = argparser.add_argument_group('{} mutator arguments'.format(name),
                                       help_name=name,
                                       help_group='mutator help',
                                       help_text='show help for {} mutators')

    res._add_action(
        TheoryToggleAction(name,
                           name,
                           f'mutators_{name}',
                           help=f'{name} theory'))
    return res


def collect_mutator_options(argparser):
    """Adds all options related to mutators to the given argument parser."""
    argparser.add_argument('--disable-all',
                           action=DisableAllTheoriesAction,
                           nargs=0,
                           help='disable all mutators')
    for name, tdata in get_all_mutators().items():
        theory = tdata[0]
        # add argument group for this theory
        ap = add_mutator_group(argparser, name)
        for mname, mopt in theory.get_mutators().items():
            # add options for every individual mutator
            mdesc = str(getattr(theory, mname)())
            ap._add_action(
                options.ToggleAction(mopt,
                                     dest=f'mutator_{mopt.replace("-", "_")}',
                                     help=mdesc))
        # add custom option, if the theory wants it
        if hasattr(theory, 'get_mutator_options'):
            theory.get_mutator_options(ap)
