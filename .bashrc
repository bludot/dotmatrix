# ~/.bashrc

export GOPATH=$HOME/go

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
#shopt -s histappend

export VISUAL=nvim
export EDITOR="$VISUAL"
export LESS="FRX"
export RI="--format ansi -T"
export PSQL_EDITOR='vim -c"setf sql"'
export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad

#export VISUAL EDITOR LESS RI PSQL_EDITOR CLICOLOR LSCOLORS

#if [ -t 1 ]; then
#bind 'set bind-tty-special-chars off'
#bind '"\ep": history-search-backward'
#bind '"\en": history-search-forward'
#bind '"\C-w": backward-kill-word'
#bind '"\C-q": "%-\n"'
#fi

export HISTIGNORE="%*"

#[ -z "$PS1" ] || stty -ixon

#if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
#  source '/usr/local/etc/bash_completion.d/git-completion.bash'
#fi

#Aliases
alias whatsmyip="wget http://ipinfo.io/ip -qO -"

#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"



# added by travis gem
[ -f /Users/jamestrotter/.travis/travis.sh ] && source /Users/jamestrotter/.travis/travis.sh
