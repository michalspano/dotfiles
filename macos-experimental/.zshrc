# .zshrc

# ----- { Command Prompt } ------------------------------------------------------------

[ -f .env/.PROMPT ] && source .env/.PROMPT

# ----- { ENV Paths } ------------------------------------------------------------------

[ -f .env/.PATH ] && source .env/.PATH

# ----- { oh-my-zsh themes } -----------------------------------------------------------

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


# ----- { Aliases } ---------------------------------------------------------------------

[ -f .env/.aliases ] && source .env/.aliases

# ----- { Scripts } --------------------------------------------------------------------

alias mails="./.scripts/mail.sh"
alias tg="source ~/.scripts/telegram.sh"

# ----- { Plugins } ---------------------------------------------------------------------

[ -f .env/.plugins ] && source .env/.plugins

# ----- { Keybindings } -----------------------------------------------------------------

bindkey -s '^E' 'exit\n'

# ----- { Tmux specific } ----------------------------------------------------------------

if [ ! -z "$TMUX" ]; then
    echo "\033[0;36m ~ tmuxed ٩( ᐛ )و\n\033[0;m"
fi

# ---------------------------------------------------------------------------------------

source $ZSH/oh-my-zsh.sh

# ----- { >> EOF } ----------------------------------------------------------------------
