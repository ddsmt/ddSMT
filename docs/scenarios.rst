Common scenarios
====================================

By default, ddSMT enables all mutators and allows to disable (and enable) all mutators individually.
Here, we list approaches for some common scenarios that users face.


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


Eliminate let binders
---------------------
SMT-LIB let binders are notorious for impeding simplification during delta debugging. While the respective mutators, :class:`ddsmt.mutators_smtlib.LetElimination` and :class:`ddsmt.mutators_smtlib.LetSubstitution`, take care of them eventually, it can take a long time.
If the input contains a lot of let binders, it is often useful to first eliminate them by running with only these two mutators enabled and then debug the resulting files without let binders.

.. code-block:: bash

    $ ddsmt --disable-all --let-elimination --let-substitution <input> <output> <solver>

If you are reasonably sure that the issue is unrelated to let binders itself, you can use ``--unchecked`` to not even call the solver. Note that you should do substitution and elimination in separate runs in this case:

.. code-block:: bash

    $ ddsmt --disable-all --let-substitution <input> <output> <solver>
    $ ddsmt --disable-all --let-elimination <input> <output> <solver>

