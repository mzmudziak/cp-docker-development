#!/bin/bash


sudo apt-get install docker.io

if lsb_release -a 2>>/dev/null | grep -q "Release:\s*14"
then
  DOCKER=docker.io
  echo Ubuntu 14 uses package \"docker.io\"
else
  DOCKER=docker
  echo Ubuntu uses package \"docker\"
fi

sudo apt-get update
sudo apt-get -y install $DOCKER

# http://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo
sudo groupadd docker
sudo gpasswd -a ${USER} docker
# https://help.ubuntu.com/community/CheckingYourUbuntuVersion

sudo service $DOCKER restart

# install docker compose 
#   https://docs.docker.com/compose/install/
sudo apt-get -y install curl
sudo bash -c "curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

# check docker and docker-compose
EXIT=false
if ! type docker
then
  EXIT=true
  echo "Command \"docker\" not found!"
fi
if ! type docker-compose
then
  EXIT=true
  echo "Command \"docker-compose\" not found!"
fi

if [ "$EXIT" == "true" ]
then
  echo "ERROR!"
  exit 1
fi

# both work
if docker info 1>>/dev/null 2>>/dev/null
then
  echo
  echo "You do NOT need to log out and in - the \"docker\" command can be used without sudo."
else
  echo
  echo "You must log out and in to use the \"docker\" command without super user privileges."
fi
