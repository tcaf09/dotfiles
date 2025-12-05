#!/bin/bash

WALL="$1"

if [ -z "$WALL" ]; then
  echo "Usage: $0 /path/to/wallpaper.jpg"
  exit 1
fi

swww img "$WALL" --transition-type grow --transition-duration 2
sleep 2
wal -i "$WALL"
source ~/.cache/wal/colors.sh

cat <<EOF >~/.config/waybar/style.css
/* Remove borders/backgrounds */

.modules-left, .modules-center, .modules-right {
	background-color: $background;
	border-radius: 50px;
}

.modules-left, .modules-right {
	margin: 0 25px
}
#workspaces button {
    border: none;
    background: transparent;
    color: $foreground;
}

/* Highlight active workspace */
#workspaces button.active {
	padding: 0 20px;
	border-radius: 50px;
	background-color: $color4;
}

#workspaces button.active label {
	color: $background;
}

#waybar {
	border-radius: 50px;
	background-color: transparent;
	color: $foreground;
}

widget label {
	padding: 0px 8px;
	margin: 5px;
	color: $foreground;
}
EOF

cat <<EOF >~/.config/wofi/style.css
window {
	background-color: $background;
	border: 2px solid $color4;
	color: $foreground;
}

#entry:selected {
	background-color: $color4
}

#entry {
	padding: 10px;
}

#input {
	padding: 10px;
	color: $foreground;
	outline: none;
	border: none;
	box-shadow: none;
	background: transparent;
}

#input:focus {
	outline: none;
	border: none;
	box-shadow: none;
	background: transparent;
	border-image: none;
	-gtk-icon-shadow: none;
	-gtk-icon-effect: none;
}
EOF

pkill -USR2 waybar
