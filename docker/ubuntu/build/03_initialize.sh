#!/bin/bash

cd `dirname $0`

scripts/run zen setup/02_initialize.sh && \
scripts/commit_all "initialization complete"


