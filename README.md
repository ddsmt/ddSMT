 ddSMT
===============================================================================

  ddSMT is a delta debugger for Sat Modulo Theories (SMT) benchmarks in
  SMT-LIB v2 format. It serves as an input minimizer for SMT benchmarks on
  which a given executable shows unexpected or faulty behavior and supports
  all SMT-LIB v2 logics. For more details on the SMT-LIB v2 format see [1].

  ddSMT is implemented in Python 3 and developed on a Linux OS. ddSMT requires
  Python version 3.2 or later. Note that due to major improvements with respect
  to the internal string representation in Python 3.3 (see [2]) it is strongly 
  recommended to use Python version 3.3 or later.

  ddSMT is free software released under the GPLv3. You should have received a
  copy of the GNU General Public License along with ddSMT (see file COPYING).
  If not, see [3].


 Download:
-------------------------------------------------------------------------------

  The latest version of ddSMT can be found on GitHub:
  https://github.com/aniemetz/ddSMT
  

 Usage:
-------------------------------------------------------------------------------

  ddSMT minimizes a failure-inducing input in SMT-LIB v2 format based on the
  exit code and the error output of a given command when executed on that input.

  Note that ddSMT supports on-the-fly input minimization, i.e. as soon as an
  input minimization was successful it is available as the output file
  specified. Hence, it is not necessary to wait for ddSMT until completion,
  which can be useful for hard to minimize input files with long solver 
  execution times.


#### Invocation:
    
    /path/to/ddsmt.py [<options>] <infile> <outfile> <cmd> [<cmd options>]


#### Positional arguments:

    infile:   the input file in SMT-LIB v2 format  
    outfile:  the outputfile  
    cmd:      the command to be executed (with optional arguments)  

#### Optional arguments:

    -h, --help  show this help message and exit  
    -t val      timeout for test runs in seconds (default: none)  
    -v          increase verbosity  
    -o          use err exit code only to identify failing input
                (default: error exit code AND stderr output)  
    --version   show program's version number and exit  


 References:
-------------------------------------------------------------------------------

  [1] http://www.smtlib.org  
  [2] http://docs.python.org/3/whatsnew/3.3.html#pep-393  
  [3] http://www.gnu.org/licenses/  

