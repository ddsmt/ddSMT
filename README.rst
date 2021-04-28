.. image:: https://img.shields.io/github/workflow/status/ddsmt/ddSMT/main
  :alt: GitHub Workflow Status
  :target: https://github.com/ddsmt/ddSMT/actions

.. image:: https://img.shields.io/readthedocs/ddsmt/master
  :alt: Read the Docs
  :target: https://ddsmt.readthedocs.io

.. image:: https://img.shields.io/pypi/v/ddsmt
  :alt: PyPI
  :target: https://pypi.org/project/ddSMT/

.. image:: https://img.shields.io/pypi/pyversions/ddsmt
  :alt: PyPI - Python Version
  :target: https://pypi.org/project/ddSMT/

.. image:: https://img.shields.io/pypi/l/ddsmt
  :alt: PyPI - License
  :target: https://github.com/ddsmt/ddSMT/blob/master/LICENSE


ddSMT: Delta Debugging for SMT-LIBv2
====================================

**ddSMT** is a delta debugger for input in the `SMT-LIB
<http://www.smtlib.org>`_ language and its dialects and extensions.
It serves as an **input minimizer** for SMT-LIB(-like) input that triggers
unwanted behavior for a given command.
Noteworthy examples for supported extensions of the SMT-LIB language are 
the `SyGuS <https://sygus.org/>`_ input format and the extension for
encoding `separation logic <https://sl-comp.github.io/docs/smtlib-sl.pdf>`_
problems.
For more details on the SMT-LIB language, see http://www.smtlib.org.

**ddSMT** is implemented in Python 3 and developed on a Linux OS.

**ddSMT** is free software released under the GPLv3.
You should have received a copy of the GNU General Public License along with
**ddSMT** (see file `LICENSE
<https://github.com/ddsmt/ddSMT/blob/master/LICENSE>`_).
If not, see http://www.gnu.org/licenses/.

Requirements:
-------------

* `Python <https://www.python.org/>`_ version 3.6 or later
* `progressbar <https://pypi.org/project/progressbar>`_

Documentation:
--------------

Documentation for **ddSMT** is available at https://ddsmt.readthedocs.io.
