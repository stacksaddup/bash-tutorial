#!/usr/bin/env bash

now=$(date +%s)
timeout=60
stop_time=$((now + timeout))

while ((now < stop_time));
do
    echo "Do something..."
    sleep 15

    now=$(date +%s)
done

echo "Done!"
