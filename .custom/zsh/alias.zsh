# ----- { Aliases } ---------------------------------------------------------------------

# --- { vars } --- changed for every user

GH_PROFILE="michalspano"                                               # GitHub profile name [personal]
USER_LOCATION="Göteborg"                                               # User location                 
# USER_LOCATION="Bratislava"                                           # User location [alternative]

# --- { DEV Tools } ---

alias v="nvim"                                                         # nvim to v
alias f="fish"                                                         # fish to f, the shell environment
alias z="zathura"                                                      # zathura to z
alias zth="open -a Zathura"                                            # zathura to its .app location (self made; FIXME)
alias nf="neofetch"                                                    # neofetch to 'nf'"
alias py="/usr/local/bin/python3"                                      # python3 to py
alias jl="/usr/local/bin/julia"                                        # julia to jl
alias numi="open /Applications/Numi.app"                               # numi (Application) to numi
alias tex-template="$HOME/.custom/scripts/init_latex_template.sh"      # Install personal LaTeX template

# alias gh="open 'https://github.com/${GH_PROFILE}'"                   # open github profile

alias lz="lazygit"                                                     # lazygit to lz
alias glw="glow"                                                       # glow to glw

# utlralist aliases
alias u="ultralist"                                                    # ultralist to u
alias ul="ultralist l"                                                 # show the list of tasks
alias ult="ultralist l --notes"                                        # show the list of tasks with notes
alias up="ultralist prioritize"                                        # prioritize the task

alias code="code-insiders"                                             # code-insiders to 'code'
alias sketchybar-reset="brew services restart sketchybar"              # restart sketchybar via brew services

alias icl="$HOME/.custom/scripts/icl.sh"                               # custom tool to show iCal events
alias codesnap="open https://ray.so/"                                  # open codesnap website [custom tool]
alias clr-plt="open https://coolors.co/generate"                       # generate css color palette

# --- { System } --- | macOS specific

alias sys-sleep="pmset sleepnow"                                       # put system to sleep
alias sys-save="open -b com.apple.ScreenSaver.Engine"                  # enable save screen mode
alias sys-restart="sudo shutdown -r now"                               # restart system
alias sys-shutdown="sudo shutdown -h now"                              # shutdown system
alias sys-lock="$HOME/.custom/scripts/lockscreen.scpt"                 # lock system
alias sys-new-desktop="$HOME/.custom/scripts/new_dekstop.scpt"         # create new desktop

alias icons-on="$HOME/.custom/scripts/icons_on.scpt"                   # show icons on desktop
alias icons-off="$HOME/.custom/scripts/icons_off.scpt"                 # hide icons on desktop

alias sc-monitor-on="open /Applications/DisplayLink\ Manager.app"      # secondary monitor on
alias sc-monitor-off="$HOME/.custom/scripts/secondary-display-on.scpt" # secondary monitor off

# --- { Personal Extensions } ---

alias wf="curl wttr.in/${USER_LOCATION}\?1nqF"

# Applications (shortcuts)
alias clndr="open https://calendar.notion.so/"
alias facetime="$HOME/.custom/scripts/facetime.sh"
alias dict="open /System/Applications/Dictionary.app"
alias gg="open /Applications/GeoGebra\ Classic\ 6.app"

# Ubersicht CII tools
alias ubso="open /Applications/Übersicht.app"                          # start the app
alias ubsk="$HOME/.custom/scripts/terminate_ubs.sh"                    # kill the app

# Spotify CLI
alias sp="spotify"                                                     # spotify to 'sp'
alias sps="spotify status"                                             # show current status
alias spn="spotify next"                                               # play next song
alias spp="spotify play"                                               # play song

alias al-sw="$HOME/.custom/scripts/alacritty-theme.sh"                 # alacritty theme switcher
alias stopwatch="$HOME/.custom/scripts/stopwatch.sh"                   # stopwatch
alias pipes="/usr/local/Cellar/pipes-sh/1.3.0/bin/pipes.sh"            # pipes.sh - screen-saver

# --- { Misc. } ----------------------------------------------------------------------

# alias number="~/.custom/scripts/count.py"
# alias icons="eval ~/.custom/scripts/dump-icons.zsh"

# I just love this segment of the song, so I made I shortcut for listening it.
alias bl-ys="open https://soundcloud.com/user-543006032/bladee-radio-stockholm-mix-w-yung-sherman-031221#t=460"

# osu!

alias osu="open /Applications/osu!.app"
alias osup="open https://osu.ppy.sh/users/6499212"
alias osub="open https://osu.ppy.sh/beatmapsets"

# ----- { Aliases } ---------------------------------------------------------------------
