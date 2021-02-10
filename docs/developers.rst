Developer guide
====================================


Performance profiling
---------------------

ddSMT comes with ``--profile`` which uses ``cProfile`` to collect profiling data.
As ``cProfile`` has no support for parallelism, ddSMT collect separate profiles for every process and combines them appropriately: it generates one profile for the main process, and one combined profile for all subprocesses.


Reading profiling data
^^^^^^^^^^^^^^^^^^^^^^

ddSMT dumps cProfile data as ``.profile.prof`` (and ``.profile-<pid>.prof`` for the subprocesses), and you may just analyze them on your own.
ddSMT itself renders this data using ``gprof2dot`` and ``dot`` into png images ``profile.png`` and ``profile-workers.png``, which usually give a pretty good impression on the performance profile.
Note that the main profile also contains checks that were run in the main process, mostly from the :ref:`ddmin strategy <ddmin-strategy>` that decides to run in sequential mode.

The "solver side" mostly consists of the ``checker.check()`` function, with ``subprocess.communicate()`` and ``select.poll()`` usually spending most of the runtime.

The "python side" is pretty much everything else.
The most expensive parts are usually applying a simplification (``mutator_utils.apply_simp`` and ``nodes.substitute()``), writing inputs to files (``nodeio.write_smtlib_for_checking``) and pickling (``nodes.__getstate__`` and ``nodes.__setstate__``). 
