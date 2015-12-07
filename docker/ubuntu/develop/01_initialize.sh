#!/bin/bash

cd `dirname $0`/../../docker

# docker-compose up -d postgres-zen
docker-compose run --rm zen bash /user/src/app/setup/02_initialize.sh

