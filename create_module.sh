#!/usr/bin/env bash

echo "=== `date` : Publish Labtainer Lab $1 $==="
#   Publish
cd ~/labtainer/trunk/labs/
git add ${1}
git commit ${1} -m "Adding an IModule"
cd $LABTAINER_DIR/distrib

./publish.py -d -f -l ${1}

#cd /home/student/labtainer/trunk/scripts/designer/bin

echo "=== `date` : Create an Imodule For Labtainer Lab $1 $==="
# Create the imodule
create-imodules.sh

echo "=== `date` : Remove the Git repository from labs$==="
cd ~/labtainer/trunk/labs/

cp $LABTAINER_DIR/imodule.tar $LABTAINER_DIR/${1}.tar
