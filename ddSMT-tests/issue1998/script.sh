#!/bin/bash

./../../ddsmt.py -vv -o -r -t 5 --round 5 ./ball_count_2d_slope.05.seq_lazy_lemmas_global_14.smt2 ./edit-version.min.smt2 ./ball_count_2d_slope.05.seq_lazy_lemmas_global_14.sh

vim ./edit-version.min.smt2
