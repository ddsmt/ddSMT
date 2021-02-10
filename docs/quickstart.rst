Quick start
====================================

The basic idea of ddSMT is that it runs some command with some input and records its behavior.
Then, ddSMT mutates the input such that the command still behaves the same and repeats doing so until no further mutations are possible.

The command is usually an SMT solver with options and the behavior is its exit code, standard output and error output. This, together with the computation time, constitutes what ddSMT calls the "golden run".
For any mutations that are accepted, the command must exit with the same exit code, standard output and error output. Additionally, ddSMT imposes a timeout that is usually computed based on the computation time of the golden run.

Afterwards, ddSMT employs a certain :ref:`strategy <Minimization strategies>` to generate derived inputs by applying all enabled mutators and executes the command with these derived input. The first mutation on which the command behaves the same is accepted, the mutated input is adopted and new mutations are tested based on this new input.
Eventually, no further mutations are found and ddSMT terminates with the final output written to the specified output file.

For such a case, ddSMT is executed as follows:

.. code-block:: bash

    $ ddsmt input.smt2 output.smt2 bin/solver --option

ddSMT provides many options that cover common use cases, consult the :ref:`full option listing <Full option listing>` for an exhaustive list. The following is a list of the most commonly used options:

* ``--jobs`` (or ``-j``) sets the number of processes allowed to run in parallel, uses the number of cpu cores minus two by default.
* ``--memout`` imposes a memory limit (in megabytes), otherwise memory usage is not limited.
* ``--timeout`` imposes a custom time limit (in seconds), otherwise the time limit is computed based on the running time of the initial run.
* ``--strategy`` selects between the ``ddmin`` strategy and the ``hierarchical`` strategy (see :doc:`strategies`).
* ``--ignore-output``, ``--match-out`` and ``--match-err`` allow to change how the comparison with the golden run is performed. See :ref:`Comparison with golden run` for more details.

Comparison with golden run
-----------------------------

If no arguments are given, a run is considered equivalent to the golden run if the exit code, the standard output and the error output are the same.
With ``--ignore-output`` the (standard and error) outputs are ignored and only the exit code is considered.
If at least one of ``--match-out`` and ``--match-err`` are given, the outputs are not compared for equality but instead matched against the given regular expressions. Initially, ddSMT ensures that the golden run matches the given regular expressions.
The exact matching works as follows:

.. literalinclude:: ../ddsmt/checker.py
   :language: python3
   :linenos:
   :pyobject: matches_golden


Full option listing
-------------------

.. command-output:: ../bin/ddsmt --help-all
