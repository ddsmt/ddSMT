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

import io
import textwrap
import typing

from .nodes import Node


def parse_smtlib(text: str):  # noqa: C901
    """Parse SMT-LIB input to list of ``Node`` objects.

    Every node represents an s-expression. This generator yields top-
    level s-expressions (commands) or comments.
    """
    exprs = []
    cur_expr = None

    pos = 0
    size = len(text)
    while pos < size:
        char = text[pos]
        pos += 1

        # String literals/quoted symbols
        if char in ('"', '|'):
            first_char = char
            literal = [char]
            # Read until terminating " or |
            while True:
                if pos >= size:
                    return
                char = text[pos]
                pos += 1
                literal.append(char)
                if char == first_char:
                    # Check is quote is escaped "a "" b" is one string literal
                    if char == '"' and pos < size and text[pos] == '"':
                        literal.append(text[pos])
                        pos += 1
                        continue
                    break
            cur_expr.append(Node(''.join(literal)))

        # Comments
        elif char == ';':
            comment = [char]
            # Read until newline
            while pos < size:
                char = text[pos]
                pos += 1
                comment.append(char)
                if char == '\n':
                    break
            comment = ''.join(comment)
            if cur_expr:
                cur_expr.append(Node(comment))
            else:
                yield Node(comment)

        # Open s-expression
        elif char == '(':
            cur_expr = []
            exprs.append(cur_expr)

        # Close s-expression
        elif char == ')':
            cur_expr = exprs.pop()

            # Do we have nested s-expressions?
            if exprs:
                exprs[-1].append(Node(*cur_expr))
                cur_expr = exprs[-1]
            else:
                yield Node(*cur_expr)
                cur_expr = None

        # Identifier
        elif char not in (' ', '\t', '\n'):
            token = [char]
            while True:
                if pos >= size:
                    return
                char = text[pos]
                pos += 1
                if char in (' ', '\t', '\n'):
                    break
                if char in ('(', ')', ';'):
                    pos -= 1
                    break
                token.append(char)

            token = Node(''.join(token))

            # Append to current s-expression
            if cur_expr is not None:
                cur_expr.append(token)
            else:
                yield token


def __write_smtlib(file: typing.TextIO, expr: Node):
    """Write the given smtlib expression in one line into the file object."""
    visit = [expr]
    needs_space = False
    while visit:
        ex = visit.pop()
        if ex is None:
            file.write(')')
            needs_space = True
            continue

        if needs_space:
            file.write(' ')

        if ex.is_leaf():
            if ex.data == '':
                continue
            if ex.data[0] == ';':
                file.write(f'\n{ex.data}\n')
            else:
                file.write(ex.data)
            needs_space = True
            continue

        file.write('(')
        needs_space = False
        visit.append(None)
        visit.extend(x for x in reversed(ex.data))


def __write_smtlib_pretty(file: typing.TextIO, expr: Node):
    """Write the given smtlib expression in one line into the file object."""
    visit = [(expr, False)]
    indent = ''
    while visit:
        ex, visited = visit.pop()
        if ex.is_leaf():
            assert isinstance(ex.data, str)
            if ex.data == '':
                continue
            if ex.data[0] == ';':
                file.write(f'\n{ex.data}\n')
            else:
                file.write(f'{indent}{ex.data}\n')
            continue

        if visited:
            indent = indent[:-2]
            file.write(f'{indent})\n')
        else:
            if all(map(lambda n: n.is_leaf(), ex.data)):
                file.write(f'{indent}{ex}\n')
            else:
                visit.append((ex, True))
                if ex.has_ident():
                    file.write(f'{indent}({ex.data[0]}\n')
                    visit.extend((x, False) for x in reversed(ex.data[1:]))
                else:
                    file.write(f'{indent}(\n')
                    visit.extend((x, False) for x in reversed(ex.data))
                indent += '  '


def __write_smtlib_str(expr: Node):
    """Write the given smtlib expression in one line to a string."""
    f = io.StringIO()
    __write_smtlib(f, expr)
    return f.getvalue()


def __write_smtlib_pretty_str(expr: Node):
    """Write the given smtlib expression to a formatted string."""
    f = io.StringIO()
    __write_smtlib_pretty(f, expr)
    return f.getvalue()


def write_smtlib(file: typing.TextIO, exprs: typing.List[Node]):
    """Write the given expressions to the given file object
    Honor options to wrap lines or pretty-print."""
    from . import options
    if options.args().pretty_print:
        # pretty print
        for expr in exprs:
            __write_smtlib_pretty(file, expr)
    else:
        # regular writeing
        lines = [__write_smtlib_str(expr) for expr in exprs]
        if options.args().wrap_lines:
            # wrap every line
            lines = map(
                lambda line: textwrap.wrap(
                    line, width=78, subsequent_indent='  '), lines)
            # and flatten the list
            lines = [sub for line in lines for sub in line]
        for line in lines:
            file.write(line)
            file.write('\n')


def write_smtlib_to_file(filename: str, exprs: typing.List[Node]):
    """Use ``write_smtlib`` to write to a filename."""
    with open(filename, 'w') as file:
        write_smtlib(file, exprs)


def write_smtlib_to_str(exprs: typing.List[Node]):
    """Return result of ``write_smtlib`` as a string."""
    f = io.StringIO()
    write_smtlib(f, exprs)
    return f.getvalue()


def write_smtlib_for_checking(filename: str, exprs: typing.List[Node]):
    """Slightly faster writing without wrapping or pretty-printing during
    checking."""
    with open(filename, 'w') as file:
        for expr in exprs:
            __write_smtlib(file, expr)
