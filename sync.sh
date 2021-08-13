echo "=== `date` : Copying Imodule to labtainer-imodules Git Repository $1 $==="
cp $LABTAINER_DIR/${1}.tar ~/labtainer-imodules/imodules/${1}.tar

echo "=== `date` : Pushing the Lab and the Imodule to labtainer-imodules Git Repository $1 $==="

cd ~/labtainer-imodules
git add ~/labtainer-imodules/${1}.tar
git add ~/labtainer-imodules/${1}
git commit -m "added/updated imodule $1"
git push origin master
