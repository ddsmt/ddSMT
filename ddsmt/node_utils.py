import logging

from . import nodeio
from . import options


class NodeLoopChecker:
    def __init__(self):
        self.__seen = set()

    def add(self, exprs):
        if options.args().check_loops:
            exprt = tuple(exprs)
            if exprt in self.__seen:
                logging.error(
                    'The following input has already been seen before:')
                logging.error(f'\n{nodeio.write_smtlib_to_str(exprs)}')
                assert False
            self.__seen.add(exprt)
