class Substitution:
    """ Substitution class to store and apply substitutions.

        This class makes sure to only use id(tuple) instead of hashing each
        tuple since this is expensive.
    """

    def __init__(self):
        self.substs = dict()

    def add(self, expr, subst):
        """Add substitution `subst` for `expr`."""
        self.substs[id(expr)] = subst

    def get(self, expr):
        """Get substitution for `expr`."""
        return self.substs[id(expr)]

    def is_subst(self, expr):
        """Check if we have a substitution for `expr`."""
        return id(expr) in self.substs

    def apply(self, exprs):
        """Apply substitutions.

           Applies substitutions `substs` to `exprs` and returns the new
           expressions.
        """
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
                args.append(tuple(children))
            else:
                # Apply substitution if given
                if self.is_subst(expr):
                    expr = self.get(expr)
                    # Expressions substituted by None will be deleted
                    if expr is None:
                        continue
                    if not isinstance(expr, tuple):
                        args.append(expr)
                        continue

                visit.append((expr, True))
                visit.extend((x, False) for x in reversed(expr))

        # Make sure that we return a tuple if a tuple was passed.
        if isinstance(exprs, tuple):
            return tuple(args)
        return args
