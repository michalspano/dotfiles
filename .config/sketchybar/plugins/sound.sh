#!/bin/bash
#
# Output volume and mute state.
#   click: mute/unmute    right-click: Sound settings    scroll: volume up/down
# Events: volume_change, mouse.clicked, mouse.scrolled, system_woke
#         (+ a 10s poll, because toggling mute doesn't fire volume_change).

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

STEP=5  # volume change per scroll tick, in %

case "$SENDER" in
  mouse.clicked)
    if [ "$BUTTON" = "right" ]; then
      open "x-apple.systempreferences:com.apple.Sound-Settings.extension"
      exit 0
    fi
    osascript -e 'set volume output muted (not (output muted of (get volume settings)))'
    ;;
  mouse.scrolled)
    case "$SCROLL_DELTA" in
      -*) DELTA=-$STEP ;;
      *)  DELTA=$STEP ;;
    esac
    osascript -e "set v to (output volume of (get volume settings)) + ($DELTA)" \
              -e 'if v > 100 then set v to 100'                                \
              -e 'if v < 0 then set v to 0'                                    \
              -e 'set volume output volume v'
    ;;
esac

# Both values in one osascript call (previously two per update), e.g. "56,false".
SETTINGS="$(osascript -e 'set s to get volume settings' \
  -e '((output volume of s) as text) & "," & ((output muted of s) as text)')"
VOLUME="${SETTINGS%%,*}"
MUTED="${SETTINGS##*,}"

case "$VOLUME" in
  '' | *[!0-9]*)
    # Output device without volume control (e.g. HDMI) reports "missing value".
    sketchybar --set "$NAME" icon="$ICON_VOLUME_HIGH" label="--"
    exit 0
    ;;
esac

if   [ "$MUTED" = "true" ] || [ "$VOLUME" -eq 0 ]; then ICON=$ICON_VOLUME_MUTE
elif [ "$VOLUME" -ge 66 ];                          then ICON=$ICON_VOLUME_HIGH
elif [ "$VOLUME" -ge 33 ];                          then ICON=$ICON_VOLUME_LOW
else                                                     ICON=$ICON_VOLUME_OFF
fi

sketchybar --set "$NAME" icon="$ICON" label="${VOLUME}%"
