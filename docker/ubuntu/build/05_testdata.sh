#!/bin/bash

cd `dirname $0`/../../docker

docker-compose run --rm zen setup/04_testdata.sh
