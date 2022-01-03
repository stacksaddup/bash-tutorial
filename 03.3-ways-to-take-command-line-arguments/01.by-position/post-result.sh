#!/usr/bin/env bash

category=$1
average=$2
build_num=$3

server_ip='10.0.0.1'
if (( $# >= 4 )); then
    server_ip=$4
else
    echo "Using default server IP: $server_ip"
fi

data="{
    \"build\": \"${build_num}\",
    \"category\": \"${category}\",
    \"average\": ${average},
}"
url="http://${server_ip}/api/performance_result/"

echo "Posting testing results..."
echo "Data: $data"
echo "URL: $url"

# call posting API via programs like "curl"
