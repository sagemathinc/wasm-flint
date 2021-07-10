#!/usr/bin/env bash

# See http://www.flintlib.org/downloads.html
export FLINT_VERSION=2.7.1

# See https://github.com/wbhart/mpir/commits/master for updates...
export MPIR_VERSION=b3367eb13eca95b3a204beaca5281a2c3b4c66a6

# See https://www.mpfr.org/mpfr-current/#download
export MPFR_VERSION=4.1.0

export BUILD=`pwd`/build
export PREFIX=$BUILD/local