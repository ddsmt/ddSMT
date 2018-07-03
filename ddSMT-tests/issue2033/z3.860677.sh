#!/bin/bash

./cvc4 --finite-model-find --macros-quant --macros-quant-mode=all $1 |& grep "macros.cpp:231"
