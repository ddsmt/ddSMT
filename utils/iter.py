def dfs(exprs):
    """DFS traversal of s-expressions in exprs."""
    visit = exprs[:]
    while visit:
        sexpr = visit.pop()
        if isinstance(sexpr, tuple):
            yield sexpr
            visit.extend(list(reversed(sexpr)))

def dfs_postorder(exprs):
    """Postorder DFS traversal of s-expressions in exprs."""
    visit = [(x, False) for x in exprs]
    while visit:
        sexpr, visited = visit.pop()
        if not isinstance(sexpr, tuple):
            continue

        if visited:
            yield sexpr
        else:
            visit.append((sexpr, True))
            visit.extend((x, False) for x in reversed(sexpr))


def count_exprs(exprs):
    """Count number of s-expressions in `exprs`."""
    return len(list(dfs(exprs)))


# TODO: depth limit?
def filter_exprs(exprs, filter_func):
    """Filter s-expressions based on filter_func."""
    filtered = []
    for expr in dfs(exprs):
        if filter_func(expr):
            filtered.append(expr)
    return filtered
