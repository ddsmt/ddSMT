from utils import smtlib


class PassDeleteAssert:
    def filter(self, x):
        return smtlib.is_operator(x, 'assert')

    def subst(self, x):
        return None
