#!/bin/bash

# go to the docker directory
cd "`dirname $0`"/../../docker

docker push coderdojo/zen
docker push coderdojo/postgres-zen

