#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias lh='ls -lh'

git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#Default PS1
#PS1='[\u@\h \W]\$ '

#Color codes
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NOCOLOR="\[\033[0m\]"

export PS1="$GREEN\u@\h$NOCOLOR:\W$YELLOW \$(git_branch)$NOCOLOR\$ "
