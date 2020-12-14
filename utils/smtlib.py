## Parsing

def parse(text):
    """Convert SMT-LIB input to list of (nested) Python tuples.

        A tuple represents an s-expression in SMT-LIB. This generator yields
        top-level s-expressions (commands) or comments.
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
            cur_expr.append(''.join(literal))

        # Comments
        elif char == ';':
            comment = [char]
            # Read until newline
            while True:
                if pos >= size:
                    return
                char = text[pos]
                pos += 1
                comment.append(char)
                if char == '\n':
                    break
            comment = ''.join(comment)
            if cur_expr:
                cur_expr.append(comment)
            else:
                yield comment

        # Open s-expression
        elif char == '(':
            cur_expr = []
            exprs.append(cur_expr)

        # Close s-expression
        elif char == ')':
            cur_expr = exprs.pop()

            # Do we have nested s-expressions?
            if exprs:
                exprs[-1].append(tuple(cur_expr))
                cur_expr = exprs[-1]
            else:
                yield tuple(cur_expr)
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
                if char in ('(', ')'):
                    pos -= 1
                    break
                token.append(char)

            token = ''.join(token)

            # Append to current s-expression
            if cur_expr is not None:
                cur_expr.append(token)
            else:
                yield token


## Printing

def to_str_iter(exprs):
    """Convert `exprs` to SMT-LIB compliant string.


       Iterative version.
    """
    if isinstance(exprs, tuple):
        visit = [(exprs, False)]
    else:
        assert isinstance(exprs, list)
        visit = [(x, False) for x in reversed(exprs)]

    args = []
    while visit:
        expr, visited = visit.pop()
        if not isinstance(expr, tuple):
            args.append(expr)
            continue

        if visited:
            pos = len(args) - len(expr)
            children = args[pos:]
            args = args[:pos]
            args.append('({})'.format(' '.join(children)))
        else:
            visit.append((expr, True))
            visit.extend((x, False) for x in reversed(expr))

    return '\n'.join(args)

def _to_str_rec(exprs):
    if isinstance(exprs, tuple):
        return '({})'.format(' '.join(map(_to_str_rec, exprs)))
    return exprs

def to_str_rec(exprs):
    """Convert `exprs` to SMT-LIB compliant string.

       Recursive version, slightly faster than the iterative one, but may run
       into recursion limit issues for deeply nested s-expressions.
    """
    return '\n'.join(map(_to_str_rec, exprs))


def print_exprs(filename, exprs):
    with open(filename, 'w') as outfile:
        outfile.write(to_str_iter(exprs))
        outfile.write('\n')


## Semantic testers

def is_assert(x):
    return isinstance(x, tuple) and x and x[0] == 'assert'

def is_definefun(x):
    return isinstance(x, tuple) and x and x[0] == 'define-fun'

def is_exit(x):
    return isinstance(x, tuple) and x and x[0] == 'exit'

