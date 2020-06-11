#!/bin/bash

docker --version

docker run -it -v $PWD:$PWD:delegated -w $PWD --hostname=centos_7 centos_7
