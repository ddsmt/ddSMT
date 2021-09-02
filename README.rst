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
interesting behavior for a given command.
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

Requirements
------------

* `Python <https://www.python.org/>`_ version 3.6 or later
* `progressbar <https://pypi.org/project/progressbar>`_

Bibtex
------

For citing **ddSMT**, please use the following BibTex entry:

.. code-block:: text

  @inproceedings{DBLP:conf/cav/KremerNP20,
    author    = {Gereon Kremer and
                 Aina Niemetz and
                 Mathias Preiner},
    editor    = {Alexandra Silva and
                 K. Rustan M. Leino},
    title     = {ddSMT 2.0: Better Delta Debugging for the SMT-LIBv2 Language and Friends},
    booktitle = {Computer Aided Verification - 33rd International Conference, {CAV}
                 2021, Virtual Event, July 20-23, 2021, Proceedings, Part {II}},
    series    = {Lecture Notes in Computer Science},
    volume    = {12760},
    pages     = {231--242},
    publisher = {Springer},
    year      = {2021},
    url       = {https://doi.org/10.1007/978-3-030-81688-9\_11},
    doi       = {10.1007/978-3-030-81688-9\_11},
    timestamp = {Thu, 29 Jul 2021 13:41:58 +0200},
    biburl    = {https://dblp.org/rec/conf/cav/KremerNP20.bib},
    bibsource = {dblp computer science bibliography, https://dblp.org}
  }


Publications
------------

* Gereon Kremer, Aina Niemetz, Mathias Preiner.
  `ddSMT 2.0: Better Delta Debugging for the SMT-LIBv2 Language and Friends <https://github.com/ddsmt/ddsmt/tree/master/docs/publications/KremerNiemetzPreiner-CAV21.pdf>`_.
  CAV: 231-242. (2021)
* Aina Niemetz, Armin Biere.
  `ddSMT: A Delta Debugger for the SMT-LIB v2 Format. SMT 2013 <https://github.com/ddsmt/ddsmt/tree/master/docs/publications/NiemetzBiere-SMT13.pdf>`_.
  (2013)

Documentation
-------------

Documentation for **ddSMT** is available at https://ddsmt.readthedocs.io.

