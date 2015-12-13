#!/bin/bash

cd `dirname $0`/../../docker/boot2zen

docker build -t boot2zen .
docker run --rm boot2zen > boot2zen.iso
