#!/bin/bash
#
# Current keyboard layout as a two-letter code.
# Events: input_change (fired by macOS on every input source switch),
#         system_woke (+ a 30s poll as a safety net).

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

SOURCE="$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist \
  AppleCurrentKeyboardLayoutInputSourceID 2>/dev/null)"

case "$SOURCE" in
  com.apple.keylayout.US | com.apple.keylayout.ABC)              LABEL="EN" ;;
  com.apple.keylayout.Swedish-Pro | com.apple.keylayout.Swedish) LABEL="SE" ;;
  com.apple.keylayout.Slovak | com.apple.keylayout.Slovak-QWERTY) LABEL="SK" ;;
  "")                                                            LABEL="--" ;;
  *)
    # Any other layout: the first two letters of its name ("German" -> "GE")
    # instead of an empty label.
    LAYOUT="${SOURCE##*.}"
    LABEL="$(printf '%s' "${LAYOUT:0:2}" | tr '[:lower:]' '[:upper:]')"
    ;;
esac

sketchybar --set "$NAME" label="$LABEL"
