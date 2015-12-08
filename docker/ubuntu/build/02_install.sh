#!/bin/bash

cd `dirname $0`

scripts/run zen setup/01_install.sh
scripts/commit_all "installation complete"

