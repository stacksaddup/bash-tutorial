#!/usr/bin/env bash

# regular way
# if ls *.log > /dev/null; then
#     grep -h 'Response time:' *.log
# fi

# another way
ls *.log &> /dev/null && grep -h 'Response time:' *.log
