#!/usr/bin/env bash

#   Build

set -e

echo "=== `date` : Removing old config files and docker images of  $1 ==="
# Delete old config
cd ~/labtainer/trunk/labs/${1}
find . -name .gz -exec rm -rf {} \;

images=$(docker images $1* -q)
echo "--------------------------------"
echo $images
echo "--------------------------------"
docker rmi $images || true

#docker rmi $(docker images -f “dangling=true” -q)

echo "=== `date` : Start Building Labtainer Lab $1 $==="
cd ~/labtainer/labtainer-student
rebuild -L -f -b ${1}
