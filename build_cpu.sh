#!/bin/bash

./build.sh --config RelWithDebInfo --build_shared_lib --parallel --build_wheel

./build.sh --config RelWithDebInfo --build_shared_lib --parallel --build_wheel --build

pip install build/Linux/RelWithDebInfo/dist/onnxruntime-1.9.0-cp37-cp37m-linux_x86_64.whl
