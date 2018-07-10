#!/bin/bash

./cvc4 $1 |& grep "SimpSolver.cc:170"
