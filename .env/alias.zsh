# ----- { Aliases } ---------------------------------------------------------------------

# --- { vars } --- changed for every user

GH_PROFILE="michalspano"                                            # GitHub profile name [personal]
USER_LOCATION="Göteborg"                                            # User location                 

# --- { DEV Tools } ---

alias py="/usr/local/bin/python3"
alias jl="/usr/local/bin/julia"

alias gh="open 'https://github.com/${GH_PROFILE}'"                  # open github profile

alias lz="lazygit"                                                  # lazygit to lz
alias glw="glow"                                                    # glow to glw
alias gs="git status"                                               # ghostscript to gs

# utlralist aliases
alias u="ultralist"                                                 # ultralist to u
alias ul="ultralist l"                                              # show the list of tasks
alias ult="ultralist l --notes"                                     # show the list of tasks with notes
alias up="ultralist prioritize"                                     # prioritize the task

alias zshconfig="source $HOME/.zshrc"
alias nvim-config="nvim ~/.config/nvim"

alias code="code-insiders"                                          # code-insiders to 'code'
alias sketchybar-reset="brew services restart sketchybar"           # restart sketchybar via brew services

alias icl="$HOME/.env/icl.sh"                                       # custom tool to show iCal events
alias codesnap="open https://ray.so/"                               # open codesnap website [custom tool]

# --- { System } --- | macOS specific

alias sys-sleep="pmset sleepnow"                                    # put system to sleep
alias sys-save="open -b com.apple.ScreenSaver.Engine"               # enable save screen mode
alias sys-restart="sudo shutdown -r now"                            # restart system

alias icons-on="$HOME/.env/icons_on.scpt"                           # show icons on desktop
alias icons-off="$HOME/.env/icons_off.scpt"                         # hide icons on desktop
alias sys-new-desktop="$HOME/.env/new_dekstop.scpt"                 # create new desktop

alias sc-monitor-on="open /Applications/DisplayLink\ Manager.app"   # secondary monitor on
alias sc-monitor-off="$HOME/.env/secondary-display-on.scpt"         # secondary monitor off

# --- { Personal Extensions } ---

alias wf="curl wttr.in/${USER_LOCATION}\?1nqF"

# applications (shortcuts)
alias spendee="open /Applications/Spendee.app"
alias canary="open /Applications/Canary\ Mail.app"
alias dict="open /System/Applications/Dictionary.app"
alias gg="open /Applications/GeoGebra\ Classic\ 6.app"

# ubersicht cli tools
alias ubso="open /Applications/Übersicht.app"                       # start the app
alias ubsk="$HOME/.env/terminate_ubs.sh"                            # kill the app

# Spotify CLI
alias sp="spotify"                                                  # spotify to 'sp'
alias sps="spotify status"                                          # show current status
alias spn="spotify next"                                            # play next song
alias spp="spotify play"                                            # play song

# --- { EXPORTS } --- | system specific

export obs="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/"
export icloud="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
export ubs="$HOME/Library/Application Support/Übersicht/widgets"

# ----- { Aliases } ---------------------------------------------------------------------
