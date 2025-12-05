#!/bin/bash

WALLDIR="$HOME/pictures"

chosen=$(ls "$WALLDIR" | wofi --show dmenu --prompt "Select Wallpaper:")

[ -z "$chosen" ] && exit 1

FILE="$WALLDIR/$chosen"

~/.config/scripts/wallpaper.sh "$FILE"
