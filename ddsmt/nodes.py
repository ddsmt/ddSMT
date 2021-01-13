import textwrap


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
        if isinstance(data, int):
            return Node(str(data))
        assert isinstance(data, tuple)
        res = []
        for d in data:
            res.append(self.__ensure_is_node(d))
        return Node(*res)

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


def parse_smtlib(text):  # noqa: C901
    """Parse SMT-LIB input to list of :code:`Node` objects.

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
    """Convert a single :code:`Node expr` to an SMT-LIBv2 compliant string."""
    visit = [(expr, False)]
    args = []
    while visit:
        ex, visited = visit.pop()
        if ex.is_leaf():
            assert isinstance(ex.data, str)
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
    """Convert :code:`exprs` to an SMT-LIBv2 compliant string."""
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
