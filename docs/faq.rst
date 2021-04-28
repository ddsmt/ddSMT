FAQ
===

Delta debugging is slow
    Read the section about :ref:`how to speed up delta debugging <how to speed
    up delta debugging>`.

ddSMT seems to be stuck in an infinite loop
    To ensure termination of the minimization procedure, we require that it is
    impossible to get into a cycle between applications of mutators.
    For this, we need to guarantee that all mutations applied to the input by
    **ddSMT** result in a "simpler" input.
    Formally, this would require to define a ranking over possible
    simplifications and exclude mutations that do not simplify the input
    according to this ranking in order to break cycles.
    In practice, however, defining such a ranking is difficult.
    If you think that **ddSMT** got into a cycle, try option
    :code:`--check-loops`.
