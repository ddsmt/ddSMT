Minimization strategies
====================================

ddSMT offers two fundamentally different strategies for minimization that we call ``ddmin`` and ``hierarchical``, and a comined strategy ``hybrid``.
``ddmin`` employs the minimization strategy from :cite:`Zeller1999` and is the direct successor of what the original ``ddSMT`` from :cite:`Niemetz2013` does: it collects a set of simplifications and applies varying subsets at once.
``hierarchical`` performs a simple depth-first walk through the input and applies one simplification at a time for the current node, similar to what is presented as "hierarchical delta-debugging" in :cite:`Brummayer2009`.

``ddmin`` is usually faster than ``hierarchical``, but produces larger output files.
The default strategy ``hybrid`` thus uses ``ddmin`` first and then ``hierarchical`` on the already simplified input, which almost always combines the better performance characteristics of ``ddmin`` with the smaller results of ``hierarchical``.


The ``ddmin`` strategy
----------------------



The ``hierarchical`` strategy
-----------------------------

At its core, this strategy uses a depth-first traversal of the input and applies all mutators locally to the current node. This allows for multiple mutators to work simultaneously on the same node and thus a fast collaboration of multiple mutators.

``hierarchical`` proceeds in multiple stages: the first stages perform aggressive minimization using binary reduction or only a small set of selected mutators; the penulatimate state employs all but a few mutators that usually only have cosmetic effects; the final stage includes all available mutators.
This approach aims to be reasonably fast in reducing the input initially, but then allowing for more complex and more detailed simplfications once the input is smaller.

Within a single run, ``hierarchical`` employs a fixed-point loop and only terminates when no simplification was successfull for a whole input traversal.
For a single node, ``hierarchical`` iterates over all (currently active) mutators in an arbitrary order and simply checks all suggested simplifications, accepting the first successfull one.
Once a simplification was accepted, ``hierarchical`` continues the input traversal (roughly) from the node it just simplified.


The ``hybrid`` strategy
-----------------------

This strategy aims to combine the advantages of ``ddmin`` (generally better performance, in particular for the initial reduction) and ``hierarchical`` (smaller end results).
It simply combines the two by first running ``ddmin`` and then applying ``hierarchical`` on the already reduced output.