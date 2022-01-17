#!/usr/bin/env bash

echo "Will run on the following host(s):"
echo "  Primary: $primary"
if [[ -v secondary ]]; then
    echo "  Secondary: $secondary"
fi
echo

# do something on the primary server
echo "Run on the primary ($primary)... FAILED!!"
failed='true'

# switch to the secondary if the primary failed
if [[ $failed == 'true' ]]; then
    if [[ -v secondary ]]; then
	echo "Switch to the secondary ($secondary)..."
    fi
fi
