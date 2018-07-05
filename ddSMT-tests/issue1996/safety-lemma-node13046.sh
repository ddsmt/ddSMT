#!/bin/bash

./cvc4 --full-saturate-quant --cbqi-nested-qe $1 |& grep "ceg_instantiator.cpp:712"
