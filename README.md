# TVM Dockerfile
- Dockerfile for using TVM compiler with GPU (https://github.com/dmlc/tvm)
- ref: https://github.com/dmlc/tvm/blob/master/docker/Dockerfile.demo_gpu

## Build of TVM
```sh
$ git clone https://github.com/dmlc/tvm.git --recursive
$ cp config.cmake ./tvm
$ docker build -t tvm docker
$ ./opendocker.sh tvm
##### in docker container #####
$ cd build
$ cmake ../tvm
$ make
```
