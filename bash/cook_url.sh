#!/bin/bash

curl -i $1>$2
url=$1
sed -i "/^\s*$/iX-Mob-Source: ${url}" $2
dos2unix $2
