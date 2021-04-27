Minimization Strategies
=======================

**ddSMT** implements two fundamentally different strategies for input
minimization (``ddmin`` and ``hierarchical``), which can be combined
into the best of both worlds, strategy ``hybrid``.

Strategy ``ddmin`` implements a variant of the minimization strategy from
:cite:`Zeller1999`, and is the direct successor of what the original **ddSMT**
from :cite:`Niemetz2013` implemented: it tries to perform mutations on multiple
S-expressions in the input in parallel.
Strategy ``hierarchical`` performs a simple breadth-first traversal through the
input and applies mutations to every S-expression, one mutation at a time
(similar to what is presented as "hierarchical delta-debugging" in
:cite:`Brummayer2009`).
Strategy ``hybrid`` is the **default** strategy of **ddSMT**.
It first applies ``ddmin`` until a fixed point is reached, and then calls
strategy ``hierarchical`` on the simplified input.

For a more in-depth analysis of these minimization strategies, see
:cite:`Kremer2021`.

.. _ddmin-strategy:

The ``ddmin`` strategy
----------------------

``ddmin`` implements a variant of the minimization strategy described in
:cite:`Niemetz2013` and tries to perform simplifications on multiple
S-expressions in the input in parallel. Algorithm 1 shows the main loop of this
strategy. Foreach active mutatorM, the algorithm first collects all
S-expressions in the inputthat can be simplified byM(Line 4). Simplifications
are applied and checked in afashion similar to Zeller’s originalddminalgorithm
[24]: the set of S-expressionssexprsis partitioned into subsets of sizesize;
each S-expressione∈subsetissubstituted ininput(Line 7) with a simplification
suggested byM; the resultingsimplified inputcandidateis then checked if it
still triggers the original behavior(Line 8). Once all subsets of a given size
are checked,sexprsis updated basedon the current input and partitioned into
smaller subsets. As soon as all subsetsof size 1 were checked the algorithm
repeats these steps with the next availablemutator. The main loop of
strategyddminis run until a fixed point is reached,i.e., the input cannot be
further simplified. Strategyddminapplies mutators intwo  stages.  The  first
stage  targets  top-level  S-expressions  (e.g.,  specific  kindsof SMT-LIB
commands) until a fixed point to aggressively simplify the inputbefore applying
more expensive mutators in the second stage.


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
