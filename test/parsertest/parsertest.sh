#!/bin/bash

# Note: make sure that ddsmt immediately dumps input file without actual
#       delta-debugging

readonly DDSMT=./ddsmt/ddsmt.py
readonly CMD=boolector  # could be anything, not important

BUGDIR=$(pwd)/failed-tmp
MAXSIZE=100000000

die ()
{
  echo "*** $(basename $0): $*" 1>&2
  exit 1
}

info ()
{
  echo "*** $(basename $0): $*" 1>&2
}

cleanup-and-exit ()
{
    rm -f $tmp
    kill $(jobs -p) 2> /dev/null
    echo
    exit
}

while [ $# -gt 0 ]
do
  case $1 in
    -h | --help)
        echo "usage: $(basename $0) [-h | --help] <dir>"
        echo
        echo "  -h, --help:           print this message and exit"
        echo "  <dir>:                a directory with smtlib2 files"
        cleanup-and-exit
        ;;
    *)  break
        ;;
  esac
  shift
done

trap "cleanup-and-exit;" SIGHUP SIGINT SIGTERM

tmp=/tmp/ddsmtparsertest-$$.smt2
dir="$*"
if [ x"$dir" = x ]; then
  die "<dir> missing"
fi

[ ! -e $DDSMT ] && die "$DDSMT not found"

info "directory: $dir"

filescount=0
skippedcount=0
count=0
for file in `find $dir -name '*.smt2'`; do
  ((filescount += 1))
  size=$(du -b "$file" | cut -f 1)
  if [ $size -ge $MAXSIZE ]; then 
    ((skippedcount += 1))
  else
    "$DDSMT" "$file" "$tmp" "$CMD" > /dev/null
     #diff -bBwi <(sed ':a;N;$!ba;s/\n/ /g' <(sed 's/;.*//g' $file)) <(sed ':a;N;$!ba;s/\n/ /g' $tmp) > /dev/null 2>&1
     diff -bBwi <(sed ':a;N;$!ba;s/\n/ /g' <(sed 's/;.*//g' <(perl -0777 -wpE 's/(\")(.*)(\")/my $x=$1; my $z=$3; my $y=$2; $y=~s#;#,#g;"$x$y$z"/gems' <(perl -0777 -wpE 's/(\(set-info :source \|)(.*)(\|\))/my $x=$1; my $z=$3; my $y=$2; $y=~s#;#,#g;"$x$y$z"/gems' $file))))  <(sed ':a;N;$!ba;s/\n/ /g' $tmp) > /dev/null 2>&1


    res=$?
    case $res in
      0) echo -en "\r"
         ;;
      *) mkdir -p "$BUGDIR"
         echo "infile:  $file"
         bug="$BUGDIR"/bug-$$-${count}.smt2
         out="$BUGDIR"/bug-$$-${count}.out.smt2
         cat "$file" > "$bug"
         cat "$tmp" > "$out"
         echo -en "bugfile: "
         echo $(basename "$bug")
         ((count += 1))
         ;;
     esac
   fi
done

info "$filescount files total"
info "$(((filescount - skippedcount))) files tested"
info "$skippedcount files skipped"
cleanup-and-exit
