#!/usr/bin/env bash

#   Build

set -e

./build_docs.sh $1

./build_module.sh $1
