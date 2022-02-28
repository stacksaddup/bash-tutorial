#!/usr/bin/env bash

# regular way
# if grep 'FAILED' execution.log > /dev/null; then
#     echo 'FAILED!!'
# else
#     echo 'PASSED!'
# fi

# another way
grep 'FAILED' execution.log > /dev/null && echo 'FAILED!!' || echo 'PASSED!'
