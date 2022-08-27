# ----- { Aliases } ---------------------------------------------------------------------

# --- { DEV Tools } ---  

alias py="/usr/local/bin/python3"
alias jl="/usr/local/bin/julia"
alias gh="open 'https://github.com/michalspano'"
alias config="nvim $HOME/.zshrc"
alias nvim-config="nvim $HOME/.config/nvim"
alias gs="git status" # ghostscript to gs

# --- { System } --- | specific

alias sys-sleep=""  # TODO: add the sleep command
alias sys-save="open -b com.apple.ScreenSaver.Engine"
alias icons-on="defaults write com.apple.finder CreateDesktop true && killall Finder"
alias icons-off="defaults write com.apple.finder CreateDesktop false && killall Finder"
alias sys-new-desktop="osascript $HOME/.env/new_dekstop.scpt"

# --- { Uebersicht } --- | specific

alias ul-="ultralist"
alias ubersicht-conf="cd $HOME/Library/Application\ Support/Übersicht/widgets"

# --- { Personal Extensions } ---

alias code="code-insiders"
alias wf="curl wttr.in/Senec\?1nqF"  # I do live in Senec, consider changing it to your location
alias bl-ys="open https://soundcloud.com/user-543006032/bladee-radio-stockholm-mix-w-yung-sherman-031221#t=460"
alias dict="open /System/Applications/Dictionary.app"

# --- { EXPORTS } ---

export obs="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/"
export icloud="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
export ubersicht="$HOME/Library/Application Support/Übersicht/widgets"
export drive="/Volumes/GoogleDrive/My Drive/"

# ----- { Aliases } ---------------------------------------------------------------------
