Basic usage
====================================

The basic idea of ddSMT is that it runs some command with some input and records its behavior.
Then, ddSMT mutates the input such that the command still behaves the same and repeats doing so until no further mutations are possible.

The command is usually an SMT solver with options and the behavior is its exit code, standard output and error output. This, together with the computation time, constitutes what ddSMT calls the "golden run".
For any mutations that are accepted, the command must exit with the same exit code, standard output and error output. Additionally, ddSMT imposes a timeout that is twice the computation time of the golden run.

Afterwards, ddSMT traverses the input and applies all enabled mutations and applies the command to the resulting input. The first mutation on which the command behaves the same is accepted, the mutated input is adopted and new mutations are tested based on this new input.
Eventually, no further mutations are found and ddSMT terminates with the final output written to ``delta.out.smt2``.

For such a case, ddSMT is executed as follows:

.. code-block:: bash

    $ ddsmt input.smt2 bin/solver --option

ddSMT provides options that cover many common use cases. Please consult ``ddsmt --help`` for a full list.

* ``--mode-*``: these commands provide predefined modes for special use cases. See :doc:`modes` for more details.
* ``--timeout`` imposes a custom time limit (in seconds).
* ``--memout`` imposes a memory limit (in megabytes).
* ``--pretty-print`` and ``--wrap-lines`` post-process the output.
* ``--ignore-exitcode``, ``--ignore-output``, ``--match-out`` and ``--match-err`` allow to change how the comparison with the golden run is performed. See :ref:`lbl-comparison` for more details.
* ``--no-<group>`` disables all mutators from some group (like ``smtlib`` or ``arithmetic``).
* ``--no-<mutator>`` disables one particular mutator (like ``--no-replace-by-variable``. See :doc:`mutators` for more details.

.. _lbl-comparison:

Comparison with golden run
-----------------------------

If no arguments are given, a run is considered equivalent to the golden run if the exit code, the standard output and the error output are the same.
With ``--ignore-exitcode`` the exit code is ignored and only the (standard and error) outputs are considered.
With ``--ignore-output`` the (standard and error) outputs are ignored and only the exit code is considered.
If at least one of ``--match-out`` and ``--match-err`` are given, the outputs are not compared for equality but instead matched against the given regular expressions. Initially, ddSMT ensures that the golden run matches the given regular expressions.
The exact matching works as follows:

.. literalinclude:: ../ddsmt/checker.py
   :language: python3
   :linenos:
   :pyobject: matches_golden

Debugging unsoundness
---------------------

Sometimes bugs in solvers do not make the command crash or print an error message, but simply provide an incorrect result.
This is a particular nasty case for ddSMT, as the solver itself oftentimes can not detect this issue. Relying on annotations in the input (i.e. the SMTLIB status) is usually not a good idea, as mutating the input may very well change the correct output (i.e. flip from sat to unsat or vice-versa) but still retain the underlying error.

A better approach is usually to use another solver as reference solver and employ a wrapper script that checks whether the two solvers disagree. A wrapper script for this purpose is provided in :download:`scripts/result_differs.py <../scripts/result_differs.py>`. It runs two solvers (``'A'`` and ``'B'``) and compares their outputs. Note that this script expects the solver to only output ``sat`` or ``unsat``.

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
