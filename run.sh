#!/bin/bash

set -e

MODE=${1:-debug}

if [ "$MODE" == "clean" ] ; then
  rm -rf .debug .release
  exit
fi

echo "Testing in $MODE mode."
if [ "$MODE" == "debug" ] ; then
  mkdir -p .debug
  clang++ -g -O0 -DDEBUG -std=c++20 code.cc -o .debug/code
  .debug/code
elif [ "$MODE" == "release" ] ; then
  mkdir -p .release
  clang++ -O3 -DNDEBUG -std=c++20 code.cc -o .release/code
  .release/code
else
  echo '$MODE must be `debug` or `release`.'
  exit 1
fi
