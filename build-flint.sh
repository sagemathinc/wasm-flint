#!/usr/bin/env bash
set -ev
cd $BUILD

### Now build FLINT

curl http://www.flintlib.org/flint-$FLINT_VERSION.tar.gz -o flint-$FLINT_VERSION.tar.gz
tar xvf flint-$FLINT_VERSION.tar.gz
cd flint-$FLINT_VERSION

time emconfigure ./configure --with-mpir=$PREFIX --with-mpfr=$PREFIX --prefix=$PREFIX

time emmake make -j4

time emmake make install

# cp gp-sta* $BUILD/../dist/
