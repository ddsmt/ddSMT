Mutators
====================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

Mutators are the drivers of minimizations. Given a node, they apply modifications to produce new (simpler) nodes that can replace the original one.
A mutator class should roughly look like this:

.. code-block:: python3

    class Dummy:
        def filter(self, node):
            """Check whether this mutators can be applied to the given node.
            If not specified, we use `True`"""
            return True
        def mutations(self, node):
            """Create a list of mutations of the given node."""
            return []
        def global_mutations(self, linput, ginput):
            """Create a list of mutations of the whole input."""
            return []
        def __str__(self):
            """Returns a description of this mutator."""
            return "dummy"

Note that a mutator can work in two ways: ``mutations`` constructs **local** replacements for a given node. ``global_mutations`` on the other hand constructs **global** replacements for the whole input, given both a specific node and the current input. The idea for the latter is that some node (``linput``) triggers a simplification that needs to be applied to the whole input (``ginput``) at once, for example variable renaming or simplification of constants that occur multiple times.

Below follows a list of all available mutators, grouped by their main concern: generic mutators that work on the node structure, SMT-LIB mutators that deal with certain SMT-LIB constructs, and mutators for individual SMT-LIB theories.

Most mutators can be enabled or disabled using options of the form ``--<mutator>`` or ``--no-<mutator>`` (like ``--no-constants``), most are enabled by default. The same is possible for all mutators from a group with ``--<group>`` or ``--no-<group>`` (like ``--no-generic``).

Generic mutators
----------------
.. automodule:: ddsmt.mutators_core

Arithmetic mutators
-------------------
.. automodule:: ddsmt.mutators_arithmetic


Bit-vector mutators
-------------------
.. automodule:: ddsmt.mutators_bv

Boolean mutators
----------------
.. automodule:: ddsmt.mutators_boolean

Floating-Point mutators
-----------------------
.. automodule:: ddsmt.mutators_fp

SMT-LIB mutators
----------------
.. automodule:: ddsmt.mutators_smtlib

String mutators
---------------
.. automodule:: ddsmt.mutators_strings


Writing new mutators
--------------------

If you need a certain simplification that is not covered by the existing mutators, feel free to implement your own mutator (and contribute it to ddSMT, if it actually helps). The following aims to be a guide on what needs to be done and what you should consider when writing a mutator.

- The mutators are organized following mostly the SMT-LIB theories. Figure out which theory fits your simplification best.
- Figure out whether you need to have a global view on the input, or whether seeing a single node suffices. Only do local simplifications, if you can!


Some guidelines for the implementation:

- Use the above ``Dummy`` class as a template.
- Add your code to the corresponding ``mutators_<theory>.py`` file.
- Register your mutator in the ``get_mutators`` function towards the end of the file.
- Make sure your mutator is reasonably fast.
- Make sure to return a list of ``nodes.Node`` objects.
- If your mutator returns a large number of candidates, avoid returning them as a list from ``mutations`` and ``global_mutations``. Instead use ``yield`` to turn your mutator into a generator.
- Add some unit tests (in ``ddsmt/tests/``). For your own sanity, test at least that it does what you expect and does not apply to unrelated nodes (i.e. ``filter`` returns ``False``).