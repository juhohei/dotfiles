#
# ~/.bashrc
#

## INIT {{{

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Check if root for functions & aliases
_isroot=false
[[ $UID -eq 0 ]] && _isroot=true

# Colors
fg=('\e[0;30m\' '\[\e[0;31m\]' '\[\e[0;32m\]' '\[\e[0;33m\]'
    '\[\e[0;34m\]' '\[\e[0;35m\]' '\[\e[0;36m\]' '\[\e[0;37m\]'
    '\[\e[1;30m\]' '\[\e[1;31m\]' '\[\e[1;32m\]' '\[\e[1;33m\]'
    '\[\e[1;34m\]' '\[\e[1;35m\]' '\[\e[1;36m\]' '\[\e[1;37m\]')
nofg='\[\e[0m\]'
fd=${fg[1]}

# use auto-completion after those words
complete -cf sudo
complete -cf man
complete -cf killall
complete -cf pkill
complete -cf fakeroot
complete -cf respawn
complete -cf pgrep
complete -cf bunzip2
# }}}

## FUNCTIONS {{{

# . dir sizes
dirsize () {
	du -hd 1
}

# consult vim's help
:h () {
	vim +"h $1" +only +'map q ZQ'
}

wiki () {
	links "http://en.wikipedia.org/w/index.php?search=${*// /+}"
}
ddg() {
	links "http://duckduckgo.com/lite?q=${*// /+}"
}
## }}}

## ALIASES {{{

## Pacman
if ! $_isroot; then
	alias pacman="sudo pacman"
fi
alias orphans="pacman -Qtd"
alias owninstallations="comm -23 <(pacman -Qeq|sort) <(pacman -Qgq base base-devel|sort)"

## Terminal
alias quit="exit"
alias c="clear"

# Alias to avoid some "PERKELE!!!"
alias :q="quit"
alias cd..="cd .."
alias df="df -h"
alias ping="ping -c 5"
alias perkele="quit"

# Make some output colorfull
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias la="ls -alhF --color=auto"
alias lm="la | less"

# job control
alias mtop="ps --no-header -eo pmem,size,vsize,comm | sort -nr | sed 10q"
alias ctop="ps --no-header -eo pcpu,comm | sort -nr | sed 10q"

## stupid shit
alias irc="ssh juho@relativity.fi"

## }}}


## EXPORTS {{{

# colored manpages
if $_isxrunning; then
	export PAGER=less
	export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
	export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
	export LESS_TERMCAP_me=$'\E[0m'           # end mode
	export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
	export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
	export LESS_TERMCAP_ue=$'\E[0m'           # end underline
	export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
fi

# make multiple shell share same history file
export HISTSIZE=10000           # bash history will save N commands
export HISTFILESIZE=${HISTSIZE} # bash will remember N commands
export HISTCONTROL=ignoreboth   # ingore duplicates and spaces
export HISTIGNORE='&:ls:ll:la:cd:exit:clear:history'

#basic shit
export EDITOR="vim"
export PATH=/usr/share/local/bin:$PATH
export PATH=/home/juho/scripts:$PATH
export PS1="${fd}> ${nofg}"


## }}}
