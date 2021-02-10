Speeding up delta debugging
===========================

Fundamentally, there are two parts of ddSMT that contribute to its runtime: its own computations (the "python side") and the calls to the solver (the "solver side").
Depending on which side is the bottleneck, there are very different strategies to make ddSMT run faster.
Most of the time, this can be identified by looking at the cpu usage of the ddSMT processes when run with ``-jn``: if the parent process is using a lot of CPU, but the child processes are not, the python side is slow; if the parent process is mostly idle but the child processes are at full capacity, the solver side is slow.
If you are not sure, you may want to look at :ref:`profiling data <Performance profiling>`.


The solver side is slow
^^^^^^^^^^^^^^^^^^^^^^^

If the bottleneck turns out to be on the solver side, there are a several options:

Make the solver faster
    Sometimes, it is possible to simply make the solver faster, for example because the binary was compiled in debug mode, but release mode would also work.

Increase parallelism
    ddSMT supports parallel checks via the ``-jn`` option. Increase ``n`` to run more checks in parallel, if your machine has unused cores.

Reduce the timeout
    The timeout is calculated once based on the runtime on the original input. If some simplifications were already done, the solver may already be faster on this intermediate output. Simply restart ddSMT on this intermediate output and the new timeout may be significantly lower.

Call the solver less often
    There are several ways to avoid calls to the solver that may not yield simplifications anyway. For example, you may want to initially disable most theories (``--no-arithmetic``, ``--no-bv`` and friends) as theory-specific simplifications are usually less powerful, at least initially.
    The ddSMT strategies are already build to do exactly that, but may do so suboptimally in rare cases.


The python side is slow
^^^^^^^^^^^^^^^^^^^^^^^

If the bottleneck is on the python side, there are some options as well:

Use `PyPy`
    Running python is known to be comparably slow, as it is interpreted at runtime.
    `PyPy <https://www.pypy.org/>`_ is an alternative to `cPython` (the standard python implementation) which uses a just-in-time compiler which can speed up the execution of python code drastically.

Decrease parallelism
    There is a certain overhead to running checks in parallel. If pickling takes a lot of time, ``-j1`` makes ddmin run in the main thread and avoids pickling altogether.

Use another delta debugger
    There are other delta debuggers, some of which may be better suited to give initial reductions faster than ddSMT. In particular, it may be worthwhile to try `linedd <https://github.com/sambayless/linedd>`_ or `ddsexpr <http://fmv.jku.at/ddsexpr/>`_ that have a significantly lower overhead.
    Still, you should run ddSMT on the resulting file as it has way more simplification techniques.
