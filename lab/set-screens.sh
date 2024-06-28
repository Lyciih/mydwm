#!/bin/bash

exec 2> /home/lyciih/github/mydwm/lab/set-screen-error.log

SCREEN_COUNT=$(xrandr --listmonitors | head -n 1 | awk '{print $2}')

if [ "$SCREEN_COUNT" -eq 2 ]; then
	xrandr --output HDMI-A-0 --auto --left-of DVI-D-0
elif [ "$SCREEN_COUNT" -eq 3 ]; then
	xrandr --output HDMI-A-0 --auto --left-of DVI-D-0
	xrandr --output DisplayPort-2 --auto --right-of DVI-D-0
fi

