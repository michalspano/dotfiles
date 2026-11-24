# Shared environment for sketchybarrc and every plugin:
#
#   source "${CONFIG_DIR:-$HOME/.config/sketchybar}/env.sh"
#
# Plugins inherit whatever environment sketchybar itself was started with. When
# that lacks Homebrew's bin dir, every `sketchybar --set` inside a plugin fails
# with "sketchybar: command not found" and the item silently stops updating (or
# stays blank after a reload). Pinning PATH here rules that out.
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin${PATH:+:$PATH}"

SB_DIR="${BASH_SOURCE[0]%/*}"

source "$SB_DIR/colors.sh"
source "$SB_DIR/icons.sh"
