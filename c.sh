#! /bin/bash --
BINPREFIX='/home/pts/prg/pts-mini-gpl/uevalrun/cross-compiler/bin/i686-'
CC="${BINPREFIX}gcc -static -fno-stack-protector"
AR="${BINPREFIX}ar"
RANLIB="${BINPREFIX}ranlib"

set -ex
rm -f *.o *.a
$CC -s -Os -W -Wall \
    -Wno-unused-parameter \
    -DHAVE_CONFIG_H -D_GNU_SOURCE -c \
    popt.c poptparse.c poptconfig.c popthelp.c poptint.c
$AR cr libpopt.a *.o
$RANLIB libpopt.a
: c.sh OK.
