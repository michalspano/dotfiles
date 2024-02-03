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
[ -f ~/.env/alias.zsh   ] && source ~/.env/alias.zsh
[ -f ~/.env/exports.zsh ] && source ~/.env/exports.zsh

# Load env prompt, VI mode and tmux configurations.
[ -f ~/.env/prompt.zsh  ] && source ~/.env/prompt.zsh
[ -f ~/.env/vi-mode.zsh ] && source ~/.env/vi-mode.zsh
[ -f ~/.env/tmux.zsh    ] && source ~/.env/tmux.zsh

# ----- { ~/.zshrc } -----------------------------------------------------------
