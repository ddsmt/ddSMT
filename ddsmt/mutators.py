#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in the AUTHORS file.
#
# ddSMT is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ddSMT is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ddSMT.  If not, see <https://www.gnu.org/licenses/>.

import argparse
import logging

from . import mutators_arithmetic
from . import mutators_bv
from . import mutators_boolean
from . import mutators_core
from . import mutators_fp
from . import mutators_smtlib
from . import mutators_strings
from . import nodes
from . import options


def get_all_mutators():
    """Return all available mutators, arranged by their theory."""
    return {
        'core': (mutators_core, mutators_core.get_mutators()),
        'arithmetic':
        (mutators_arithmetic, mutators_arithmetic.get_mutators()),
        'bv': (mutators_bv, mutators_bv.get_mutators()),
        'boolean': (mutators_boolean, mutators_boolean.get_mutators()),
        'fp': (mutators_fp, mutators_fp.get_mutators()),
        'smtlib': (mutators_smtlib, mutators_smtlib.get_mutators()),
        'strings': (mutators_strings, mutators_strings.get_mutators()),
    }


def get_mutators(mutators):
    """Return mutator instances from a list of names.

    For each mutator class name in ``mutators`` retrieves the proper
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


def get_initialized_mutator(name, properties):
    """Obtain a mutator by name and set the given properties."""
    res = get_mutators([name])
    if res:
        for p, v in properties.items():
            setattr(res[0], p, v)
    return res


def toggle_theory(namespace, theory_name, value):
    """Enables or disables all mutators for the given theory by setting their
    respective options in ``namespace``."""
    setattr(namespace, f'mutators_{theory_name}', value)
    _, mutators = get_all_mutators()[theory_name]
    for _, opt in mutators.items():
        setattr(namespace, f'mutator_{opt.replace("-", "_")}', value)


def toggle_all_theories(namespace, value):
    """Enables or disables all mutators for all theories by setting their
    respective options in ``namespace``."""
    for theory_name, data in get_all_mutators().items():
        setattr(namespace, f'mutators_{theory_name}', value)
        for _, opt in data[1].items():
            setattr(namespace, f'mutator_{opt.replace("-", "_")}', value)


class TheoryToggleAction(options.ToggleAction):
    """A specialization of ``ToggleAction`` that disables (or enables) all
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
                           default=None,
                           dest=f'mutators_{name}',
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


def auto_detect_theories(exprs):
    for name, tdata in get_all_mutators().items():
        # if a theory was explicitly enabled or disabled by the user, we don't
        # change it.
        optval = getattr(options.args(), f'mutators_{name}')
        if optval is not None:
            logging.debug(f'{name} was specified by the user: {optval}')
            continue

        theory = tdata[0]
        # if a theory does not implement is_relevant(), it stays enabled
        if not hasattr(theory, 'is_relevant'):
            logging.debug(f'{name} can not be disabled')
            continue

        # now check whether theory is relevant for any of the nodes
        enabled = False
        for node in nodes.dfs(exprs):
            if theory.is_relevant(node):
                enabled = True
                break

        if not enabled:
            logging.warn(
                f'automatically disabling {name} mutators. Use --{name} to use it.'
            )
            toggle_theory(options.args(), name, False)
        else:
            logging.debug(f'keeping {name} mutators enabled')
