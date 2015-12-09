#!/bin/bash

cd `dirname $0`

scripts/run zen setup/03_testdata.sh && \
scripts/commit_all "added test data"
