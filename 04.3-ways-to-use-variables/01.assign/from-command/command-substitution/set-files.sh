#!/usr/bin/env bash

files=$(ls data*.txt)
echo "Files:"
echo "$files"
echo

file_num=$(ls data*.txt | wc -l | awk '{print $1}')
echo "File #: $file_num"
