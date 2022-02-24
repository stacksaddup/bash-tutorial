#!/usr/bin/env bash

if tcpdump -c 1 &> /dev/null; then
    echo "We can use tcpdump to capture packets!";
else
    echo "We don't have enough privilege to run tcpdump"
fi
