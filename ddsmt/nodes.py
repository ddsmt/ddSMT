class Node:
    """Represents a node in the input, consisting of an id and some data.

    The :code:`data` can either be a string or a tuple of nodes. The
    :code:`id` is initially None. When iterating through a tree with
    :code:`dfs`, the tree nodes get unique ids that can be used for
    local substitutions. As soon as a substitution has been performed,
    the ids are invalid.
    """
    __slots__ = 'id', 'data'

    def __init__(self, *args):
        self.id = None
        if len(args) == 1 and isinstance(args[0], str):
            self.data = args[0]
        else:
            self.data = tuple(args)
            assert all(map(lambda t: isinstance(t, Node), self.data))

    def __str__(self):
        if isinstance(self.data, str):
            return self.data
        return f'(' + ' '.join(map(str, self.data)) + ')'

    def __repr__(self):
        return str(self)

    def __len__(self):
        if self.is_leaf():
            return 0
        return len(self.data)

    def __getitem__(self, key):
        assert not self.is_leaf()
        return self.data[key]

    def __eq__(self, other):
        if isinstance(other, str):
            return self.is_leaf() and self.data == other
        if isinstance(other, tuple):
            return not self.is_leaf() and self.data == other
        return self.data == other.data

    def __hash__(self):
        return hash(self.data)

    def is_leaf(self):
        return isinstance(self.data, str)

    def has_name(self):
        return self.data and self.data[0].is_leaf()

    def get_name(self):
        assert (self.has_name())
        return self.data[0]


def dfs(exprs, max_depth=None):
    """DFS traversal of s-expressions in exprs up to a maximum depth.

    Updates exprs with fresh ids that can be used for subsequent
    substitutions.
    """
    visit = [(1, x) for x in reversed(exprs)]
    id = 0
    while visit:
        cur_depth, expr = visit.pop()
        if isinstance(expr, Node) and (not max_depth or cur_depth < max_depth):
            expr.id = id
            id += 1
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
    The resulting expressions have all ids set to None.
    """
    assert isinstance(exprs, list)
    visit = [(x, False) for x in reversed(exprs)]
    args = [[]]
    while visit:
        expr, visited = visit.pop()
        assert isinstance(expr, Node)

        if expr.id and expr.id in repl:
            expr = repl[expr.id]
        if expr in repl:
            expr = repl[expr]
        assert isinstance(expr, Node)

        if visited:
            children = args.pop()
            args[-1].append(Node(*children))
        else:
            if expr.is_leaf():
                args[-1].append(expr)
            else:
                visit.append((expr, True))
                visit.extend((x, False) for x in reversed(expr.data))
                args.append([])
    return args[0]


def render_smtlib(exprs):
    """Convert :code:`exprs` to an SMT-LIBv2 compliant string."""
    if isinstance(exprs, Node):
        visit = [(exprs, False)]
    else:
        assert isinstance(exprs, list)
        visit = [(x, False) for x in reversed(exprs)]
    args = []
    while visit:
        expr, visited = visit.pop()
        if not isinstance(expr, Node):
            assert isinstance(expr, str)
            args.append(expr)
            continue

        if visited:
            pos = len(args) - len(expr.data)
            children = args[pos:]
            args = args[:pos]
            args.append('({})'.format(' '.join(children)))
        else:
            visit.append((expr, True))
            if not expr.is_leaf():
                visit.extend((x, False) for x in reversed(expr.data))

    return '\n'.join(args)


def write_smtlib_to_file(filename, exprs):
    """Writes a sequence of nodes to a file."""
    open(filename, 'w').write(render_smtlib(exprs))
