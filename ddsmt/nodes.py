#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2024 by the authors listed in the AUTHORS file
# at https://github.com/ddsmt/ddSMT/blob/master/AUTHORS.
#
# This file is part of ddSMT under the MIT license. See LICENSE for more
# information at https://github.com/ddsmt/ddSMT/blob/master/LICENSE.

import collections
import multiprocessing
import struct


class Node:
    """Represents a node in the input, consisting of an id and some data.

    The ``data`` can either be a string or a tuple of nodes. The ``id``
    is automatically set to a unique integer that can be used for local
    substitutions.
    """
    __slots__ = 'id', 'data', 'hash'
    __ID_COUNTER = multiprocessing.Value('i', 0)

    @classmethod
    def __get_id(self):
        with self.__ID_COUNTER.get_lock():
            self.__ID_COUNTER.value += 1
            return self.__ID_COUNTER.value

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
        self.hash = _hash if _hash else hash(self.data)

    def __deepcopy__(self, memo):
        """Hook for copy.deepcopy, make sure we assign a fresh id."""
        visit = [(self, False)]
        args = [[]]
        while visit:
            expr, visited = visit.pop()
            assert isinstance(expr, Node)

            if visited:
                children = args.pop()
                node = Node(*children)
                args[-1].append(node)
            else:
                if expr.is_leaf():
                    args[-1].append(Node(expr.data))
                else:
                    visit.append((expr, True))
                    visit.extend((x, False) for x in reversed(expr.data))
                    args.append([])
        assert len(args) == 1
        if len(args[0]) == 0:
            return None
        return args[0][0]

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
            elif isinstance(other, str):
                return self.is_leaf() and self.data == other
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
            if isinstance(expr, bytes):
                res.append(expr)
                continue
            assert isinstance(expr, Node)
            if expr.is_leaf():
                res.append(b'L')
                data = expr.data.encode()
                res.append(struct.pack("=ii", expr.id, len(data)))
                res.append(data)
            else:
                res.append(b'(')
                res.append(struct.pack("=iq", expr.id, expr.hash))
                visit.append(b')')
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
        return (isinstance(self.data, tuple) and self.data
                and self.data[0].is_leaf())

    def get_ident(self):
        """Get the identifier of this, asserting that ``node.has_ident()``."""
        assert self.has_ident()
        return self.data[0]


def reduplicate(exprs):
    """Re-duplicates nodes with the same id using deepcopy."""
    ids = set()
    visit = [(x, False) for x in reversed(exprs)]
    args = [[]]
    while visit:
        expr, visited = visit.pop()
        assert isinstance(expr, Node)

        if expr.is_leaf():
            if expr.id in ids:
                args[-1].append(Node(expr.data))
            else:
                args[-1].append(expr)
                ids.add(expr.id)
        else:
            if visited:
                children = args.pop()
                if any(map(lambda x: x[0].id != x[1].id, zip(expr, children))):
                    node = Node(*children)
                    args[-1].append(node)
                    ids.add(node.id)
                else:
                    args[-1].append(expr)
                    ids.add(expr.id)
            else:
                visit.append((expr, True))
                visit.extend((x, False) for x in reversed(expr.data))
                args.append([])
    assert len(args) == 1
    return args[0]


def dfs(exprs, max_depth=None):
    """DFS traversal of s-expressions in exprs up to a maximum depth."""
    if isinstance(exprs, Node):
        yield exprs
    visit = [(1, x) for x in reversed(exprs)]
    while visit:
        cur_depth, expr = visit.pop()
        if isinstance(expr, Node) and (not max_depth or cur_depth < max_depth):
            yield expr
            if not expr.is_leaf():
                visit.extend([(cur_depth + 1, x) for x in reversed(expr.data)])
        else:
            yield expr


def bfs(exprs, max_depth=None):
    """BFS traversal of s-expressions in exprs up to a maximum depth."""
    if isinstance(exprs, Node):
        yield exprs
    visit = collections.deque()
    visit.extend([(1, x) for x in exprs])
    while visit:
        cur_depth, expr = visit.popleft()
        if isinstance(expr, Node) and (not max_depth or cur_depth < max_depth):
            yield expr
            if not expr.is_leaf():
                visit.extend([(cur_depth + 1, x) for x in expr.data])
        else:
            yield expr


def substitute(exprs, repl):  # noqa: C901
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
        visit = [(exprs, False)]
    else:
        visit = [(x, False) for x in reversed(exprs)]
    changed = False
    args = [[]]
    while visit:
        expr, visited = visit.pop()
        assert isinstance(expr, Node)

        didrepl = False
        if expr.id and expr.id in repl:
            expr = repl.pop(expr.id)
            didrepl = True
        if expr in repl:
            expr = repl[expr]
            didrepl = True
        if didrepl:
            changed = True
            if expr is None:
                continue

        if visited:
            children = args.pop()
            node = Node(*children)
            if node == expr:
                args[-1].append(expr)
            else:
                args[-1].append(node)
        else:
            if not repl or expr.is_leaf():
                args[-1].append(expr)
            else:
                visit.append((expr, True))
                visit.extend((x, False) for x in reversed(expr.data))
                args.append([])
    if not changed:
        return exprs
    if isinstance(exprs, Node):
        assert len(args) == 1
        if len(args[0]) == 0:
            return None
        return args[0][0]
    return args[0]


def count_nodes(node):
    """Return the number of expressions yielded when traversing ``node`` in DFS
    manner."""
    assert isinstance(node, (Node, list))
    res = 0
    if isinstance(node, Node):
        visit = [node]
    else:
        visit = [x for x in node]
    while visit:
        expr = visit.pop()
        res += 1
        if not expr.is_leaf():
            visit.extend([x for x in expr.data])
    return res


def count_exprs(node):
    """Return the number of tuples yielded when traversing ``node`` in DFS
    manner."""
    assert isinstance(node, (Node, list))
    res = 0
    if isinstance(node, Node):
        visit = [node]
    else:
        visit = [x for x in node]
    while visit:
        expr = visit.pop()
        if not expr.is_leaf():
            res += 1
            visit.extend([x for x in expr.data if not x.is_leaf()])
    return res


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


def contains(node, func):
    """Checks whether ``func`` returns true for any of the nodes within
    ``node``."""
    return any(map(func, dfs(node)))
