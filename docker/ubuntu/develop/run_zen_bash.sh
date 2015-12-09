#!/bin/bash

cd `dirname $0`/../build

echo "exit the command line with the command \"exit\". Otherwise you loose work that is not in the code directory."
./scripts/run zen setup/05_bash.sh
./scripts/commit_all
