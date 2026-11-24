#!/bin/bash
#
# Highlights the focused space. sketchybar passes $SELECTED (on/off) to every
# space item on space_change.

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

sketchybar --set "$NAME" background.drawing="${SELECTED:-off}"
