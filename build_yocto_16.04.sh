#!/bin/bash

docker --version

docker build -t yocto_16.04 -f yocto_16.04 --build-arg USER_ID=$(id -u ${USER}) --build-arg GROUP_ID=$(id -g ${USER}) .
