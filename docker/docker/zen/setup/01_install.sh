#!/bin/bash

source `dirname $0`/config.sh

echo
echo -------------------------------------------------------------------------------
echo install node js
echo ---------------
echo following the tutorial at
echo   http://www.nearform.com/nodecrunch/nodejs-sudo-free/
echo

apt-get -y install curl
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash

source ~/.bashrc
source ~/.nvm/nvm.sh

if ! type nvm 1>/dev/null 2>/dev/null
then
  echo "ERROR: nvm not found"
  nvm
  exit 1
fi

nvm install stable

nvm alias default stable

echo 
echo "searching for compatible nvm versions v0.10.*"
nvm_latest_version=`nvm ls-remote | grep -E "(^|\s)v0\.10\." | tail -n1 | grep -E -o "v[0123456789.]+"`
echo "nvm version to install is $nvm_latest_version"
echo 

if [ "$nvm_latest_version" == "" ]
then
  echo "Did not find any version compatible with v0.10.*"
  exit 1
fi

nvm install $nvm_latest_version
nvm use $nvm_latest_version
nvm alias default $nvm_latest_version

echo
echo -------------------------------------------------------------------------------
echo install additional packages
echo ---------------------------
echo

apt-get -y install git

npm install -g grunt

npm -g install npm@latests

echo
echo -------------------------------------------------------------------------------
echo Code Setup
echo ==========
echo See https://github.com/CoderDojo/cp-local-development#code-setup
echo 

mkdir -p "$directory"

cd "$directory"

git clone $clone_url . || git pull $clone_url

# command not found g++
# /usr/share/unicode/UnicodeData.txt not found.
apt-get -y install g++ unicode-data

npm install

./localdev.js || { echo "ERROR: \"./localdev.js\""; exit 1; }

