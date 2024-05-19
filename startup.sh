#!/bin/bash

# Default configuration for laptop + external monitor
xrandr --output eDP-1 --mode 1920x1200 --pos 0x0 --primary
xrandr --output DP-3 --mode 1920x1080 --rate 90 --pos 1920x0


# Set cursor size
echo "Xcursor.size: 24" | xrdb -merge
