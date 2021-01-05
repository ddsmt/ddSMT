## Semantic testers


def is_assert(x):
    return isinstance(x, tuple) and x and x[0] == 'assert'


def is_definefun(x):
    return isinstance(x, tuple) and x and x[0] == 'define-fun'


def is_exit(x):
    return isinstance(x, tuple) and x and x[0] == 'exit'
