#!/usr/bin/env bash

while read name score;
do
    echo "${name}'s score: $score"
done < scores.txt
