#!/bin/bash

cd `dirname $0`

if scripts/run zen setup/01_install.sh
then
  scripts/commit_all "installation complete"
else
  exit 1
fi

diff="`pwd`/diffs/system.js.diff"

cd ../../code/

sudo chown ${USER} . -R

patch -p1 -N system.js $diff || { echo "Could not set POSTGRES_HOST in code/system.js to \"postgres-zen\". You need to do it manually or the 03_initialize.sh fails because it can not connect to postgres." ; exit 1 ; }


