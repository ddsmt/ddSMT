#!/bin/bash

./cvc4 --incremental $1 |& grep "sat_proof_implementation.h:458"
