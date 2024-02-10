# ----- { ~/.zshrc } -----------------------------------------------------------

# --- { Oh my zsh } ---

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# Currently, all themes are disabled, and custom themes are used instead.
# ZSH_THEME="gentoo"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14

DISABLE_UNTRACKED_FILES_DIRTY="true"

# --- { zsh Plugins } ---
plugins=(
    git                     # Additional git functionality
    vi-mode                 # Extended VI mode
    wakatime                # Personal programming statistics
    zsh-autosuggestions     # Additional suggestions based on ZSH history
    zsh-syntax-highlighting # Syntax (shell) highlighting
)

source $ZSH/oh-my-zsh.sh # Initialize OMZ

# Load aliases, exports
[ -f ~/.custom/zsh/alias.zsh   ] && source ~/.custom/zsh/alias.zsh
[ -f ~/.custom/zsh/exports.zsh ] && source ~/.custom/zsh/exports.zsh

# Load custom prompt, VI mode and tmux configurations.
[ -f ~/.custom/zsh/prompt.zsh  ] && source ~/.custom/zsh/prompt.zsh
[ -f ~/.custom/zsh/vi-mode.zsh ] && source ~/.custom/zsh/vi-mode.zsh
[ -f ~/.custom/zsh/tmux.zsh    ] && source ~/.custom/zsh/tmux.zsh

# ----- { ~/.zshrc } -----------------------------------------------------------
