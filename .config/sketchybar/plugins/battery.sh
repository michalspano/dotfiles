#!/bin/bash
#
# Battery level and power state. Hidden on Macs without a battery.
# Events: power_source_change, system_woke (+ a 60s poll for the level).

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

BATT="$(pmset -g batt)"
PERCENT="$(printf '%s\n' "$BATT" | grep -Eo '[0-9]+%' | head -n 1 | tr -d '%')"

if [ -z "$PERCENT" ]; then
  sketchybar --set "$NAME" drawing=off
  exit 0
fi

# Same thresholds and colors as before.
if   [ "$PERCENT" -ge 50 ]; then COLOR=$GREEN
elif [ "$PERCENT" -ge 20 ]; then COLOR=$ORANGE
else                             COLOR=$RED
fi

if   [ "$PERCENT" -ge 80 ]; then ICON=$ICON_BATTERY_100
elif [ "$PERCENT" -ge 60 ]; then ICON=$ICON_BATTERY_75
elif [ "$PERCENT" -ge 40 ]; then ICON=$ICON_BATTERY_50
elif [ "$PERCENT" -ge 15 ]; then ICON=$ICON_BATTERY_25
else                             ICON=$ICON_BATTERY_0
fi

# On AC power: a bolt while charging, a plug while the charge is held (full,
# optimised charging, or a charge limit). "; discharging" doesn't match.
if printf '%s\n' "$BATT" | grep -q "AC Power"; then
  COLOR=$GREEN
  if printf '%s\n' "$BATT" | grep -Eq '; (charging|finishing charge)'; then
    ICON=$ICON_BATTERY_CHARGING
  else
    ICON=$ICON_BATTERY_PLUGGED
  fi
fi

sketchybar --set "$NAME" drawing=on            \
                         icon="$ICON"          \
                         icon.color="$COLOR"   \
                         label="${PERCENT}%"
