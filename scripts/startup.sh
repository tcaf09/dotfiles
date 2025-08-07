#!/bin/bash

sleep 2

~/.config/scripts/new_look.sh

killall picom

sleep 1

picom -b

sleep 1

~/.config/polybar/launch.sh

