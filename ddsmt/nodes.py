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

import struct
import textwrap


class Node:
    """Represents a node in the input, consisting of an id and some data.

    The ``data`` can either be a string or a tuple of nodes. The ``id``
    is automatically set to a unique integer that can be used for local
    substitutions.
    """
    __slots__ = 'id', 'data', 'hash'
    __ID_COUNTER = 0

    @classmethod
    def __get_id(self):
        self.__ID_COUNTER += 1
        return self.__ID_COUNTER

    def __init__(self, *args, _id=None, _data=None, _hash=None):
        """
        Node("str") -> "str"
        otherwise:
        Node(*args) -> tuple(*args)
        If any of ``_id``, ``_data`` and ``_hash`` are set, these are used to
        populate the respective properties without checking them. Only use
        them if you really know what you are doing!
        """
        self.id = _id if _id else self.__get_id()
        if _data:
            self.data = _data
        else:
            if len(args) == 1 and isinstance(args[0], (str, int)):
                self.data = str(args[0])
            else:
                self.data = tuple(map(lambda a: self.__ensure_is_node(a),
                                      args))
            #assert all(map(lambda t: isinstance(t, Node), self.data))
        #assert isinstance(self.data, (str, tuple))
        self.hash = _hash if _hash else hash(self.data)

    def __ensure_is_node(self, data):
        """Recursively walk data and make sure everything is a node."""
        if isinstance(data, Node):
            return data
        if isinstance(data, str):
            return Node(data)
        if isinstance(data, int):
            return Node(str(data))
        assert isinstance(data, tuple)
        return Node(*map(lambda a: self.__ensure_is_node(a), data))

    def __str__(self):
        if isinstance(self.data, str):
            return self.data
        return '(' + ' '.join(map(str, self.data)) + ')'

    def __repr__(self):
        if isinstance(self.data, str):
            return f'"{self.data}"'
        return f'({self.id} ' + ' '.join(map(repr, self.data)) + ')'

    def __len__(self):
        if self.is_leaf():
            return 0
        return len(self.data)

    def __getitem__(self, key):
        return self.data[key]

    def __eq__(self, other):
        if other is None:
            return False
        if isinstance(other, Node):
            if self.id == other.id:
                return True
            visit_other = [other]
        else:
            if isinstance(other, tuple):
                visit_other = [Node(*other)]
            else:
                visit_other = [Node(other)]
        visit_self = [self]
        while visit_self:
            if not visit_other:
                return False
            ns = visit_self.pop()
            no = visit_other.pop()
            assert isinstance(ns, Node)
            assert isinstance(no, Node)
            if ns.id == no.id:
                continue
            if ns.is_leaf() != no.is_leaf():
                return False
            if ns.hash != no.hash:
                return False
            if ns.is_leaf():
                if ns.data != no.data:
                    return False
            else:
                if len(ns) != len(no):
                    return False
                visit_self.extend(ns.data)
                visit_other.extend(no.data)
        return True

    def __hash__(self):
        return self.hash

    def __getstate__(self):
        """Callback method for custom (non-recursive) pickling."""
        res = []
        visit = [self]
        while visit:
            expr = visit.pop()
            if isinstance(expr, str):
                assert expr == ')'
                res.append(b')')
                continue
            assert isinstance(expr, Node)
            if expr.is_leaf():
                res.append(b'L')
                res.append(struct.pack("=ii", expr.id, len(expr.data)))
                res.append(expr.data.encode())
            else:
                res.append(b'(')
                res.append(struct.pack("=iq", expr.id, expr.hash))
                visit.append(')')
                visit.extend(reversed(expr.data))

        return b''.join(res)

    def __setstate__(self, state):
        """Callback method for custom (non-recursive) unpickling."""
        exprs = [[]]
        i = 0
        smax = len(state)
        while i < smax:
            cur = state[i]
            if cur == 40:  # b'('
                exprs.append(list(struct.unpack('=iq', state[i + 1:i + 13])))
                i += 13
                continue
            if cur == 41:  # b')'
                i += 1
                children = exprs.pop()
                _id = children.pop(0)
                _hash = children.pop(0)
                node = Node(_data=tuple(children), _id=_id, _hash=_hash)
                exprs[-1].append(node)
                continue
            if cur == 76:  # b'L'
                _id, leaflen = struct.unpack('=ii', state[i + 1:i + 9])
                node = Node(state[i + 9:i + leaflen + 9].decode(), _id=_id)
                exprs[-1].append(node)
                i += leaflen + 9
                continue
            break
        self.id = exprs[0][0].id
        self.hash = exprs[0][0].hash
        self.data = exprs[0][0].data

    def is_leaf(self):
        """Return true if this node is a leaf node, i.e., it has no children
        but is only a string."""
        return isinstance(self.data, str)

    def has_ident(self):
        """Return true if this node has an identifier, i.e., it has children
        and its first child is a leaf node."""
        return isinstance(self.data, tuple) \
               and self.data \
               and self.data[0].is_leaf()

    def get_ident(self):
        """Get the identifier of this, asserting that ``node.has_ident()``."""
        assert (self.has_ident())
        return self.data[0]


def parse_smtlib(text):  # noqa: C901
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


def dfs(exprs, max_depth=None):
    """DFS traversal of s-expressions in exprs up to a maximum depth."""
    visit = [(1, x) for x in reversed(exprs)]
    while visit:
        cur_depth, expr = visit.pop()
        if isinstance(expr, Node) and (not max_depth or cur_depth < max_depth):
            yield expr
            if not expr.is_leaf():
                visit.extend([(cur_depth + 1, x) for x in reversed(expr.data)])
        else:
            yield expr


def substitute(exprs, repl):
    """Performs (local and global) substitutions on exprs as specified in repl.
    repl may contain two types of entries:

    - int -> Node to replace nodes with the given id with the value node
    - Node -> Node to replace nodes equal to the key node with the value node
    """
    if len(repl) == 0:
        return exprs
    if isinstance(exprs, Node):
        if exprs.is_leaf():
            if exprs.id and exprs.id in repl:
                return repl[exprs.id]
            if exprs in repl:
                return repl[exprs]
            return exprs
        visit = [(x, False) for x in reversed(exprs.data)]
    else:
        visit = [(x, False) for x in reversed(exprs)]
    changed = False
    args = [[]]
    while visit:
        expr, visited = visit.pop()
        assert isinstance(expr, Node)

        didrepl = False
        if expr.id and expr.id in repl:
            expr = repl[expr.id]
            didrepl = True
        if expr in repl:
            expr = repl[expr]
            didrepl = True
        if didrepl:
            changed = True
            if expr is None:
                continue
            args[-1].append(expr)
            continue
        assert isinstance(expr, Node)

        if visited:
            children = args.pop()
            node = Node(*children)
            if node == expr:
                args[-1].append(expr)
            else:
                args[-1].append(node)
        else:
            if expr.is_leaf():
                args[-1].append(expr)
            else:
                visit.append((expr, True))
                visit.extend((x, False) for x in reversed(expr.data))
                args.append([])
    if not changed:
        return exprs
    if isinstance(exprs, Node):
        return Node(*args[0])
    return args[0]


def __render_smtlib_expression_pretty(children, visit):
    if len(children) == 0:
        return '()'
    else:
        if children[0] in ['declare-const', 'declare-fun', 'define-fun']:
            return '({})'.format(' '.join(children))
        elif not any(map(lambda c: c.find('(') >= 0, children)):
            return '({})'.format(' '.join(children))
        else:
            name = children.pop(0)
            depth = 2 + 2 * len(list(filter(lambda n: n[1], visit)))
            if len(children) > 0:
                children = '\n' + '\n'.join(
                    [f'{" "*depth}{child}' for child in children])
            else:
                children = ''

            return f'({name}{children})'


def __render_smtlib_expression(expr: Node, pretty: bool = False):
    """Convert a single ``Node expr`` to an SMT-LIBv2 compliant string."""
    visit = [(expr, False)]
    args = []
    while visit:
        ex, visited = visit.pop()
        if ex.is_leaf():
            assert isinstance(ex.data, str)
            if ex.data == '':
                continue
            if ex.data[0] == ';':
                args.append(f'\n{ex.data}\n')
            else:
                args.append(str(ex.data))
            continue

        if visited:
            pos = len(args) - len(ex.data)
            children = args[pos:]
            args = args[:pos]
            if pretty:
                args.append(__render_smtlib_expression_pretty(children, visit))
            else:
                args.append('({})'.format(' '.join(children)))
        else:
            visit.append((ex, True))
            if not ex.is_leaf():
                visit.extend((x, False) for x in reversed(ex.data))
    assert len(args) == 1
    return args[0]


def __render_smtlib(exprs):
    """Convert ``exprs`` to an SMT-LIBv2 compliant string."""
    return map(__render_smtlib_expression, exprs)


def render_smtlib(exprs):
    from . import options
    if options.args().pretty_print:
        # pretty print
        return '\n'.join(
            map(lambda expr: __render_smtlib_expression(expr, True), exprs))
    lines = __render_smtlib(exprs)
    if options.args().wrap_lines:
        # wrap every line
        lines = map(
            lambda line: textwrap.wrap(line, width=78, subsequent_indent='  '),
            lines)
        # and flatten the list
        lines = [sub for line in lines for sub in line]
    return '\n'.join(lines)


def write_smtlib_to_file(filename, exprs):
    """Writes a sequence of nodes to a file."""
    open(filename, 'w').write(render_smtlib(exprs))


def count_nodes(node):
    """Return the number of expressions yielded when traversing ``node`` in DFS
    manner."""
    assert isinstance(node, (Node, list))
    return len(list(dfs(node)))


def count_exprs(node):
    """Return the number of tuples yielded when traversing ``node`` in DFS
    manner."""
    assert isinstance(node, (Node, list))
    return len([x for x in dfs(node) if not x.is_leaf()])


def filter_nodes(exprs, filter_func, max_depth=-1):
    """Filter s-expressions based on filter_func."""
    assert isinstance(exprs, (Node, list))
    for expr in dfs(exprs, max_depth):
        if filter_func(expr):
            yield expr


def binary_search(input_length):
    """Assume an input sequence of some ``input_length``, generates indices of
    sub-sequences of decreasing length in a binary-search fashion."""
    den = 2
    while den * 2 <= input_length:
        for num in reversed(range(0, den)):
            start = int(num / den * input_length)
            end = int((num + 1) / den * input_length)
            yield (start, end)
        den *= 2
