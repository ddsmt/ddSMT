 Changelog:
-------------------------------------------------------------------------------

#### Since version 0.99-beta:
  + fix: smt parser: indexed idents vs ``(`` + ident starting with ``_``
    (Thanks to Andres Nötzli)  

#### Since version 0.98-beta:  
  + fix: parser: did not split symbols on ``(``  
  + added option to consider error output for determining failing input  

#### Since version 0.97-beta:  
  + fix: parser: ``to_int`` returned Real instead of Int
    (Thanks to Morgan Deters)  
  + some other minor parser fixes  

#### Since version 0.96-beta:  
  + better timeout handling  
  + parser: fixed and better handling of piped symbols and strings  
  + option parser: fix: ``-o`` can now be combined with other options,
    e.g. ``-ov``  

#### Since version 0.95-beta:  
  + added support for term substitution in get-value commands  
  + fix: parser: tokenize: ``(_x`` when ``_x`` is a legal symbol   

#### Since version 0.94-beta:  
  + added consts caching  
  + added substitution phase: eliminate redundant variable bindings  
  + added substitution phase: bvand/bvor with true/false constant  
  + parser: memory optimization (define ``__slots__``)  
  + fix: parser: tokenize: regex too greedy  

#### Since version 0.93-beta:  
  + added sorts caching  
  + added substitution phase: Boolean terms with fresh variables  
  + fix: indexed functions handling  
  + fix: parser: ``find_fun`` must consider sort for new nodes  

#### Since version 0.92-beta:  
  + added support for and/or with true/false constant  
  + added support for term substitution in define-fun  
  + do not substitute terms per command, but for all commands at once  
  + disable select substitution (incorrect, redundant)  
  + fix: unique id for substvars  
  + fix: parser: select/store array sort check  

#### Since version 0.91-beta:  
  + arg parser: minor fix if cmd not given  
  + parser: runtime optimizations  
  + parser: minor fix in scope handling  
  + parser: minor fix in ``get_pos()`` when ``;`` in symbol/string  
  + added support for ``:named`` annotations  

#### Since version 0.9-beta:  
  + parser: fix handling of ``;`` within symbols and strings  



