#!/bin/bash

docker --version

docker rmi -f $(docker images -a -q)

docker system prune -a --force
