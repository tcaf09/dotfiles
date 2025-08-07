#!/bin/bash

options="Power Off\nRestart\nLog Out"

choice=$(echo -e "$options" | rofi -dmenu -p "Power Options")

case "$choice" in 
	"Power Off")
		shutdown now
		;;
	"Restart")
		reboot now
		;;
	"Log Out")
		i3-msg exit
		;;
esac
