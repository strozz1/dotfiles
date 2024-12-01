#!/bin/bash


function create() {
    if [ -d ~/projects/$1 ]; then
        echo "The project $1 already exists."
        exit -1
    fi
    mkdir ~/projects/$1
    project=~/projects/$1
}

#check if new project
if [ $1 = '-n' ]; then
    if [ $# -eq 2 ]; then
        create $2
    else
        echo "Incorrect use of -n flag: you must provide a project name."
        exit -1
    fi
else
project=$(find ~/projects ~/configs -maxdepth 1 -mindepth 1 -type d  | fzf)
fi

name=$(basename $project)
server=$(pgrep tmux)
if  [ -z server ]; then
    tmux new -d -s $name -c $project
    exit 0
fi


if ! tmux has-session -t=$name 2>/dev/null ; then
    tmux new -d -s $name -c $project
fi

if [ -z $TMUX ]; then
    tmux attach -t $name
    exit 0
fi

tmux switch-client -t $name
