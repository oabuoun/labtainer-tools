#!/usr/bin/env bash

#   Build

set -e

#   Build Docs
echo "=== `date` : Start Building Lab $1 Docs==="
cd ~/labtainer/trunk/labs/${1}/docs
rm lab-guide.pdf || true
make clean
make
