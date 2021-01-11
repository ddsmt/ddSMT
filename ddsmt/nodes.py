class Node:
    """Represents a node in the input, consisting of an id and some data.

    The :code:`data` can either be a string or a tuple of nodes. The
    :code:`id` is automatically set to a unique integer that can be used
    for local substitutions.
    """
    __slots__ = 'id', 'data'
    __ID_COUNTER = 0

    @classmethod
    def __get_id(self):
        self.__ID_COUNTER += 1
        return self.__ID_COUNTER

    def __init__(self, *args):
        self.id = self.__get_id()
        if len(args) == 1 and isinstance(args[0], str):
            self.data = args[0]
        else:
            self.data = tuple(
                map(lambda a: self.__ensure_is_node(a), list(args)))
            assert all(map(lambda t: isinstance(t, Node), self.data))

    def __ensure_is_node(self, data):
        """Recursively walk data and make sure everything is a node."""
        if isinstance(data, Node):
            return data
        if isinstance(data, str):
            return Node(data)
        if isinstance(data, tuple):
            res = []
            for d in data:
                res.append(self.__ensure_is_node(d))
            return Node(*res)
        return None

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
        return isinstance(self.data,
                          tuple) and self.data and self.data[0].is_leaf()

    def get_name(self):
        assert (self.has_name())
        return self.data[0]


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
    if isinstance(exprs, Node):
        return Node(*args[0])
    else:
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
        if expr.is_leaf():
            assert isinstance(expr.data, str)
            args.append(str(expr.data))
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
