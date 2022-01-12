#!/usr/bin/env bash

read -p "Please input your name: " name
if [[ -z $name ]]; then
    echo "\"name\" is empty!"
    exit 1
fi

echo "Hi, $name"
