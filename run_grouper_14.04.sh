#!/bin/bash

docker --version

docker run -it -v $PWD:$PWD:delegated -w $PWD --hostname=grouper_14.04 grouper_14.04
