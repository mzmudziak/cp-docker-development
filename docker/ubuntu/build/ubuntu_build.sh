#!/bin/bash

cd "`dirname $0`"

sudo docker build -t zen zen
sudo docker build -t postgres-zen postgres-zen

# tag the repositories
#   https://forums.docker.com/t/docker-push-error-fata-0001-respository-does-not-exist/1309/27
sudo sudo docker tag zen coderdojo/zen
sudo sudo docker tag postgres-zen coderdojo/postgres-zen

sudo docker push coderdojo/zen
sudo docker push coderdojo/postgres-zen

