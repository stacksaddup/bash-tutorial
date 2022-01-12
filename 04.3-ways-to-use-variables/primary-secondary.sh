#!/usr/bin/env bash

echo "Will run on the following host(s):"
echo "  Primary: $primary"
if [[ -v secondary ]]; then
    echo "  Secondary: $secondary"
fi

# do something with the primary server
# or switch to secondary one if the primary failed
