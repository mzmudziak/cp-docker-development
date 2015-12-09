#!/bin/bash

# go to the docker directory
cd "`dirname $0`"/../../docker

scripts/run zen setup/06_save_directory_for_push.sh && \
scripts/commit_all "copied contents of cp-local-development"

docker push coderdojo/zen
docker push coderdojo/postgres-zen

