class Substitution:
    """Substitution class to store and apply substitutions.

    This class supports both local and global substitutions. Local
    substitutions are based on :code:`id()` and only substitute one
    single node. Global substitutions are based on hashing and
    substitute all equal nodes.
    """
    def __init__(self):
        self.__local = {}
        self.__global = {}

    def add_local(self, expr, subst):
        """Add local substitution `subst` for `expr`."""
        self.__local[id(expr)] = subst

    def add_global(self, expr, subst):
        """Add global substitution `subst` for `expr`."""
        self.__global[expr] = subst

    def __str__(self):
        return str(self.__local) + " / " + str(self.__global)

    def is_subst(self, expr):
        return id(expr) in self.__local or expr in self.__global

    def get_subst(self, expr):
        if id(expr) in self.__local:
            return self.__local[id(expr)]
        if expr in self.__global:
            return self.__global[expr]
        assert False

    def apply(self, exprs):
        """Apply substitutions.

        Applies substitutions `substs` to `exprs` and returns the new
        expressions.
        """
        visit = [(id(x), x, False) for x in reversed(exprs)]
        args = [[]]
        while visit:
            i, expr, visited = visit.pop()

            if not isinstance(expr, tuple):
                if self.is_subst(expr):
                    expr = self.get_subst(expr)
                if expr is not None:
                    args[-1].append(expr)
                continue

            if visited:
                children = args.pop()
                args[-1].append(tuple(children))
            else:
                # Apply substitution if given
                if self.is_subst(expr):
                    expr = self.get_subst(expr)
                    # Expressions substituted by None will be deleted
                    if expr is None:
                        continue
                    if not isinstance(expr, tuple):
                        args[-1].append(expr)
                        continue

                visit.append((id(expr), expr, True))
                visit.extend((id(x), x, False) for x in reversed(expr))
                args.append([])

        # Make sure that we return a tuple if a tuple was passed.
        if isinstance(exprs, tuple):
            return tuple(args[0])
        return args[0]


def subs_local(expr, old, new):
    """Shorthand to apply a single local substitution."""
    s = Substitution()
    s.add_local(old, new)
    return s.apply(expr)


def subs_global(expr, repl):
    """Shorthand to apply multiple global substitutions given by the dictionary
    repl."""
    s = Substitution()
    for old, new in repl.items():
        s.add_global(old, new)
    return s.apply(expr)
