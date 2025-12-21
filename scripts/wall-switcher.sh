#!/bin/bash

WALLDIR="$HOME/pictures"

CWD=$(pwd)

cd "$WALLDIR" || exit

SELECTED_WALL=$(for a in *.jpg *.png; do
  echo -en "$a\0icon\x1f$PWD/$a\n"
done | rofi -dmenu -show-icons -p "")

[ -z "$SELECTED_WALL" ] && exit 1

FILE="$WALLDIR/$SELECTED_WALL"

~/.config/scripts/wallpaper.sh "$FILE"

cd "$CWD" || exit
