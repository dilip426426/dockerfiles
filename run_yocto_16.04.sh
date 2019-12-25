#!/bin/bash

docker --version

docker run -it -v $PWD:$PWD:delegated -w $PWD --hostname=yocto_16.04 yocto_16.04
