import os


def version_from_git(gitdir):
    import re
    import subprocess
    try:
        GIT_VERSION = subprocess.check_output(
            ['git', 'describe', '--tags'], cwd=gitdir,
            stderr=subprocess.PIPE).decode('utf8').strip()
    except subprocess.CalledProcessError:
        cnum = subprocess.check_output(['git', 'rev-list', 'HEAD', '--count'],
                                       cwd=gitdir).decode('utf8').strip()
        cid = subprocess.check_output(['git', 'rev-parse', '--short', 'HEAD'],
                                      cwd=gitdir).decode('utf8').strip()
        GIT_VERSION = 'v0.0-{}-g{}'.format(cnum, cid)
    if re.match('^v[0-9.]+$', GIT_VERSION) is not None:
        return GIT_VERSION[1:]
    else:
        m = re.match('v([0-9]+)\\.([0-9]+)-([0-9]+)-g[a-z0-9]+', GIT_VERSION)
        if m is not None:
            return '{}.{}.dev{}'.format(m.group(1),
                                        int(m.group(2)) + 1, m.group(3))
    return GIT_VERSION


def version_from_package_metadata():
    try:
        from importlib import metadata
    except ImportError:
        import importlib_metadata as metadata
    return metadata.version('ddSMT')


__git_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..',
                         '.git')
if os.path.isdir(__git_dir):
    VERSION = version_from_git(__git_dir)
else:
    VERSION = version_from_package_metadata()
