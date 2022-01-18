#!/usr/bin/env bash

errors=$(find . -name 'error.log*' | sort)
if [[ -n $errors ]]; then
    echo -e "You should check these error logs:\n$errors"
else
    echo "Everything is just fine!"
fi
