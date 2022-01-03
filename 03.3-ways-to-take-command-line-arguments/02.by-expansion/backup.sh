#!/usr/bin/env bash

echo "There are $# directories to be processed"

for d in "$@";
do
    echo "Backing up [$d]..."
    tar zcf "${d}.tgz" "$d"
done

echo "Done!!"
