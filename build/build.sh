#!/bin/sh

SRCDIR=$(cd `dirname $0`; pwd)
cmkdir="$(echo "$SRCDIR" | sed -rn "s/(.+)\/build/\1/gp")"

tarname=$1
rm -rf $cmkdir/releases/* 
mkdir  $cmkdir/releases
cd $cmkdir/src/ 
tar zcvf $tarname.tar --exclude=hmm * ../README.md
mv $tarname.tar ../releases/


