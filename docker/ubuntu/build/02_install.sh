#!/bin/bash

cd `dirname $0`/../../docker

docker-compose run --rm zen setup/01_install.sh
