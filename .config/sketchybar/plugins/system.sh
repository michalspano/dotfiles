#!/bin/bash
#
# CPU load (averaged over all cores) and memory in use (100 - the free % that
# memory_pressure reports, as before).
# Attached to the cpu item (4s poll) and updates both the cpu and ram items,
# so one process covers both widgets.

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

CORES="$(sysctl -n hw.ncpu 2>/dev/null)"
CPU="$(ps -A -o %cpu= | awk -v cores="${CORES:-1}" '
  { sum += $1 }
  END { v = sum / cores; if (v > 100) v = 100; printf "%.0f", v }')"

RAM_FREE="$(memory_pressure 2>/dev/null \
  | awk -F': ' '/System-wide memory free percentage/ { sub(/%/, "", $2); print $2 }')"

case "$RAM_FREE" in
  '' | *[!0-9]*) RAM="--" ;;
  *)             RAM="$((100 - RAM_FREE))%" ;;
esac

sketchybar --set cpu label="${CPU:-0}%" \
           --set ram label="$RAM"
