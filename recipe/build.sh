#!/bin/bash

set -xe

# Get an updated config.sub and config.guess
cp -f $BUILD_PREFIX/share/gnuconfig/config.{sub,guess} .

./configure --prefix=$PREFIX
make -j "${CPU_COUNT}"
make install
make check
