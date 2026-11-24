#!/bin/bash
#
# Click on the ">" separator.
#   left:  Mission Control (overview of all desktops)
#   right: reload sketchybar, a quick fix if the bar ever misbehaves

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

if [ "$BUTTON" = "right" ]; then
  sketchybar --reload
else
  open -a "Mission Control"
fi
