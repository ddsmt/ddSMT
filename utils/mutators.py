from utils import smtlib


class PassDeleteAssert:
    def filter(self, x):
        return smtlib.is_operator(x, 'assert')

    def mutations(self, x):
        return [None]
