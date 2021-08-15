#!/usr/bin/env bash


docker login

./build.sh $1

echo "=== `date` : Publish Labtainer Lab $1 $==="
#   Publish
cd ~/labtainer/trunk/labs/
git add ${1}
git commit ${1} -m "Adding/Updating the lab $1"
cd $LABTAINER_DIR/distrib

./publish.py -d -f -l ${1}

#cd /home/student/labtainer/trunk/scripts/designer/bin

echo "=== `date` : Create an Imodule For Labtainer Lab $1 $==="
# Create the imodule
create-imodules.sh

echo "=== `date` : Push the lab $1 to Labtainer Lab Repository==="
# Create the imodule
cd ~/labtainer/trunk/labs/
git add ${1}
git commit ${1} -m "Adding/Updating the config/build output files for $1"

git push origin master

echo "=== `date` : Copying Imodule to labtainer-imodules Git Repository $1 $==="
cp $LABTAINER_DIR/imodule.tar ~/cyberspace/labtainer-imodules/${1}.tar

echo "=== `date` : Pushing the Imodule $1.tar to labtainer-imodules Git Repository  $==="

cd ~/cyberspace/labtainer-imodules
git add ${1}.tar
git commit -m "added/updated imodule $1"
git push origin main
