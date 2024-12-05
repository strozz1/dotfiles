#!/bin/bash

read -p "tool: " tool
read -p "topic: " topic


url="https://cht.sh/"$tool
if [ $topic != "" ]; then
    url="$url/$topic"
fi
tmux neww bash -c "curl ${url} & while [ : ]; do sleep 1; done"
