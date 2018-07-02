#!/bin/bash

./../../ddsmt.py -vv -o -r -t 5 ./z3.607838.smt2 ./edit-version.min.smt2 ./z3.607838.sh

vim ./edit-version.min.smt2
