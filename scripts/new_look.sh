#!/bin/sh

wall=$(find ~/Pictures/wallpapers -type f | shuf -n 1)
xwallpaper --zoom $wall
wal -c
wal -i $wall
