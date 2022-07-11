# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# CUSTOM COMMAND PROMPT
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[%b]'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

CUSTOM_SYMBOL=" Λ"
ARROW="»"

PROMPT='%(?.%F{cyan}${CUSTOM_SYMBOL}.%F{red}?%?)%f %B%F{250}%1 %~%f%b %F{cyan}${ARROW}%f %F{cyan}${vcs_info_msg_0_}%f '

# Cmake
PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Node
PATH=$PATH:/Users/michalspano/.npm-packages/bin

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/michalspano/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
alias goland="open -n ~/Applications/JetBrains\ Toolbox/apps/Goland/ch-0/212.5284.40/Goland.app"
alias pycharm="open -n ~/Applications/JetBrains\ Toolbox/apps/PyCharm-P/ch-0/212.5284.44/Pycharm.app"

alias py="python3"

# Personal Script files
# ~/.scripts/
alias mails="./.scripts/mail.sh"
alias compsci="source ~/.scripts/compsci.sh"
alias tg="source ~/.scripts/telegram.sh"

alias ul-="ultralist"

# Example
# alias JETBRAINS-APP="open -a ~/Applications/JetBrains\ Toolbox/apps/.../ -n"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
#
# Example aliases

# Plugins
plugins=(
	git 
	zsh-wakatime
	zsh-autosuggestions
	zsh-syntax-highlighting
)

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Make Control-E export 'exit' to the shell
bindkey -s '^E' 'exit\n'

# Weather forecast alias
alias wf="curl wttr.in/Senec\?1nqF"

# SoundCloud music alias
alias bl-ys="open https://soundcloud.com/user-543006032/bladee-radio-stockholm-mix-w-yung-sherman-031221#t=460"

# macOS System Shortcuts
alias icons-off="defaults write com.apple.finder CreateDesktop false && killall Finder"
alias icons-on="defaults write com.apple.finder CreateDesktop true && killall Finder"
alias sys-off="halt"
alias sys-sleep="pmset displaysleepnow"
alias sys-save="open -b com.apple.ScreenSaver.Engine"

# Obsidian PWD
alias obs="cd /Users/michalspano/Library/Mobile\ Documents/iCloud~md~obsidian/Documents"

alias ubersicht-conf="cd /Users/michalspano/Library/Application\ Support/Übersicht/widgets"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f "/Users/michalspano/.ghcup/env" ] && source "/Users/michalspano/.ghcup/env" # ghcup-env

# Execute Neofetch at Start up
# neofetch
 #macchina
# pfetch

if [ ! -z "$TMUX" ]; then
    echo "\033[0;36m ~ tmuxed ٩( ᐛ )و\n\033[0;m"
fi

source $ZSH/oh-my-zsh.sh
