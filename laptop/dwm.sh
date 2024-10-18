#!/bin/bash
exec 2> ~/github/my/dwm/lab/dwm-shell-error.log

feh --bg-fill ~/github/mydwm/wallpaper/4.jpg

picom --experimental-backends &
slstatus &


exec dwm

