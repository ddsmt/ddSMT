import sys

from . import cli


def main():
    """Main entry point for ddsmt."""
    try:
        cli.ddsmt_main()
    except MemoryError:
        sys.exit("[ddsmt] memory exhausted")
    except KeyboardInterrupt:
        sys.exit("[ddsmt] interrupted")
    except cli.DDSMTException as e:
        sys.exit(e)
    sys.exit(0)


def main_profile():
    """Wrapper for `main()` that enabled profiling."""
    import cProfile
    import subprocess
    with cProfile.Profile() as pr:
        pr.enable()
        main()
        pr.disable()
        pr.dump_stats('profile.prof')
    subprocess.run([
        'gprof2dot', '--node-label=self-time-percentage',
        '--node-label=total-time', '--node-label=total-time-percentage', '-f',
        'pstats', '-o', 'profile.dot', 'profile.prof'
    ])
    subprocess.run(['dot', '-Tpng', '-o', 'profile.png', 'profile.dot'])
    print('profile information is stored at profile.(prof|dot|png)')


if __name__ == '__main__':
    main()
