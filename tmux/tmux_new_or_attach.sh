#!/usr/bin/env bash

# Create a new or attach to an existing tmux session, with special naming.

NAME=$1

if [[ ! $NAME ]] ; then
    # Just print out tmux ls and exit.
    tmux ls
    exit
fi

DATE=`date +'%Y%m%d'`
NEW_SESSION="${DATE}_${NAME}"

NUMBER_MATCHING=`tmux ls &> /dev/null && tmux ls 2> /dev/null | grep $NAME | wc -l`
if [ "$NUMBER_MATCHING" ] && [ "$NUMBER_MATCHING" -gt "1" ]; then
    echo "Too many matching names.  Be more specific."
    exit
fi

EXISTING_SESSION=`tmux ls 2> /dev/null | grep $NAME | sed -e 's/:.*//'`

if [[ $EXISTING_SESSION ]] ; then
    tmux attach -t "$EXISTING_SESSION"
else
    tmux new -s "$NEW_SESSION"
fi
