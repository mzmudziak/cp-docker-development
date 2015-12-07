#!/bin/bash

# go to the docker directory
cd "`dirname $0`"/../../docker

# build the current version
docker build -t zen zen
docker build -t postgres-zen postgres-zen

# tag the repositories
#   https://forums.docker.com/t/docker-push-error-fata-0001-respository-does-not-exist/1309/27
docker tag zen coderdojo/zen
docker tag postgres-zen coderdojo/postgres-zen


