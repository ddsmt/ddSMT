#!/bin/bash

timeout 2s ./cvc4 $1 |& grep "SimpSolver.cc:170"
