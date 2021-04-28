Quickstart
==========

The main purpose of **ddSMT** is to *minimize* an input that triggers some
(erroneous) behavior when fed to a given command.
**ddSMT** first executes the command on the given input and records its behavior
(exit code, standard output and error channels).
After that, it mutates the input while *preserving the behavior* of the given
command until no further mutations are possible.

**ddSMT** aims at extracting a *minimal working example*, that is, an input
that is *as small as possible* but still triggers the original faulty behavior
of the executed command.
Such a command is usually a call to an SMT solver executable with command line
options (but can be a call to any tool that expects the SMT-LIB language or an
extension/dialect of the language as input).

The initial execution of the given command (the *golden run*) records its
behavior as a combination of

* the standard output
* the standard error output
* the exit code

For any mutations that are accepted, the command must exit with the same
behavior.
Additionally, **ddSMT** imposes a time limit for executing the command that is
by default computed based on the run time of the golden run.
Optionally, **ddSMT** allows to configure this time limit, and to ignore
output channels.

**ddSMT** implements several :ref:`minimization strategies <minimization
strategies>` to derive inputs by applying all enabled mutators.
After the golden run, it generates mutated inputs and executes the given
command on these inputs.
The first mutated input on which the command behaves the same as on the
original input is accepted, and new mutations are tested based on
this new input.
When no further mutations are possible, **ddSMT** terminates with the final
output written to the specified output file.

.. note::
  **ddSMT** writes (intermediate) accepted mutations to the specified output
  file. This allows to already use intermediate minimizations even when
  **ddSMT** is not yet done minimizing.


How to run ddSMT
----------------

Given an input file :download:`example/input.smt2` and a call to
:download:`example/solver` with command line option :code:`--option`, **ddSMT**
is executed to write minimized input to :code:`output.smt2` as follows:

.. code-block:: bash

    $ ddsmt input.smt2 output.smt2 solver --option

**ddSMT** provides many options that cover common use cases.
Consult the :ref:`full option listing <Full option listing>` for an exhaustive
list.
The most commonly used options are:

* ``--jobs`` (or ``-j``)
  to set the number of processes allowed to run in parallel (uses the number of
  CPU cores minus two by default).
* ``--memout``
  to impose a memory limit (in MB), otherwise memory usage is not limited.
* ``--timeout``
  to impose a custom time limit (in seconds), otherwise the time limit is
  computed based on the run time of the initial run.
* ``--strategy``
  to select the minimization strategy (see :ref:`minimization strategies`).
* ``--ignore-output``
  to ignore output on standard output and error channels.
* ``--match-out`` and ``--match-err``
  to define pattern matches against on the standard channels (see :ref:`How
  Behavior is Compared with the Golden Run`).

How Behavior is Compared with the Golden Run
--------------------------------------------

By default, a run on mutated input is considered equivalent in behavior to the
golden run if the exit code, the standard output and the error output are the
same as for the golden run.

For example, assume that our example from above produces the following output:

.. code-block:: bash

    $ example/solver --option example/input.smt2
    printing something to stdout
    error: this message is printed to stderr

    $ echo $?   # the exit code
    1

By default
**ddSMT** will exactly match
:code:`printing something to stdout` against what is printed on `stdout` and
:code:`error: this message is printed to stderr` against what is printed on
`stderr` for mutated inputs, and check if the exit code is :code:`1`.
When increasing the verbosity level with :code:`-v`, it will print some
information about the golden run and progress:

.. command-output:: ../bin/ddsmt -v example/input.smt2 example/output.smt2 example/solver --option
   :ellipsis: 17

Now, let's assume we want to ignore output on `stdout` and `stderr`, we enable
option `--ignore-output`:

.. code:: bash

    $ ../bin/ddsmt -v --ignore-output example/input.smt2 example/output.smt2 example/solver --option

.. note::

  With option :code:`--ignore-output` enabled, **ddSMT** will still report
  output on both channels for the golden run with option code:`-v`.
  When comparing behavior, however, this output is ignored, and only the
  exit code is matched.

Now, let's assume our command yields output on`stdout` or `stderr` that
contains information that depends on the actual execution, e.g., a stack trace.
In this case, matching against the full output will never be successful,
and we rather only want to check if a phrase occurs in the output.
We can achieve this with options :code:`--match-out` (for `stdout`) and
:code:`--match-err` (for `stderr`) as follows:

.. code:: bash

    $ ../bin/ddsmt -v --match-out things example/input.smt2 example/output.smt2 example/solver --option

    $ ../bin/ddsmt -v --match-err error example/input.smt2 example/output.smt2 example/solver --option

In case you are wondering how the comparison of a run on mutated input with the
golden run is implemented, this is the actual code that is implemented in
**ddSMT**:

.. literalinclude:: ../ddsmt/checker.py
   :language: python3
   :linenos:
   :pyobject: matches_golden


Full Option Listing
-------------------

.. command-output:: ../bin/ddsmt --help-all
