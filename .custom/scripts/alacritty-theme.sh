#!/bin/sh

# alacritty theme switcher

ALACRITTY="$HOME/.config/alacritty/"

# ensure that the alacritty config directory exists
if [ ! -d "$ALACRITTY" ]; then
    echo "Alacritty config directory does not exist"
    exit 1
fi

ALACRITTY_CONFIG="$ALACRITTY/alacritty.yml" # alacritty config file
ALACRITTY_THEME="$ALACRITTY/themes/"        # alacritty themes directory

# cosmetic preferences
EMOJI="ᵔᴥᵔ"
GREEN="\033[0;32m"; CYAN="\033[0;36m"; RESET="\033[0m"

option="$1"     # passed command-line argument
theme="default" # default theme

# show usage
if [ -z "$option" ] || [ "$option" = "-h" ] || [ "$option" = "--help" ]; then
    echo "Description: Alacritty theme switcher"
    echo "Usage: $0 [theme] | [option]"
    echo "[theme]: name of the theme to apply"
    echo "\t- the name of the theme must be the same as the file name (without extension)"
    echo "\t- a dot (.) is used to indicate the default theme"
    echo "[option]: additional options"
    echo "\t -h, --help\tshow this help"
    echo "\t -l, --list\tlist available themes"
    echo "\t -r, --random\tapply a random theme"
    exit 1
fi

# list the available themes under the themes directory
if [ "$option" = "-l" ] || [ "$option" = "--list" ]; then
    ls "$ALACRITTY_THEME"
    exit 0

# assign a random theme from the themes directory
elif [ "$option" = "-r" ] || [ "$option" = "--random" ]; then
  n=$(ls "$ALACRITTY_THEME" | wc -l)                # get the number of themes
  idx=$(( ( RANDOM % $n ) + 1 ))                    # chose a random index
  option=$(ls "$ALACRITTY_THEME" | sed -n "$idx p") # chose the theme at the index
  theme=${option%.yml}                              # remove the extension

# assign the default theme
elif [ "$option" = "." ]; then option="default"

# assign the selected theme
else theme=$option; fi

# verify that the theme exists
if [ ! -f "$ALACRITTY_THEME/$option.yml" ]; then
    echo "Theme $option does not exist"
    exit 1
fi

# copy the selected theme to the alacritty config
cp "$ALACRITTY_THEME/$option.yml" "$ALACRITTY_CONFIG"

# show the applied theme
echo "$CYAN$EMOJI$RESET – applied theme $GREEN$theme.yml$RESET"
