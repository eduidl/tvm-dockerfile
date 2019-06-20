FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    libopenblas-dev \
    libopencv-dev \
    llvm-6.0-dev \
    wget \
 && rm -rf /var/lib/apt/lists/*

ENV MINICONDA Miniconda3-latest-Linux-x86_64.sh
ENV PATH /opt/conda/bin:${PATH}

RUN wget -q https://repo.continuum.io/miniconda/$MINICONDA \
 && bash $MINICONDA -b -p /opt/conda \
 && rm $MINICONDA \
 && conda update -n base -c defaults conda
RUN conda install -y \
    attrs \
    cython \
    decorator \
    matplotlib \
    mxnet \
    numpy \
    pillow \
    psutil \
    tornado \
 && pip install \
    gluoncv \
    onnx \
    opencv-python \
    xgboost \
 && rm -rf /opt/conda/pkgs/*

ENV TVM_PATH /workspace/tvm
ENV PATH /usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/cuda/lib64:${LD_LIBRARY_PATH}
ENV PYTHONPATH ${TVM_PATH}/python:${TVM_PATH}/topi/python:${TVM_PATH}/nnvm/python:${TVM_PATH}/vta/python:${PYTHONPATH}

WORKDIR /workspace/tvm
