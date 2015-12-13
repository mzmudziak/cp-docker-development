#!/bin/sh

cd "`dirname $0`/../../docker/boot2zen"

mkdir tmp
cp ../docker-compose.yml ./tmp/docker-compose.yml

docker rmi coderdojo/boot2zen
docker build -t coderdojo/boot2zen .
