from utils import smtlib

class PassDeleteAssert:
    def filter(self, x):
        return smtlib.is_assert(x)

    def subst(self, x):
        return None
