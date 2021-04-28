Common Scenarios
================

Within the SMT community, the notion of **failure** is generally defined as
one of the following:

* **abnormal termination** or **crashes** (including segmentation
  faults and assertion failures)
* **performance regressions** (solver performs significantly worse on an
  input than reference solver)
* **unsoundness** (solver answers `sat` instead of `unsat` and vice versa)
* **model unsoundness** (the determined satisfiability model is incorrect)
* **conflict unsoundness** (the determined proof of unsatisfiability is
  incorrect)

`Abnormal termination` and `crashes` are the most common and the default
use case of **ddSMT**.

`Model unsoundness` and `conflict unsoundness` issues, on the other hand, are
more involved since they typically require some checking mechanism to determine
if a generated model or proof is incorrect.
Most SMT solvers implement such mechanisms and will throw an assertion failure
in debug mode when such a failure is detected, and in that case, these failures
fall into the first category.
However, if they don't, external checking tools are required.
**ddSMT** does not provide such tools.

For `perfomance regressions` and `unsoundness` issues, **ddSMT** provides
easy-to-use and easy-to-adapt wrapper scripts in directory :code:`scripts`.
In this guide, we show how to debug issues that fall into these two categories
and address how to approach other common scenarios users may face.


Debugging Unsoundness
---------------------

Unsoundness issues are issues where a solver terminates successfully, but
with the wrong answer (`sat` instead of `unsat` and vice versa).
This is a particular nasty case for delta debugging if the solver cannot detect
the issue (for example, by checking the generated model or proof).
Some solvers check their answer against the expected status of an SMT-LIB input
if it is provided via :code:`(set-info :status ...)`, but for delta debugging
purposes, it is a bad idea to rely on this status to check for soundness since
mutations can flip this status but still reveal the underlying problem.

A better approach is to check the answer against the answer of a reference
solver.
This can be achieved by either using the builtin ``--cross-check`` option, or
the provided :download:`scripts/results_differs.py
<../scripts/result_differs.py>` script.

Using Option ``--cross-check``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
If ``--cross-check`` is given, **ddSMT** checks whether the command
under test and the reference command behave the same as their respective golden
runs (see :ref:`How Behavior is Compared with the Golden Run`),
As with the default use case, cross checking can be refined in terms of what
output to consider via
:code:`--ignore-output-cc` (both `stdout` and `stderr` channels are ignored),
:code:`--match-err-cc` (pattern match `stderr` against a given string)
and :code:`--match-out-cc` (pattern match `stdout` against a given string).

Using Wrapper Script ``result_differs.py``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For cases where the ``--cross-check`` option is not be flexible enough,
**ddSMT** provides a wrapper script :download:`scripts/result_differs.py
<../scripts/result_differs.py>`.
The script runs two solvers :code:`A` and :code:`B`, expects them to output
`sat` or `unsat` and compares their output.
This can be useful if you want to allow that the input flips from `sat`
to `unsat` (or vice versa) as long as the solver under test still disagrees.

This script can be adapted to any other kind of further analysis that you
might need but is not supported by the cross check option, for example, if you
want to compare the output of the two solvers and want to allow any output to
compare models or error messages.

.. literalinclude:: ../scripts/result_differs.py
   :language: python3
   :linenos:


Debugging performance issues
----------------------------

Similarly nasty are performance issues, and as for soundness issues it usually only makes sense to assess performance relative to another solver. Again a wrapper script for this purpose is provided in :download:`scripts/compare_time.py <../scripts/compare_time.py>`. This script runs two solvers (``'A'`` and ``'B'``) and checks whether the slower one is (still) much slower than the faster one.
As it outputs some information about the timings, it should be used in combination with ``--ignore-output``.

.. literalinclude:: ../scripts/compare_time.py
   :language: python3
   :linenos:


Eliminate let binders
---------------------
SMT-LIB let binders are notorious for impeding simplification during delta debugging. While the respective mutators, :class:`ddsmt.mutators_smtlib.LetElimination` and :class:`ddsmt.mutators_smtlib.LetSubstitution`, take care of them eventually, it can take a long time.
If the input contains a lot of let binders, it is often useful to first eliminate them by running with only these two mutators enabled and then debug the resulting files without let binders.

.. code-block:: bash

    $ ddsmt --disable-all --let-elimination --let-substitution <input> <output> <solver>

If you are reasonably sure that the issue is unrelated to let binders itself, you can use ``--unchecked`` to not even call the solver. Note that you should do substitution and elimination in separate runs in this case:

.. code-block:: bash

    $ ddsmt --unchecked --disable-all --let-substitution <input> <output> <solver>
    $ ddsmt --unchecked --disable-all --let-elimination <input> <output> <solver>

