#!/bin/bash
#
# Switch to Mission Control desktop $1 (1-10) by sending ctrl+<n>.
#
# This used to call `yabai -m space --focus`, but yabai no longer runs
# (Amethyst manages windows and has no CLI), so every click failed with
# "yabai-msg: failed to connect to socket". Sending the system shortcut needs:
#   - System Settings > Keyboard > Keyboard Shortcuts > Mission Control >
#     "Switch to Desktop N" enabled for each desktop you want to click
#   - sketchybar allowed under Privacy & Security > Accessibility

KEY_CODES=(18 19 20 21 23 22 26 28 25 29)  # macOS key codes for 1..9, 0

SID="$1"
case "$SID" in
  '' | *[!0-9]*) exit 1 ;;
esac
if [ "$SID" -lt 1 ] || [ "$SID" -gt ${#KEY_CODES[@]} ]; then
  exit 1
fi

osascript -e "tell application \"System Events\" to key code ${KEY_CODES[SID - 1]} using control down"
