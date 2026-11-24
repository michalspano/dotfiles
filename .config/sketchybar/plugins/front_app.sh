#!/bin/bash
#
# Name of the frontmost app.
# front_app_switched passes the name in $INFO. Any other trigger (config load,
# reload, wake) has no $INFO, which used to leave the label blank until the
# next app switch, so the name is looked up directly instead.

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

APP="$INFO"

if [ "$SENDER" != "front_app_switched" ] || [ -z "$APP" ]; then
  # lsappinfo prints: "LSDisplayName"="Firefox"
  APP="$(lsappinfo info -only name "$(lsappinfo front)" 2>/dev/null \
    | awk -F'"' 'NF >= 4 { print $4; exit }')"
fi

sketchybar --set "$NAME" label="$APP"
