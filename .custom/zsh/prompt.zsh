## ========================================================================== ##

# Initialize VCS information
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '[%b] '
setopt PROMPT_SUBST

ARROW="»"          # arrow prompt
ERROR=" ✘"         # used when showing an error code (whitespace for better formatting)
CUSTOM_SYMBOL=" λ" # or "Λ" (secondary symbol)

SYMBOL_OR_ERROR="%(?.%F{cyan}${CUSTOM_SYMBOL}.%F{red}${ERROR}%?)%f"
                                                            # Display the chosen symbol or
                                                            # a corresponding error code from
                                                            # a particular program or session.
RELATIVE_PATH="%B%F{250}%1 %c%f%b"                          # Display the relative path in white.
ARROW_PROMPT="%F{cyan}${ARROW}%f"                           # Display an arrow to prompt for cmds.

# Export the final prompt. Reuse the previous elements and add the VCS
# information in `cyan` (at the end).
PROMPT='${SYMBOL_OR_ERROR} ${RELATIVE_PATH} ${ARROW_PROMPT} %F{cyan}${vcs_info_msg_0_}%f'

## ========================================================================== ##
