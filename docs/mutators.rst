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

Note that a mutator can work in two ways: :code:`mutations` constructs **local** replacements for a given node. :code:`global_mutations` on the other hand constructs **global** replacements for the whole input, given both a specific node and the current input. The idea for the latter is that some node (:code:`linput`) triggers a simplification that needs to be applied to the whole input (:code:`ginput`) at once, for example variable renaming or simplification of constants that occur multiple times.

Below follows a list of all available mutators, grouped by their main concern: generic mutators that work on the node structure, SMT-LIB mutators that deal with certain SMT-LIB constructs, and mutators for individual SMT-LIB theories.

Most mutators can be enabled or disabled using options of the form :code:`--<mutator>` or :code:`--no-<mutator>` (like :code:`--no-constants`), most are enabled by default. The same is possible for all mutators from a group with :code:`--<group>` or :code:`--no-<group>` (like :code:`--no-generic`).

Generic mutators
----------------

.. autoclass:: ddsmt.mutators_core.Constants
.. autoclass:: ddsmt.mutators_core.EraseNode
.. autoclass:: ddsmt.mutators_core.MergeWithChildren
.. autoclass:: ddsmt.mutators_core.ReplaceByVariable
.. autoclass:: ddsmt.mutators_core.SortChildren
.. autoclass:: ddsmt.mutators_core.ReplaceByChild
.. autoclass:: ddsmt.mutators_core.TopLevelBinaryReduction

Arithmetic mutators
-------------------
.. autoclass:: ddsmt.mutators_arithmetic.ArithmeticSimplifyConstant
.. autoclass:: ddsmt.mutators_arithmetic.ArithmeticNegateRelation
.. autoclass:: ddsmt.mutators_arithmetic.ArithmeticSplitNaryRelation
.. autoclass:: ddsmt.mutators_arithmetic.ArithmeticStrengthenRelation

Bitvector mutators
------------------
.. autoclass:: ddsmt.mutators_bv.BVConcatToZeroExtend
.. autoclass:: ddsmt.mutators_bv.BVDoubleNegation
.. autoclass:: ddsmt.mutators_bv.BVElimBVComp
.. autoclass:: ddsmt.mutators_bv.BVEvalExtend
.. autoclass:: ddsmt.mutators_bv.BVExtractConstants
.. autoclass:: ddsmt.mutators_bv.BVExtractZeroExtend
.. autoclass:: ddsmt.mutators_bv.BVMergeReducedBW
.. autoclass:: ddsmt.mutators_bv.BVOneZeroITE
.. autoclass:: ddsmt.mutators_bv.BVReflexiveNand
.. autoclass:: ddsmt.mutators_bv.BVSimplifyConstant
.. autoclass:: ddsmt.mutators_bv.BVTransformToBool
.. autoclass:: ddsmt.mutators_bv.BVReduceBW

Boolean mutators
----------------
.. autoclass:: ddsmt.mutators_boolean.BoolDeMorgan
.. autoclass:: ddsmt.mutators_boolean.BoolDoubleNegation
.. autoclass:: ddsmt.mutators_boolean.BoolEliminateFalseEquality
.. autoclass:: ddsmt.mutators_boolean.BoolEliminateImplication
.. autoclass:: ddsmt.mutators_boolean.BoolNegateQuantifier
.. autoclass:: ddsmt.mutators_boolean.BoolXOREliminateBinary
.. autoclass:: ddsmt.mutators_boolean.BoolXORRemoveConstant

SMT-LIB mutators
----------------
.. autoclass:: ddsmt.mutators_smtlib.CheckSatAssuming
.. autoclass:: ddsmt.mutators_smtlib.EliminateDistinct
.. autoclass:: ddsmt.mutators_smtlib.InlineDefinedFuns
.. autoclass:: ddsmt.mutators_smtlib.LetElimination
.. autoclass:: ddsmt.mutators_smtlib.LetSubstitution
.. autoclass:: ddsmt.mutators_smtlib.PushPopRemoval
.. autoclass:: ddsmt.mutators_smtlib.SimplifyLogic
.. autoclass:: ddsmt.mutators_smtlib.SimplifyQuotedSymbols
.. autoclass:: ddsmt.mutators_smtlib.SimplifySymbolNames

String mutators
---------------
.. autoclass:: ddsmt.mutators_strings.StringContainsToConcat
.. autoclass:: ddsmt.mutators_strings.StringIndexOfNotFound
.. autoclass:: ddsmt.mutators_strings.StringReplaceAll
.. autoclass:: ddsmt.mutators_strings.StringSimplifyConstant


Writing new mutators
--------------------

If you need a certain simplification that is not covered by the existing mutators, feel free to implement your own mutator (and contribute it to ddSMT, if it actually helps). The following aims to be a guide on what needs to be done and what you should consider when writing a mutator.

- The mutators are organized following mostly the SMT-LIB theories. Figure out which theory fits your simplification best.
- Figure out whether you need to have a global view on the input, or whether seeing a single node suffices. Only do local simplifications, if you can!


Some guidelines for the implementation:

- Use the above :code:`Dummy` class as a template.
- Add your code to the corresponding :code:`mutators_<theory>.py` file.
- Register your mutator in the :code:`get_mutators` function towards the end of the file.
- Make sure your mutator is reasonably fast.
- Make sure to return a list of :code:`nodes.Node` objects.
- If your mutator returns a large number of candidates, avoid returning them as a list from :code:`mutations` and :code:`global_mutations`. Instead use :code:`yield` to turn your mutator into a generator.
- Add some unit tests (in ``ddsmt/tests/``). For your own sanity, test at least that it does what you expect and does not apply to unrelated nodes (i.e. :code:`filter` returns :code:`False`).