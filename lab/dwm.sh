#!/bin/bash

exec 2> ~/github/mydwm/lab/dwm-shell-error.log

SCREEN_COUNT=$(xrandr --listmonitors | head -n 1 | awk '{print $2}')

if [ "$SCREEN_COUNT" -eq 1 ]; then
	feh --bg-scale --no-xinerama ~/github/mydwm/wallpaper/1.jpg
elif [ "$SCREEN_COUNT" -eq 2 ]; then
	xrandr --output HDMI-A-0 --auto --left-of DVI-D-0
	feh --bg-scale --no-xinerama ~/github/mydwm/wallpaper/2-sea.jpg
elif [ "$SCREEN_COUNT" -eq 3 ]; then
	xrandr --output HDMI-A-0 --auto --left-of DVI-D-0
	xrandr --output DisplayPort-2 --auto --right-of DVI-D-0
	feh --bg-scale --no-xinerama ~/github/mydwm/wallpaper/2-sea.jpg
fi

picom --experimental-backends & # --experimental-backends 讓毛邊效果可以生效。 -b 比起用 & 在後台更穩定，但有時可能會導致picom崩潰，比如用test.sh開啟八個vulkan視窗再關掉
slstatus &

exec dwm

export LS_COLORS="$LS_COLORS:di=01;33"
