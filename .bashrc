#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Environment variables ##

export RANGER_LOAD_DEFAULT_RC=false

## Aliases ##

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias e='nvim'
alias cl='clear'
alias fm='ranger'
alias dots='/usr/bin/git --git-dir=/home/artem/.mydotfiles/ --work-tree=/home/artem'

## Prompt ##

#PS1='\[\e[96m[\u@\h \W]\$ \e[m\['
PS1='[\u@\h \W]\$ '

## Pywal support ##

(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

wal-tile() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}
