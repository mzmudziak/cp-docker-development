#!/bin/bash

cd `dirname $0`/../build

./scripts/run zen setup/05_bash.sh
./scripts/commit_all
