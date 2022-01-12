#!/usr/bin/env bash

debug='false'
if (( $# != 0 )); then
    debug=$1
fi

echo 'Processing...'
for i in {1..5};
do
    if [[ $debug == 'true' ]]; then
        echo "Index: $i"
    fi
done

echo 'Done!'
