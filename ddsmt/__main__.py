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
