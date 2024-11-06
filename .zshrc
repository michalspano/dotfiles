# ==============================  { ~/.zshrc}  =================================

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME=""

plugins=(
    git
    vi-mode
    # wakatime
    # zsh-autosuggestions
    zsh-syntax-highlighting
)

. $ZSH/oh-my-zsh.sh

[ -f $HOME/.custom/zsh/exports.zsh ] && . $HOME/.custom/zsh/exports.zsh
[ -f $XDG_CUSTOM_HOME/zsh/alias.zsh ] && . $XDG_CUSTOM_HOME/zsh/alias.zsh
[ -f $XDG_CUSTOM_HOME/zsh/prompt.zsh ] && . $XDG_CUSTOM_HOME/zsh/prompt.zsh
[ -f $XDG_CUSTOM_HOME/zsh/vi-mode.zsh ] && . $XDG_CUSTOM_HOME/zsh/vi-mode.zsh

if [ ! -z "$TMUX" ]; then echo "~ tmuxed O.o\n"; fi

## ========================================================================== ##
