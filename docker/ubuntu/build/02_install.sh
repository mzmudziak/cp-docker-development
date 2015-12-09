#!/bin/bash

cd `dirname $0`

scripts/run zen setup/01_install.sh
success=$?
patch -p1 -N ../../code/system.js ./diffs/system.js.diff

( exit $success ; ) && scripts/commit_all "installation complete"


