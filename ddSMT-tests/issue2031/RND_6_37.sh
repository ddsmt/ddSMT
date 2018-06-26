#!/bin/bash

./cvc4 --full-saturate-quant $1 |& grep "quantifiers_rewriter.cpp:1133"
