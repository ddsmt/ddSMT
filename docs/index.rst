
ddSMT: delta debugging for SMT-LIBv2
====================================

ddSMT is a delta debugger for Sat Modulo Theories (SMT) benchmarks in SMT-LIB v2 format. It serves as an input minimizer for SMT benchmarks on which a given executable shows unexpected or faulty behavior and supports all SMT-LIB v2 logics. For more details on the SMT-LIB v2 format see http://www.smtlib.org.

ddSMT is implemented in Python 3 and developed on a Linux OS. ddSMT requires Python version 3.2 or later. Note that due to major improvements with respect to the internal string representation in Python 3.3 (see http://docs.python.org/3/whatsnew/3.3.html#pep-393) it is strongly recommended to use Python version 3.3 or later.

ddSMT is free software released under the GPLv3. You should have received a copy of the GNU General Public License along with ddSMT (see file LICENSE). If not, see http://www.gnu.org/licenses/.

.. toctree::
   :maxdepth: 2

   installation
   usage
   mutators
   scenarios
   references
