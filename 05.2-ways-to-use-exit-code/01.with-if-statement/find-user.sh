#!/usr/bin/env bash

if (( $# < 1 )); then
    echo "*** ERROR: you should input a name"
    exit 1
fi

user=$1

cat /etc/passwd | awk -F ':' '{print $1}' | grep -E "^$user$" > /dev/null
found=$?

if [[ $found == 0 ]]; then
    echo "$user is found"
else
    echo "No such user: $user"
fi
