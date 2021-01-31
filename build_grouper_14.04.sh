#!/bin/bash

docker --version

docker build -t grouper_14.04 -f grouper_14.04 --build-arg USER_ID=$(id -u ${USER}) --build-arg GROUP_ID=$(id -g ${USER}) .
