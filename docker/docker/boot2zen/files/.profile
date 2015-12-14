#!/bin/sh

wait_for_zen_to_start_samba() {
  while ! [ "`docker inspect --format='{{json .State.Running }}' zen`" == "true" ]
  do
    sleep 1
  done
  docker pull niccokunzmann/samba-share 
  docker run -e RUN_ARGUMENTS="--net=host" niccokunzmann/samba-share zen | sh
  # publish ports
  #   https://docs.docker.com/engine/userguide/networking/default_network/binding/
  echo "IPs: "`ip -o addr | grep -O -E 'inet6?\s+[0123456789abcdef.:]+' | grep -o -E '\S+$'`
}

start_zen_bash() {
  location="`pwd`"
  cd /data/docker-compose
  if docker inspect zen 1>>/dev/null 2>>/dev/null
  then
    # There is a zen container but there shall be none.
    # We commit the content of zen to start a new one based on the old zen.
    message="Committing container named \"zen\"."
    echo "$message"
    new_image=`docker commit --pause=true --message="$message" zen`
    docker tag -f $new_image coderdojo/zen
    docker-compose stop zen
    docker-compose rm zen
    docker rm zen
  fi
  wait_for_zen_to_start_samba &
  docker-compose run --service-ports --name zen zen "$@"
  cd "$location"
  echo "Run \"start_zen_bash\" to start the zen bash."
}

# install nano
sudo -u docker tce-load -wi nano > /dev/null
