#!/bin/sh
# I can only use sh. Bash is not supported.

# share files via samba
#   https://github.com/boot2docker/boot2docker#folder-sharing
/usr/local/bin/docker docker run -v /data --name my-data busybox true 
/usr/local/bin/docker run --rm -v /usr/local/bin/docker:/docker -v /var/run/docker.sock:/docker.sock svendowideit/samba my-data

