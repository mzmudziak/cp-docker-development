#!/bin/bash

cd `dirname $0`/../../docker

# docker-compose up -d postgres-zen
docker-compose run --rm zen git pull
docker-compose run --rm ./localdev.js init zen


