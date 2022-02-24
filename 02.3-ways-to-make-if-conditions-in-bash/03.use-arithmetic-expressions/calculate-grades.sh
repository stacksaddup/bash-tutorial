#!/usr/bin/env bash

math=50
language=75
science=69

total=$(( $math + $language + $science ))
if (( $total > 180 )); then
    echo 'Pass'
else
    echo 'Failed'
fi
