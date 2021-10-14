#!/bin/bash
cd build_posix
sh reconf
export CFLAGS='-g3 -O0 -ggdb'
#export CC=gcc-7

# ASAN build
#export CFLAGS='-fsanitize=address -fno-omit-frame-pointer -mllvm -asan-force-dynamic-shadow=1 -ggdb -O0'
#export CC=/opt/mongodbtoolchain/v3/bin/clang
#export CXX=/opt/mongodbtoolchain/v3/bin/clang++
#export PATH=PATH=/opt/mongodbtoolchain/v3/bin:$PATH
# MSAN build
#export CC=/opt/mongodbtoolchain/v3/bin/clang
#export CXX=/opt/mongodbtoolchain/v3/bin/clang++
#export PATH=/opt/mongodbtoolchain/v3/bin:$PATH
#export CFLAGS='-fsanitize=memory -fsanitize-blacklist=/home/chenhaoqu/work/wiredtiger/s_clang-msan-blacklist -ggdb'
#../configure --enable-silent-rules --enable-strict --enable-diagnostic --disable-static
#../configure --enable-silent-rules --enable-diagnostic -enable-python --enable-lz4 --enable-snappy --enable-zlib --enable-zstd --enable-strict --enable-static
#../configure --enable-silent-rules --enable-diagnostic --enable-lz4 --enable-snappy --enable-zlib --enable-zstd --enable-strict --enable-static --disable-shared
#../configure --enable-silent-rules --enable-diagnostic -enable-python --with-builtins=lz4,snappy,zlib,zstd --enable-strict --enable-static
# debug
../configure --enable-silent-rules --enable-diagnostic --enable-python --with-builtins=lz4,snappy,zlib,zstd --enable-strict --enable-static
# production
#../configure --enable-silent-rules --enable-python --with-builtins=lz4,snappy,zlib,zstd --enable-strict --enable-static
make -j 40
