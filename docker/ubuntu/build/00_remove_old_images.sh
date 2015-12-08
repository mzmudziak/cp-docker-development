#!/bin/bash

docker stop zen postgres-zen
docker rm zen postgres-zen
docker rmi zen postgres-zen coderdojo/zen coderdojo/postgres-zen

