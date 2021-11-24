#!/bin/bash

./build.sh --config Release --build_shared_lib --parallel --build_wheel \
    --use_cuda --cudnn_home /usr/local/cuda-11.1 --cuda_home /usr/local/cuda-11.1 \
    --cmake_extra_defines CMAKE_CUDA_COMPILER=/usr/local/cuda-11.1/bin/nvcc CMAKE_C_COMPILER=/usr/bin/gcc-9 CMAKE_CXX_COMPILER=/usr/bin/g++-9

./build.sh --config Release --build_shared_lib --parallel --build_wheel --build \
    --use_cuda --cudnn_home /usr/local/cuda-11.1 --cuda_home /usr/local/cuda-11.1 \
    --cmake_extra_defines CMAKE_CUDA_COMPILER=/usr/local/cuda-11.1/bin/nvcc CMAKE_C_COMPILER=/usr/bin/gcc-9 CMAKE_CXX_COMPILER=/usr/bin/g++-9

pip install build/Linux/Release/dist/onnxruntime_gpu-1.10.0-cp37-cp37m-linux_x86_64.whl
