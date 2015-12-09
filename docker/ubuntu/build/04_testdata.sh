#!/bin/bash

cd `dirname $0`/../../docker

docker-compose run --rm zen setup/03_testdata.sh
