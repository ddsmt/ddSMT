Installation
====================================

There are several ways to obtain and install ddSMT.
If you just want to use a stable version of ddSMT use

.. code-block:: bash

    $ pip3 install ddsmt
    $ ddsmt --version

If you are interested in a specific version of ddSMT (including development versions) use the following commands to list available versions and install a specific one:

.. code-block:: bash

    $ pip3 install ddsmt==
    $ pip3 install ddsmt==<version>

If you want to experiment with ddSMT, for example to test :ref:`custom mutators <Writing new mutators>`, clone ddSMT from github and run it from your working copy:

.. code-block:: bash

    $ git clone https://github.com/ddsmt/ddSMT.git
    $ ddSMT/bin/ddsmt --version

