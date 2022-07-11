# ----- { ~/.zshrc } ---------------------------------------------------------------------

# --- { Oh my zsh } ---  

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="gentoo"

zstyle ':omz:update' mode auto     
zstyle ':omz:update' frequency 14

DISABLE_UNTRACKED_FILES_DIRTY="true"

# --- { zsh Plugins } ---  
plugins=(
    git
    wakatime 
    zsh-autosuggestions 
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# --- { aliases } ---  
[ -f ~/.env/alias.zsh ] && source ~/.env/alias.zsh

# --- { command prompt } ---  
[ -f ~/.env/prompt.zsh ] && source ~/.env/prompt.zsh

# --- { tmux } ---  
[ -f ~/.env/tmux.zsh ] && source ~/.env/tmux.zsh

# --- { bun } ---  
[ -f ~/.env/bun.zsh ] && source ~/.env/bun.zsh

# --- { general } ---  

bindkey -s '^E' 'exit\n'
export LANG=en_US.UTF-8
