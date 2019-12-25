#!/bin/bash

docker --version

docker build -t yocto_16.04 -f yocto_16.04 .
