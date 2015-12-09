#!/bin/bash

source ~/.bashrc
source ~/.nvm/nvm.sh

clone_url="https://github.com/CoderDojo/cp-local-development.git"
directory=/user/src/app/cp-local-development
code_copy=$directory/../code_copy

if ! [ "`ls -A $directory`" ]
then
  # $directory is empty
  if [ -d "$code_copy" ] && [ "`ls -A "$code_copy"`" ]
  then
    # there is something in $code_copy
    echo copying saved code
    # http://stackoverflow.com/a/4645159
    cp "$code_copy"/. "$directory" -R
  fi
fi

