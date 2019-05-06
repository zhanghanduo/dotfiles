#!/bin/bash

gen_workspaces()
{
    i3-msg -t get_workspaces | tr ',' '\n' | grep "name" | sed 's/"name":"\(.*\)"/\1/g' | sort -n
}


WORKSPACE=$( (gen_workspaces)  | rofi -dmenu -config ~/.config/i3/rofi -lines 10 -sidebar-mode -opacity "82" -bw 0 -bc "#1f222d" -bg "#1f222d" -fg "$text-color" -hlbg "#1f222d" -hlfg "#9575cd" -font 'FontAwesome 16' -p "Select workspace:")

if [ -n "${WORKSPACE}" ]
then
    i3-msg workspace "${WORKSPACE}"
fi