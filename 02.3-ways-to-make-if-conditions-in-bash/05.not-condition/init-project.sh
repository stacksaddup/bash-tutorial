#!/usr/bin/env bash

project_path="./project/web-app"
if [[ ! -d $project_path ]]; then
    echo "Making $project_path.."
    mkdir -p "$project_path"
    echo 'Done!'
fi

# do something with $project_path
