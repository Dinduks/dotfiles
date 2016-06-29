#!/bin/sh

xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --mode 2560x1080_50.00 --pos 0x0 --rotate normal --output LVDS1 --off --output VGA1 --off

wallpaper=$(ls ~/Pictures/Wallpapers/21:9/ | shuf -n 1)
feh --bg-fill ~/Pictures/Wallpapers/21:9/$wallpaper
