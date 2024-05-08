#!/bin/bash
# put this file in ~/

xrandr --output HDMI-A-0 --auto --left-of DVI-D-0

feh --nofehbg --bg-scale --no-xinerama ~/github/mydwm/wallpaper/2-digit.png
picom &
slstatus &




exec dwm

export LS_COLORS="$LS_COLORS:di=01;33"
