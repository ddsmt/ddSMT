How to Speed Up Delta Debugging
===============================

Overall run time of **ddSMT** can be split into two parts: the run time
contributed by **ddSMT** code itself (the :ref:`"ddSMT side" <the ddsmt side is
slow>`), and the run time of the calls to the command under test (the
:ref:`"solver side" <the solver side is slow>`).
Depending on which side is the bottleneck, there are different strategies
to speed up **ddSMT** delta debugging sessions.

How to Identify Which Side is The Bottleneck
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Most of the time, which side is the bottleneck can be identified by looking at
the CPU usage of the
**ddSMT** processes when run with option :code:`-jn`.
If the parent process is using a lot of CPU but the child processes are not,
the :ref:`ddSMT side is slow <the ddsmt side is slow>`.
If the parent process is mostly idle but the child processes are at full
capacity, the :ref:`solver side is slow <the solver side is slow>`.
If you are not sure, you may want to look at :ref:`profiling data <Performance
profiling>`.


The Solver Side is Slow
^^^^^^^^^^^^^^^^^^^^^^^

If the bottleneck is on the solver side, there are a several options:

Make the solver faster
    Sometimes, it is simple to make the solver faster, for example when the
    binary was compiled in debug mode, but release mode would also work.

Increase parallelism
    **ddSMT** supports parallel checks via the :code:`-jn` option.
    Increase ``n`` to run more checks in parallel, if your machine has unused
    cores.

Reduce the time limit
    The time limit for executing the command under test is calculated once,
    based on the run time of the golden run.
    It often happens that the solver run time improves after some initial
    simplifications.
    If the solver is already faster on intermediate output, restart **ddSMT**
    on this output and the new time limit may be significantly slower.

Call the solver less often
    There are several ways to avoid calls to the solver that may not yield
    simplifications anyway.
    For example, you can disable certain mutators, or you may want to initially
    disable most theories (options :code:`--no-arithmetic`, :code:`--no-bv` and
    friends), since theory-specific simplifications are usually less powerful
    in the initial simplification phase.
    The **ddSMT** strategies already implement some staging to prioritize
    mutators with more impact in the initial phases, but there may be room
    for improvement in some cases, depending on the input.


The ddSMT Side is Slow
^^^^^^^^^^^^^^^^^^^^^^

If the bottleneck is on the **ddSMT** side, the following options may help:

Use `PyPy`
    Running `CPython` (the standard Python implementation) is known to be
    comparably slow, as it is interpreted at runtime.
    `PyPy <https://www.pypy.org/>`_ is an alternative to `CPython` that uses a
    just-in-time compiler which can speed up the execution of Python code
    drastically.

Decrease parallelism
    There is a certain overhead to running checks in parallel.
    Decreasing the number of processes may help.

Combine ddSMT with alternative delta debugging tools
    Sometimes, delta debugging tools that are more general purpose can help
    to get an initial reduction faster, which can then be further simplified
    with **ddSMT**.
    In particular, it may be worthwhile to try `linedd
    <https://github.com/sambayless/linedd>`_ or `ddsexpr
    <http://fmv.jku.at/ddsexpr/>`_ which both have a significantly lower
    overhead.
