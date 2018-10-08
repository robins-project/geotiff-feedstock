#!/bin/bash

mkdir build && cd build

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_PREFIX_PATH=$PREFIX \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D WITH_PROJ4=ON \
      -D WITH_ZLIB=ON \
      -D WITH_JPEG=ON \
      -D WITH_TIFF=ON \
      ..

ninja install
