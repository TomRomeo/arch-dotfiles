#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

alias ls='ls --color=auto -l'
export PS1=$(printf "╭%*s\n╰" $(($(tput cols)-1)) '' | tr " " "-")"[\u@\h \W] \$(parse_git_branch)\$ "
alias hc=herbstclient
neofetch


