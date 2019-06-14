FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    curl \
    git \
    libopenblas-dev \
    llvm-6.0-dev \
    python3-dev \
    python3-tk \
 && rm -rf /var/lib/apt/lists/*

RUN curl https://bootstrap.pypa.io/get-pip.py | python3
RUN pip3 install \
    attrs \
    cython \
    decorator \
    gluoncv \
    matplotlib \
    mxnet \
    numpy \
    onnx \
    pillow \
    psutil \
    tornado \
    xgboost

ENV TVM_PATH=/workspace/tvm
ENV PYTHONPATH=${TVM_PATH}/python:${TVM_PATH}/topi/python:${TVM_PATH}/nnvm/python:${TVM_PATH}/vta/python:${PYTHONPATH}
ENV PATH=/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}

WORKDIR /workspace
