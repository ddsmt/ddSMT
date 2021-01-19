#!/usr/bin/env python3

import signal
import subprocess
import sys
import time

filename = sys.argv[1]

solvers = {
    'A': ['solverA', '--option'],
    'B': ['solverB', '--option'],
}
# minimal factor between the faster and the slower solver
threshold = 10

slow = 'A'

dur = {}

CUR_PROC = None


def stop_process(proc):
    proc.terminate()
    try:
        proc.wait(timeout=0.5)
    except subprocess.TimeoutExpired:
        proc.kill()
    try:
        proc.wait(timeout=0.5)
    except subprocess.TimeoutExpired:
        print(
            'Killing pid %d failed. Please check manually to avoid memory exhaustion.'
            % proc.pid)


def handler(sig, frame):
    if CUR_PROC is not None:
        stop_process(CUR_PROC)


for s in solvers:
    before = time.perf_counter()
    try:
        CUR_PROC = subprocess.Popen(solvers[s] + [filename],
                                    stdout=subprocess.PIPE,
                                    stderr=subprocess.PIPE)
        CUR_PROC.communicate(timeout=10)
    except subprocess.TimeoutExpired:
        stop_process(CUR_PROC)
    duration = time.perf_counter() - before
    print('{} -> {}'.format(s, duration))
    dur[s] = duration

factor = max(dur.values()) / min(dur.values())
print('Factor: {}'.format(factor))

# discard if the slower solver became too fast
if dur[slow] < 3:
    print('-> 0')
    sys.exit(0)

if factor > threshold:
    # still much slower
    print('-> 1')
    sys.exit(1)
# not that much slower
print('-> 0')
sys.exit(0)
