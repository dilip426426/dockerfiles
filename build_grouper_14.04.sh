#!/bin/bash

docker --version

NOW=$( date '+%F_%H-%M-%S' )

docker build -t grouper_14.04:$NOW -f grouper_14.04 .
