#!/bin/bash

version=$(cat mlq3a-version)
commithash=$(git log --pretty=format:'%h' -n 1)
builddate=$(date +%Y%m%d)

mkdir -p build/mlq3a
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
pushd build/Release/baseq3/; zip -r ../../mlq3a/zpak_mlq3a_v${version}.pk3 vm/; popd
cp mlq3a-readme.md build/mlq3a/zpak_mlq3a_v${version}.txt
sed -i "2 i\\\nVersion $version (${builddate}.g${commithash})" build/mlq3a/zpak_mlq3a_v${version}.txt
