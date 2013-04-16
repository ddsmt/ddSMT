#!/bin/bash

readonly DDSMTROOTDIR=$(dirname "$(readlink -f $0)")
readonly DDSMTRELEASEDIR=$DDSMTROOTDIR/release
readonly DDSMTDIR=$DDSMTRELEASEDIR/ddsmt
readonly DDSMTPARSERDIR=$DDSMTDIR/parser

die ()
{
  echo "*** $(basename $0): $*" 1>&2
  exit 1
}

rm -rf $DDSMTRELEASEDIR
mkdir -p "$DDSMTPARSERDIR"

cp -r      \
  "$DDSMTROOTDIR"/ddsmt.py \
  "$DDSMTROOTDIR"/COPYING  \
  "$DDSMTROOTDIR"/README   \
"$DDSMTDIR"
cp -r                   \
  "$DDSMTROOTDIR"/parser/ddsmtparser.py \
  "$DDSMTROOTDIR"/parser/smtparser.py   \
  "$DDSMTROOTDIR"/parser/__init__.py    \
"$DDSMTPARSERDIR"

version=$(cat "$DDSMTROOTDIR/VERSION")
ddsmtversion=$($DDSMTROOTDIR/ddsmt.py --version 2>&1)
if [[ $version != $ddsmtversion ]]; then
  die "mismatching versions in executable: $version $ddsmtversion"
fi
readmeversion=$(grep -o -e "version .* of ddSMT" README | cut -d ' ' -f 2)
if [[ $version != $readmeversion ]]; then
  die "mismatching versions in readme: $version $readmeversion"
fi
cd "$DDSMTRELEASEDIR"
tar cvzf ddsmt-"$version".tar.gz ddsmt
cd "$DDSMTROOTDIR"
