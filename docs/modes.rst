Modes of operation
====================================

By default, ddSMT enables (almost) all mutators and allows to disable (and enable) all mutators individually.
Alternatively, ddSMT provides several modes:

Aggressive
----------
With ``--mode-aggressive`` only mutations are checked that remove a minimum percentage of the input (measured in the number of nodes).
This percentage can be specified with ``--aggressiveness``.

Beautify
--------------
With ``--mode-beautify`` additional mutators are enabled that merely make the output nicer, but (most probably) do not change solver behavior.
Depending on the input, this may trigger quite some additional simplifications and should probably one be enabled in an additional post-processing run.

Let elimination
---------------
With ``--mode-let-elimination`` only mutators that remove let binders are enabled, namely :class:`ddsmt.mutators_core.LetElimination` and :class:`ddsmt.mutators_core.LetSubstitution`.
If sometimes is useful to combine this mode with ``--run-unchecked`` to skip checking entirely and quickly eliminate all let binders.

Reduction only
--------------
With ``--mode-reduction-only`` only mutations are checked that reduce the size of the input (measured in the number of nodes).

Top-level binary reduction
--------------------------
With ``--mode-top-level-only`` only :class:`ddsmt.mutators_core.TopLevelBinaryReduction` is enabled. This mode only considers the top-level node, i.e. the commands, and performs a binary reduction technique that aims to remove multiple commands at once.