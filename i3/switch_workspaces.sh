#!/bin/bash

destination=$1
current=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')

if [ destination != current ]; then
    i3-msg "rename workspace $current to tmp; rename workspace $destination to $current; rename workspace tmp to $destination"
fi

