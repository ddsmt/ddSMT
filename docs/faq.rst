FAQ
===

Delta debugging is slow
    The time needed for delta debugging depends on multiple factors, and thus there can be different bottlenecks depending on the inputs.
    If checking an input is very fast, try using `PyPy <https://www.pypy.org/>`_ instead of `python` (or rather `cPython`) to make ddSMT itself run much faster.
    If checking an input is slow, try running ddSMT with ``-jn``, allowing multiple checks in parallel.

ddSMT seems to be stuck in an infinite loop
    All modifications performed by ddSMT should simplify the input, or more formally, all mutations should make the input smaller with respect to an appropriate ranking functions.
    Also note that some mutators may indeed apply a lot.
    If you really think ddSMT checks the same input over and over again, try ``--check-loops``.
