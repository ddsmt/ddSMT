Minimization Strategies
=======================

**ddSMT** implements two fundamentally different strategies for input
minimization (**ddmin** and **hierarchical**), which can be combined
into the best of both worlds, strategy **hybrid**.

Strategy **ddmin** implements a variant of the minimization strategy from
:cite:`Zeller1999`, and is the direct successor of what the original **ddSMT**
from :cite:`Niemetz2013` implemented: it tries to perform mutations on multiple
S-expressions in the input in parallel.
Strategy **hierarchical** performs a simple breadth-first traversal through the
input and applies mutations to every S-expression, one mutation at a time
(similar to what is presented as "hierarchical delta-debugging" in
:cite:`Brummayer2009`).
Strategy **hybrid** is the **default** strategy of **ddSMT**.
It first applies **ddmin** until a fixed point is reached, and then calls
strategy **hierarchical** on the simplified input.

For a more in-depth analysis of these minimization strategies, see
:cite:`Kremer2021`.

.. _ddmin-strategy:

The **ddmin** strategy
----------------------

Strategy **ddmin** tries to perform simplifications on multiple S-expressions
in the input in parallel.
The algorithm below shows the main loop of **ddmin** in pseudo code.
For each active mutator :code:`M`, the algorithm first collects all
S-expressions in the input that can be simplified by :code:`M` (Line 4).
Simplifications are applied and checked in a fashion similar to the original
`ddmin` algorithm :cite:`Zeller2002`:

* the set of S-expressions :code:`sexprs` is partitioned into subsets of size
  :code:`size`
* each S-expression :code:`e` from :code:`subset` is substituted in the current
  :code:`input` (Line 7) with a simplification suggested by mutator :code:`M`
* the resulting simplified input candidate is then checked if it still triggers
  the original behavior from the golden run (Line 8)

Once all subsets of a given size are checked, :code:`sexprs` is updated based
on the current input and partitioned into smaller subsets.
As soon as all subsets of size 1 were checked, these steps are repeated
with the next mutator.
This loop is run until the input cannot be further simplified.

**ddmin** applies mutators in two  stages.  The  first stage  targets
top-level  S-expressions  (e.g., specific kinds of SMT-LIB commands) until a
fixed point to aggressively simplify the input before applying more expensive
mutators in the second stage.

.. image:: img/ddmin.png
  :alt: Pseydo-code of the main algorithm of the ddmin strategy.


The **hierarchical** strategy
-----------------------------

At its core, this strategy uses a depth-first traversal of the input and applies all mutators locally to the current node. This allows for multiple mutators to work simultaneously on the same node and thus a fast collaboration of multiple mutators.

**hierarchical** proceeds in multiple stages: the first stages perform aggressive minimization using binary reduction or only a small set of selected mutators; the penulatimate state employs all but a few mutators that usually only have cosmetic effects; the final stage includes all available mutators.
This approach aims to be reasonably fast in reducing the input initially, but then allowing for more complex and more detailed simplfications once the input is smaller.

Within a single run, **hierarchical** employs a fixed-point loop and only terminates when no simplification was successfull for a whole input traversal.
For a single node, **hierarchical** iterates over all (currently active) mutators in an arbitrary order and simply checks all suggested simplifications, accepting the first successfull one.
Once a simplification was accepted, **hierarchical** continues the input traversal (roughly) from the node it just simplified.


The **hybrid** strategy
-----------------------

This strategy aims to combine the advantages of **ddmin** (generally better performance, in particular for the initial reduction) and **hierarchical** (smaller end results).
It simply combines the two by first running **ddmin** and then applying **hierarchical** on the already reduced output.
