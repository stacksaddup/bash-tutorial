#!/usr/bin/env bash

# | Stage   | Months          |
# |---------+-----------------|
# | Baby    |       age < 12  |
# | Toddler | 12 <= age < 36  |
# | Child   |       age >= 36 |

age=7

if (( age < 0 )) || (( age >= 144 )); then
    echo "*** ERROR: invalid age: $age"
    exit 1
fi

if (( $age < 12 )); then
    echo 'Baby'
elif (( $age >= 12 )) && (( $age < 36 )); then
    echo 'Toddler'
else
    echo 'Child'
fi
