#!/bin/bash

cd "`dirname $0`"

./build/scripts/stop_all

for container_name in `./build/scripts/container_names`
do
  docker rm $container_name
done

docker images | awk '{print $3}' | xargs --no-run-if-empty docker rmi -f

