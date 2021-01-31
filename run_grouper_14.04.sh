#!/bin/bash

docker --version

docker run -it -v $PWD:$PWD:delegated -v $HOME/.ssh:/home/local/.ssh -v $HOME/.gitconfig:/home/local/.gitconfig -w $PWD --hostname=grouper_14.04 grouper_14.04
