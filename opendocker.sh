#!/bin/sh

if [ $# -ne 1 ]; then
  echo 'opendocker.sh requires 1 argument.'
  echo ''
  echo 'Usage: ./opendocker.sh IMAGE_NAME'
  exit 1
fi

nvidia-docker run -it --rm \
  --net host \
  -e DISPLAY=$DISPLAY \
  -v `pwd`/tvm:/workspace/tvm \
  -v $HOME/.Xauthority:/root/.Xauthority:ro \
  $1 \
  bash
