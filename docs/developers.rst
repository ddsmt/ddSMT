Developer guide
====================================


Performance profiling
---------------------

ddSMT comes with ``--profile`` which uses ``cProfile`` to collect profiling data.
As ``cProfile`` has no support for parallelism, ddSMT collect separate profiles for every process and combines them appropriately: it generates one profile for the main process, and one combined profile for all subprocesses.

Fundamentally, there are two parts of ddSMT that contribute to its runtime: its own computations (the "python side") and the calls to the solver (the "solver side").
Depending on which side is the bottleneck, there are very different strategies to make ddSMT run faster.


Reading profiling data
^^^^^^^^^^^^^^^^^^^^^^

ddSMT dumps cProfile data as ``.profile.prof`` (and ``.profile-<pid>.prof`` for the subprocesses), and you may just analyze them on your own.
ddSMT itself renders this data using ``gprof2dot`` and ``dot`` into png images ``profile.png`` and ``profile-workers.png``, which usually give a pretty good impression on the performance profile.
Note that the main profile also contains checks that were run in the main process, mostly from the :ref:`ddmin strategy <ddmin-strategy>` that decides to run in sequential mode.

The "solver side" mostly consists of the ``checker.check()`` function, with ``subprocess.communicate()`` and ``select.poll()`` usually spending most of the runtime.

The "python side" is pretty much everything else.
The most expensive parts are usually applying a simplification (``mutator_utils.apply_simp`` and ``nodes.substitute()``), writing inputs to files (``nodeio.write_smtlib_for_checking``) and pickling (``nodes.__getstate__`` and ``nodes.__setstate__``). 


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
