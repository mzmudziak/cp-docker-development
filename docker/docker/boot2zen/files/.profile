#!/bin/sh

# print ip addresses 
echo -n "IPs: "`ip -o addr | grep -O -E 'inet6?\s+[0123456789abcdef.:]+' | grep -o -E '\S+$'`

# start zen bash
cd /data/docker-compose
docker-compose run --service-ports --name zen zen 
