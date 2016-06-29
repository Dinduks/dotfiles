#!/bin/sh

xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --off --output LVDS1 --mode 1366x768 --pos 0x0 --rotate normal --output VGA1 --off

wallpaper=$(ls ~/Pictures/Wallpapers/16:9/ | shuf -n 1)
feh --bg-fill ~/Pictures/Wallpapers/16:9/$wallpaper
