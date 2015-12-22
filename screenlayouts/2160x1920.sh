#!/bin/sh

xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --mode 1920x1080 --pos 1080x0 --rotate left --output HDMI1 --off --output LVDS1 --off --output VGA1 --primary --mode 1920x1080 --pos 0x0 --rotate left

wallpaper=$(ls ~/Pictures/Wallpapers/9:16/ | shuf -n 1)
feh --bg-fill "$HOME/Pictures/Wallpapers/9:16/$wallpaper"
