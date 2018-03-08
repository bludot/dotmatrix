#fpath=(
#  $fpath
#  ~/.rvm/scripts/zsh/Completion
#  ~/.zsh/functions
#  /usr/local/share/zsh/site-functions
#)

source "$HOME/.sharedrc"

# color term
export CLICOLOR=1
export LSCOLORS=Dxfxcxdxbxegedabadacad
export ZLS_COLORS=$LSCOLORS
export LC_CTYPE=en_US.UTF-8
export LESS=FRX

# make with the nice completion
autoload -U compinit; compinit

# Completion for kill-like commands
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"
zstyle ':completion:*:ssh:*' tag-order hosts users
zstyle ':completion:*:ssh:*' group-order hosts-domain hosts-host users hosts-ipaddr

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-patterns '_*'

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zshcache

# make with the pretty colors
autoload colors; colors

# just say no to zle vim mode:
bindkey -e

# options
setopt appendhistory autocd extendedglob histignoredups nonomatch prompt_subst interactivecomments

# Bindings
# external editor support

# prompt
PROMPT='%{$fg_bold[green]%}%n@%m%{$reset_color%}:%{$fg_bold[cyan]%}%~%{$reset_color%}$(git_prompt_info "(%s)")%# '

# show non-success exit code in right prompt
RPROMPT="%(?..{%{$fg[red]%}%?%{$reset_color%}})"

# history
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

# set cd autocompletion to commonly visited directories
cdpath=(~ ~/src $DEV_DIR $HASHROCKET_DIR)

# import local zsh customizations, if present
zrcl="$HOME/.zshrc.local"
[[ ! -a $zrcl ]] || source $zrcl

# remove duplicates in $PATH
typeset -aU path

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

PATH="/Users/jamestrotter/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/jamestrotter/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/jamestrotter/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/jamestrotter/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jamestrotter/perl5"; export PERL_MM_OPT;

export PATH=~/Library/Python/3.6/bin:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/opt/openal-soft/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

