FAQ
===

Delta debugging is slow
    Read the section about :ref:`speeding up delta debugging <Speeding up delta debugging>`.

ddSMT seems to be stuck in an infinite loop
    All modifications performed by ddSMT should simplify the input, or more formally, all mutations should make the input smaller with respect to an appropriate ranking function.
    Also note that some mutators may indeed apply a lot.
    If you really think ddSMT checks the same input over and over again, try ``--check-loops``.
