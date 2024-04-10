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

import sys

from . import cli
from . import options
from . import debug_utils


def main():
    """Main entry point for ddsmt."""
    try:
        cli.ddsmt_main()
        if options.args().profile:
            debug_utils.render_profiles()
        return 0
    except MemoryError:
        print("[ddsmt] memory exhausted")
    except KeyboardInterrupt:
        print("[ddsmt] interrupted")
    except cli.DDSMTException as e:
        print(e)
    if options.args().profile:
        debug_utils.render_profiles()
    return 1


if __name__ == '__main__':
    sys.exit(main())
