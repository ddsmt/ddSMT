#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
#
# This file is part of ddSMT.
#
# Copyright (C) 2013-2024 by the authors listed in the AUTHORS file
# at https://github.com/ddsmt/ddSMT/blob/master/AUTHORS.
#
# This file is part of ddSMT under the MIT license. See LICENSE for more
# information at https://github.com/ddsmt/ddSMT/blob/master/LICENSE.

import logging
import sys
import itertools

__MAX_VAL = None
__CUR_VAL = 0
__SPINNER = itertools.cycle(['-', '/', '|', '\\'])


def __print():
    global __CUR_VAL, __MAX_VAL
    print('{} {} / {}'.format(next(__SPINNER), __CUR_VAL, __MAX_VAL),
          end='\r',
          flush=True,
          file=sys.stderr)


def start(max):
    """Initialize a new progress bar for at most ``max`` steps.

    Only initialize if the current log level is at least
    ``logging.INFO``.
    """
    global __CUR_VAL, __MAX_VAL
    if not sys.stdout.isatty():
        return
    if logging.getLogger().level > logging.INFO:
        return
    __MAX_VAL = max
    __CUR_VAL = 0
    __print()


def update(newval=None):
    """Update the current progress bar.

    The value is incremented by one, or set to newval if newval is not
    ``None``.
    """
    global __CUR_VAL, __MAX_VAL
    if __MAX_VAL is not None:
        if __CUR_VAL < __MAX_VAL:
            if newval is not None:
                if __CUR_VAL + newval >= __MAX_VAL:
                    __CUR_VAL = __MAX_VAL
                else:
                    __CUR_VAL += newval
            else:
                __CUR_VAL += 1
        __print()


def finish():
    """Stop the current progress bar.

    Delete the object and write a newline.
    """
    global __MAX_VAL
    if __MAX_VAL is not None:
        __MAX_VAL = None
        sys.stdout.write('\n')
