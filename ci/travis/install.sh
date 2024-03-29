#!/bin/bash

export PATH=$HOME/.cargo/bin:$PATH
  
  # Install kcov.
echo "Installing kcov"
wget https://github.com/SimonKagstrom/kcov/archive/master.tar.gz
tar xzf master.tar.gz
cd kcov-master
mkdir build
cd build
cmake ..
make
sudo make install
cd ../..
echo "kcov installed"
rm -rf kcov-master

  # Install cargo-kcov
echo "Installing cargo-kcov"
cargo install cargo-kcov 2>/dev/null || echo "cargo-kcov already installed"