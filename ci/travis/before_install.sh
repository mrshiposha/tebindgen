#!/bin/bash

chmod -R +x $TRAVIS_BUILD_DIR/ci/travis

# Required for running tests (for libclang.so)
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/clang-7.0.0/lib:target/debug/deps