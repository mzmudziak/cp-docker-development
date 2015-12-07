#!/bin/bash

cd `dirname $0`/../../docker

docker-compose run --rm zen bash /user/src/app/setup/03_run.sh

