#!/bin/bash

cd `dirname $0`/../../docker

docker-compose run --rm zen ./localdev.js testdata zen