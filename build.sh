#!/usr/bin/env bash
set -ev

. ./build-env.sh

rm -rf $BUILD dist
mkdir $BUILD dist

./build-mpir.sh
./build-mpfr.sh
./build-flint.sh