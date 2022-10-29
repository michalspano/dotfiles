# ----- { Prompt } ---------------------------------------------------------------------
# everytime tmux is called, this message is printed

EMOJI="٩( ᐛ )و"                     # my custom emoji
CYAN="\033[0;36m"; RESET="\033[0;m" # colors

if [ ! -z "$TMUX" ]; then echo "${CYAN} ~ tmuxed ${EMOJI}${RESET}\n"; fi