#!/bin/bash

for x in $(cd _patch ; find . -type f)
do
    echo "Applying patch $x"
done

target=$2
origin=$1
for x in $(cd _patch ; find . -type f)
do
    echo "Processing $x"
    echo  "folder is $(dirname $x)"
    echo cp $origin/$x $target/$x
    mkdir -p $target/$(dirname $x) # fail it if does not exist
    cp $origin/$x $target/$x
done