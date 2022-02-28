#!/usr/bin/env bash

debug='false'
if (( $# != 0 )); then
    debug=$1
fi

echo 'Processing...'
for i in {1..5};
do
    # regular way
    # if [[ $debug == 'true' ]]; then
    #     echo "Index: $i"
    # fi

    # another way
    [[ $debug == 'true' ]] && echo "Index: $i"
done

echo 'Done!'
