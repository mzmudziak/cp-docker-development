#!/bin/bash

cd `dirname $0`/../build

./05_run.sh
./scripts/commit_all
