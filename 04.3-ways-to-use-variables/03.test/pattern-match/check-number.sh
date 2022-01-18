#!/usr/bin/env bash

num=$1

pattern='^[0-9]+$'
if [[ ! $num =~ $pattern ]]; then
    echo "*** ERROR: not a number: $num"
    exit 1
fi

echo "You input: $num"
