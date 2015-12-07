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
