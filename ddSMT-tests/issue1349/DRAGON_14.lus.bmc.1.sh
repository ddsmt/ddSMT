#!/bin/bash

./cvc4 --incremental $1 |& grep "Alloc.h:64"
