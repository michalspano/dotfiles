# ----- { Prompt } ---------------------------------------------------------------------

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '[%b] '
setopt PROMPT_SUBST

ARROW="»"
CUSTOM_SYMBOL=" Λ"

PROMPT='%(?.%F{cyan}${CUSTOM_SYMBOL}.%F{red}?%?)%f %B%F{250}%1 %c%f%b %F{cyan}${ARROW}%f %F{cyan}${vcs_info_msg_0_}%f'