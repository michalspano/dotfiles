#!/bin/bash
#
# Weekday, date and time, e.g. "Tue 24/11 17:45".

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

sketchybar --set "$NAME" label="$(date '+%a %d/%m %H:%M')"
