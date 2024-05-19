#!/bin/bash

connected_monitors=$(xrandr --query | grep " connected" | awk '{ print $1 }')

# Default configuration for laptop only
xrandr --output eDP-1 --mode 3456x2160 --primary --pos 0x0

# Loop through connected monitors and apply settings if DP-3 is connected
for monitor in $connected_monitors; do
    if [ "$monitor" == "DP-3" ]; then
        xrandr --output eDP-1 --mode 1920x1200 --pos 0x0 --primary
        xrandr --output DP-3 --mode 1920x1080 --rate 90 --pos 1920x0
        workspace 1 output DP-3
        workspace 2 output eDP-1
    fi
done

# Set cursor size
echo "Xcursor.size: 24" | xrdb -merge
