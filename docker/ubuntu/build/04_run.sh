#!/bin/bash

cd `dirname $0`

echo todo add test data

scripts/run zen setup/03_run.sh && \
scripts/commit_all "runnig done"
