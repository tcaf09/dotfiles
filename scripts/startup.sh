#!/bin/bash

~/.config/scripts/new_look.sh

killall picom
picom -b

~/.config/polybar/launch.sh

