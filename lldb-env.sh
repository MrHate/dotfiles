#!/bin/bash

# Install packages to run `ninja check-lldb` correctly.
# Attention! This is a sufficient set but not minimum set.

# You may need to build the latest version z3 from source: https://github.com/Z3Prover/z3

sudo apt update
sudo apt install -y build-essential swig ninja-build git clang cmake
sudo apt install -y libedit-dev liblzma-dev lua5.3 libxml2-dev doxygen python-epydoc liblua5.3-dev
sudo apt install -y libpython-dev python-dev
sudo apt install -y python3-dev python3-pip python3-tk python3-lxml python3-six
sudo apt install -y python-yaml python-pygments python3-pygments python3-yaml 
sudo apt install -y ocaml-libs libctypes-ocaml-dev llvm-9-tools llvm-9-dev
sudo apt install -y libgflags-dev libgoogle-glog-dev libgtest-dev libssl-de
sudo apt install -y python-psutil python3-psutil
