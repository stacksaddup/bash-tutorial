#!/usr/bin/env bash

echo "date     ==> $(date)"
echo "date +%s ==> $(date +%s)"
echo

now=$(date +%s)
echo "Start time: $now"

timeout=60
stop_time=$((now + timeout))
echo " Stop time: $stop_time"
