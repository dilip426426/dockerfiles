#!/bin/bash

docker --version

docker system df -v

docker rmi -f $(docker images -a -q)

docker system prune -a --force

docker volume prune -f

docker system df
