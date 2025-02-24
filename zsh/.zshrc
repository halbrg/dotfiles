HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

unsetopt beep

bindkey -e

autoload -Uz compinit
compinit

alias ls='eza -lg --smart-group --icons auto'
alias grep='grep --color=auto'

precmd() {
  prompt
}

prompt() {
  PS1=$'%B%F{black}%K{white} \uf415 %n@%m %F{white}%K{black}\ue0b0 \ueaf7 %~ %F{black}%k\ue0b0%b%f\n'
  RPS1=$'%B%F{white}\ue0b2%F{black}%K{white} \uf43a%@ '
}


