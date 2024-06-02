#!/bin/bash
# put this file in ~/

xrandr --output HDMI-A-0 --auto --left-of DVI-D-0

feh --nofehbg --bg-scale --no-xinerama ~/github/mydwm/wallpaper/2-sea.jpg
picom &
slstatus &




exec dwm > ~/dwm.log 2>&1

export LS_COLORS="$LS_COLORS:di=01;33"
