Developer Guide
===============


Performance Profiling
---------------------

**ddSMT** provides option :code:`--profile`, which uses :code:`cProfile` to
collect profiling data.
Since :code:`cProfile` has no support for parallelism, **ddSMT** collects
separate profiles for every process and combines them accordingly:
it generates one profile for the main process, and one combined profile for all
subprocesses.


Reading profiling data
^^^^^^^^^^^^^^^^^^^^^^

**ddSMT** dumps :code:`cProfile` data as :code:`.profile.prof` (for the main
process) (and :code:`.profile-<pid>.prof` for the subprocesses).
**ddSMT** renders this data using :code:`gprof2dot` and :code:`dot` into
:code:`.png` images :code:`profile.png` and :code:`profile-workers.png`.
These images usually give a pretty good intuition about the performance profile.

.. note::
  Strategy :ref:`ddmin <ddmin-strategy>` sometimes does not delegate work
  to worker processes, but decides to run in sequential mode.
  If this is the case, the main profile will contain work that you might expect
  to actually have been delegated.

The "solver side" mostly consists of the :code:`checker.check()` function,
which makes the actual call to the command under test.
Calls to :code:`subprocess.communicate()` and :code:`select.poll()` are usually
responsible for the largest chunk of the run time spent on the "ddSMT side".

The "ddSMT side" is pretty much everything else.
The most expensive parts are usually

* applying a simplification (:code:`mutator_utils.apply_simp` and :code:`nodes.substitute()`)
* writing inputs to files (:code:`nodeio.write_smtlib_for_checking`)
* pickling (:code:`nodes.__getstate__` and :code:`nodes.__setstate__`) 
