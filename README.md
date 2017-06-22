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
  

 Changelog:
-------------------------------------------------------------------------------

  Since version 0.99-beta:  
    ..+ fix: smt parser: indexed idents vs '(' + ident starting with '_'
        (Thanks to Andres Nötzli)  
  Since version 0.98-beta:  
    ..+ fix: parser: did not split symbols on '('  
    ..+ added option to consider error output for determining failing input  
  Since version 0.97-beta:  
    ..+ fix: parser: to_int returned Real instead of Int  
        (Thanks to Morgan Deters)
    ..+ some other minor parser fixes  
  Since version 0.96-beta:  
    ..+ better timeout handling  
    ..+ parser: fixed and better handling of piped symbols and strings  
    ..+ option parser: fix: -o can now be combined with other options,
        e.g. -ov  
  Since version 0.95-beta:  
    ..+ added support for term substitution in get-value commands  
    ..+ fix: parser: tokenize: '(_x' when '_x' is a legal symbol   
  Since version 0.94-beta:  
    ..+ added consts caching  
    ..+ added substitution phase: eliminate redundant variable bindings  
    ..+ added substitution phase: bvand/bvor with true/false constant  
    ..+ parser: memory optimization (define ``__slots__``)  
    ..+ fix: parser: tokenize: regex too greedy  
  Since version 0.93-beta:  
    ..+ added sorts caching  
    ..+ added substitution phase: Boolean terms with fresh variables  
    ..+ fix: indexed functions handling  
    ..+ fix: parser: find_fun must consider sort for new nodes  
  Since version 0.92-beta:  
    ..+ added support for and/or with true/false constant  
    ..+ added support for term substitution in define-fun  
    ..+ do not substitute terms per command, but for all commands at once  
    ..+ disable select substitution (incorrect, redundant)  
    ..+ fix: unique id for substvars  
    ..+ fix: parser: select/store array sort check  
  Since version 0.91-beta:  
    ..+ arg parser: minor fix if cmd not given  
    ..+ parser: runtime optimizations  
    ..+ parser: minor fix in scope handling  
    ..+ parser: minor fix in get_pos() when ';' in symbol/string  
    ..+ added support for ':named' annotations  
  Since version 0.9-beta:  
    ..+ parser: fix handling of ';' within symbols and strings  


 Usage:
-------------------------------------------------------------------------------

  ddSMT minimizes a failure-inducing input in SMT-LIB v2 format based on the
  exit code of a given command when executed on that input. Note that any
  output produced during that execution is ignored.

  Note that ddSMT supports on-the-fly input minimization, i.e. as soon as an
  input minimization was successful it is available as the output file
  specified. Hence, it is not necessary to wait for ddSMT until completion,
  which can be useful for hard to minimize input files with long solver 
  execution times.

  Further note that ddSMT currently enables assertions and debug code by
  default (as it is still a beta release). Use -O to remove assertions and
  run ddSMT with python optimization flag -O enabled.


  Invocation:
    
    /path/to/ddsmt.py [<options>] <infile> <outfile> <cmd> [<cmd options>]


  Positional arguments:

    infile:   the input file in SMT-LIB v2 format  
    outfile:  the outputfile  
    cmd:      the command to be executed (with optional arguments)  

  Optional arguments:

    -h, --help  show this help message and exit  
    -t val      timeout for test runs in seconds (default: none)  
    -v          increase verbosity  
    -o          use err exit code AND err output to identify failing input  
                (default:err exit code only)  
    -O          remove assertions and debug code  
    --version   show program's version number and exit  


 References:
-------------------------------------------------------------------------------

  [1] http://www.smtlib.org  
  [2] http://docs.python.org/3/whatsnew/3.3.html#pep-393  
  [3] http://www.gnu.org/licenses/  

