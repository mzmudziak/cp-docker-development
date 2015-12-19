#!/bin/sh

if docker run --rm coderdojo/boot2zen > boot2zen.iso 
then
  echo "created boot2zen.iso"
  exit 0
else
  echo "failed to create boot2zen.iso"
  rm boot2zen.iso
  exit 1
fi
