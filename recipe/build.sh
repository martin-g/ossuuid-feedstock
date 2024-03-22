#!/bin/bash

set -x

# update config.guess and config.sub to newer versions which support more CPU architectures
rm -f config.sub config.guess
wget "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" -O config.guess
wget "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" -O config.sub

./configure  --prefix=$PREFIX
make -j
make install
make check
