#!/bin/bash

sudo apt-get -y install docker docker-compose

# http://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo
sudo groupadd docker
sudo gpasswd -a ${USER} docker
# https://help.ubuntu.com/community/CheckingYourUbuntuVersion
if lsb_release -a 2>>/dev/null | grep -q "Release:\s*14"
then
  sudo service docker.io restart
else
  sudo service docker restart
fi

if docker info
then
  echo
  echo "You do NOT need to log out and in - the \"docker\" command can be used without sudo."
else
  echo
  echo "You must log out and in to use the \"docker\" command without super user privileges."
fi
