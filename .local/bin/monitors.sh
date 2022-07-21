#!/bin/bash
#                  ██ ██ ███    ██ ██   ██ ███████ ██   ██ ██   ██ ██ 
#                  ██ ██ ████   ██ ██  ██  ██      ██  ██  ██  ██  ██ 
# █████ █████      ██ ██ ██ ██  ██ █████   █████   █████   █████   ██ 
#             ██   ██ ██ ██  ██ ██ ██  ██  ██      ██  ██  ██  ██  ██ 
#              █████  ██ ██   ████ ██   ██ ███████ ██   ██ ██   ██ ██ 

monitors=$(xrandr | grep " connected " | awk {'print $1'})
mon1=$(echo $monitors | awk {'print $1'})
mon2=$(echo $monitors | awk {'print $2'})
mon3=$(echo $monitors | awk {'print $3'})
xrandr --output $mon2 --auto --left-of $mon1 --output $mon3 --auto --left-of $mon2 --rotate left
