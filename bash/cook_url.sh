#!/bin/bash

if [ $# -lt 2 ]; then
   echo "usage: cook_url url filename"
else
   curl -i $1>$2
   url=$1
   sed -i "/^\s*$/iX-Mob-Source: ${url}" $2
   dos2unix -q $2
fi
