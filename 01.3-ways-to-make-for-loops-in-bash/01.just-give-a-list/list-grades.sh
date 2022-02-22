#!/usr/bin/env bash

for f in class1.csv class2.csv class3.csv;
do
    cat "$f" | sed '1d' | awk -F ',' '{print $1, $NF}'
done | column -t
