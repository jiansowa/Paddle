unset PADDLE_VERSION
# assume develop to version 3.0.0d
export PADDLE_VERSION=3.0.0d

mkdir build
cd build
cmake -DCUDA_ARCH_NAME=Auto -DPY_VERSION=3.6 ..
ulimit -n 4096
make -j8
