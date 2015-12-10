#!/bin/bash

cd "`dirname $0`"

scripts/run zen setup/06_save_directory_for_push.sh && \
scripts/commit_all "copied contents of cp-local-development"

docker login

docker push coderdojo/zen
docker push coderdojo/postgres-zen

