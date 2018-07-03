#!/bin/bash

./cvc4 --no-e-matching --no-quant-cf --full-saturate-quant $1 |& grep "arith_rewriter.cpp:745"
