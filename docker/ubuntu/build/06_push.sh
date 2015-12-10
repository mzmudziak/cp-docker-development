#!/bin/bash

cd "`dirname $0`"

docker login

scripts/run zen setup/06_save_directory_for_push.sh && \
scripts/commit_all "copied contents of cp-local-development" || { echo "ERROR: could not create commit." ; exit 1 ; }

docker push coderdojo/zen
docker push coderdojo/postgres-zen

