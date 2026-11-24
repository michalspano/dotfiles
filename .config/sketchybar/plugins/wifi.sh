#!/bin/bash
#
# Wi-Fi state, plus download/upload rate while connected: "XX/YY" in bytes/s,
# auto-scaled to K, M or G (e.g. "12M/340K"). Disconnected: icon only.
#
# Connection: whether the Wi-Fi interface has a usable IP address. (The old
# version read `airport -I`, which no longer exists on current macOS, and macOS
# now redacts the SSID for command-line tools.)
# Rate: the interface's byte counters are read twice, one second apart, so no
# state file or high-resolution clock is needed. sketchybar runs scripts
# asynchronously, so the sleep never blocks the bar.
#
#   $1: Wi-Fi interface (looked up in sketchybarrc; defaults to en0)
# Events: wifi_change, system_woke (+ a 2s poll that drives the rate).

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"

DEVICE="${1:-en0}"
IP="$(ipconfig getifaddr "$DEVICE" 2>/dev/null)"

hide_rate() {
  # $1: icon, $2: icon color.
  # icon.padding_right=6 keeps the usual 12px gap when only the icon shows.
  sketchybar --set "$NAME" icon="$1"             \
                           icon.color="$2"       \
                           label.drawing=off     \
                           icon.padding_right=6
}

case "$IP" in
  '' | 169.254.*)  # no address, or self-assigned (no DHCP lease)
    hide_rate "$ICON_WIFI_OFF" "$DIMMED"
    exit 0
    ;;
esac

# Total bytes in/out from the interface's <Link#n> row of `netstat -ibn`.
# Counted from the end of the line (Ibytes Opkts Oerrs Obytes Coll), so a
# missing Address column can't shift the fields.
read_bytes() {
  netstat -ibn -I "$DEVICE" 2>/dev/null \
    | awk '/<Link#/ { print $(NF - 4), $(NF - 1); exit }'
}

read -r IN_1 OUT_1 <<< "$(read_bytes)"
sleep 1
read -r IN_2 OUT_2 <<< "$(read_bytes)"

case "$IN_1$OUT_1$IN_2$OUT_2" in
  '' | *[!0-9]*)  # counters unavailable: still show the connection state
    hide_rate "$ICON_WIFI" "$WHITE"
    exit 0
    ;;
esac

# No space padding: sketchybar sizes a label by its visible characters, so
# padding spaces are drawn but not counted. Leading spaces pushed the text away
# from the icon and past the widget's edge, under the battery widget.
# Each side is at most 4 characters ("999K", "1.2M", "12M").
LABEL="$(awk -v i1="$IN_1" -v o1="$OUT_1" -v i2="$IN_2" -v o2="$OUT_2" '
  function fmt(bytes,   v, unit) {
    v = bytes / 1024; unit = "K"
    if (v >= 999.5) { v /= 1024; unit = "M" }
    if (v >= 999.5) { v /= 1024; unit = "G" }
    if (unit != "K" && v < 9.95) return sprintf("%.1f%s", v, unit)
    return sprintf("%.0f%s", v, unit)
  }
  BEGIN {
    down = i2 - i1; up = o2 - o1
    if (down < 0) down = 0  # counters reset (interface restarted)
    if (up < 0) up = 0
    printf "%s/%s", fmt(down), fmt(up)
  }')"

sketchybar --set "$NAME" icon="$ICON_WIFI"   \
                         icon.color="$WHITE" \
                         label="$LABEL"      \
                         label.drawing=on    \
                         icon.padding_right=3
