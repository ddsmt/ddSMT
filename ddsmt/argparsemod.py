#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2021 by the authors listed in AUTHORS file.
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


class _ModularHelpEnabler(argparse.Action):
    """A custom action that enables help for a single argument group."""
    def __call__(self, parser, namespace, values, option_string=None):
        parser.enable_modular_help(self.const)


class ModularArgumentParser(argparse.ArgumentParser):
    """A variant of argparse.ArgumentParser that allows to modularly enable and
    disable printing help for individual argument groups.

    A new variant of ``add_argument_groups()`` allows adding commands of
    the form ``--help-group``.
    """
    def __init__(self, *args, **kwargs):
        """As ``argparse.ArgumentParser.__init__()``, additionally ``modular_action_groups = []`` can be used to specify
        the names of argument groups used for the custom help options."""
        self._modular_action_groups = {}
        self._modular_active = False
        modular_help_groups = kwargs.pop('modular_help_groups', [])
        help_all = kwargs.pop('help_all', True)
        super().__init__(*args, **kwargs)
        self._modular_help_groups = {}
        for name in modular_help_groups:
            self._modular_help_groups[name] = self.add_argument_group(name)
        if help_all:
            self.add_argument('--help-all',
                              action=_ModularHelpEnabler,
                              nargs=0,
                              default=argparse.SUPPRESS,
                              const=None,
                              help='show all help messages')

    def add_argument_group(self, *args, **kwargs):
        """As argparse.ArgumentParser.add_argument_group(), additionally
        help_name, help_group and help_text allow to add a new option
        :code:`--help-{{help_name}}."""
        help_name = kwargs.pop('help_name', None)
        help_group = kwargs.pop('help_group', None)
        help_text = kwargs.pop('help_text', 'show help for {}')
        help_argument = kwargs.pop('help_argument', False)
        grp = super().add_argument_group(*args, **kwargs)
        if help_name is not None:
            self._modular_action_groups[grp] = help_name
            if help_argument:
                parser = self
                if help_group is not None:
                    parser = self._modular_help_groups[help_group]
                parser.add_argument('--help-{}'.format(help_name),
                                    action=_ModularHelpEnabler,
                                    nargs=0,
                                    default=argparse.SUPPRESS,
                                    const=grp,
                                    help=help_text.format(help_name))
        return grp

    def enable_modular_help(self, grp):
        """Remove grp from ``self._modular_action_groups`` and thereby enable
        printing it."""
        self._modular_active = True
        if grp is None:
            self._modular_action_groups = {}
        else:
            del self._modular_action_groups[grp]

    def parse_args(self, *args, **kwargs):
        res = super().parse_args(*args, **kwargs)
        if self._modular_active:
            self.parse_args(['--help'])
        return res

    def error(self, message):
        if not self._modular_active:
            super().error(message)

    def format_help(self):
        """Removes all items from ``self._action_groups`` that are still in
        ``self._modular_action_groups``."""
        self._action_groups = [
            ag for ag in self._action_groups
            if ag not in self._modular_action_groups
        ]
        return super().format_help()
