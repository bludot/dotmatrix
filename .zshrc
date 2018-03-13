#fpath=(
#  $fpath
#  ~/.rvm/scripts/zsh/Completion
#  ~/.zsh/functions
#  /usr/local/share/zsh/site-functions
#)



export TERM="screen-256color"
export NVM_DIR="$HOME/.nvm"
export SPACESHIP_CHAR_SYMBOL="❯"
export SPACESHIP_CHAR_SUFFIX=" "
 #color term
export CLICOLOR=1
export LSCOLORS=Dxfxcxdxbxegedabadacad
export ZLS_COLORS=$LSCOLORS
export LC_CTYPE=en_US.UTF-8
export LESS=FRX

 
if [[ "$(uname)" == "Darwin" ]]; then
  export ZPLUG_HOME=/usr/local/opt/zplug
else
  export ZPLUG_HOME=$HOME/.zplug
fi

if [[ ! -f $ZPLUG_HOME/init.zsh ]]; then
  if [[ "$(uname)" == "Darwin" ]]; then
    brew install zplug
  else
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
  fi
fi

# history
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# options
setopt appendhistory autocd extendedglob histignoredups nonomatch prompt_subst interactivecomments
source $HOME/.zshrc.local
source $ZPLUG_HOME/init.zsh

# zplug "sindresorhus/pure", as:theme, use:"*.zsh"


# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"

# Use the package as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# Can manage everything e.g., other person's zshrc
# zplug "tcnksm/docker-alias", use:zshrc

# Disable updates using the "frozen" tag
zplug "k4rthik/git-cal", as:command, frozen:1

# Grab binaries from GitHub Releases
# and rename with the "rename-to:" tag
zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/colorize",  from:oh-my-zsh
zplug "plugins/compleat",  from:oh-my-zsh

# Also prezto
# zplug "modules/prompt", from:prezto

# Load if "if" tag returns true
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

zplug "lukechilds/zsh-nvm"

# Run a command after a plugin is installed/updated
# Provided, it requires to set the variable like the following:
# ZPLUG_SUDO_PASSWORD="********"
zplug "jhawthorn/fzy", \
    as:command, \
    rename-to:fzy, \
    hook-build:"make && sudo make install"

# Supports checking out a specific branch/tag/commit
# zplug "b4b4r07/enhancd", at:v1
# zplug "mollifier/anyframe", at:4c23cb60

# Can manage gist file just like other packages
# zplug "b4b4r07/79ee61f7c140c63d2786", \
#    from:gist, \
#    as:command, \
#    use:get_last_pane_path.sh

# Support bitbucket
#zplug "b4b4r07/hello_bitbucket", \
#    from:bitbucket, \
#    as:command, \
#    use:"*.sh"

# Rename a command with the string captured with `use` tag
#zplug "b4b4r07/httpstat", \
#    as:command, \
#    use:'(*).sh', \
#    rename-to:'$1'

# Group dependencies
# Load "emoji-cli" if "jq" is installed in this example
#zplug "stedolan/jq", \
#    from:gh-r, \
#    as:command, \
#    rename-to:jq
#zplug "b4b4r07/emoji-cli", \
#    on:"stedolan/jq"
# Note: To specify the order in which packages should be loaded, use the defer
#       tag described in the next section

zplug 'denysdovhan/spaceship-prompt', defer:3, use:'spaceship.zsh', from:github, as:theme
# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Can manage local plugins
zplug "~/.zsh", from:local

# Load theme file
# zplug 'dracula/zsh', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
# Then, source plugins and add commands to $PATH
zplug load

# autoload =Uz compinit
#if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
#  compinit
#else
#  compinit -C
#fi
# autoload -U promptinit; promptinit
# prompt spaceship
# SPACESHIP_PROMPT_ORDER=(user host dir git node exec_time line_sep jobs exit_code char)

# remove duplicates in $PATH
typeset -aU path

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# PATH="/Users/jamestrotter/perl5/bin${PATH:+:${PATH}}"; export PATH;
# PERL5LIB="/Users/jamestrotter/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
# PERL_LOCAL_LIB_ROOT="/Users/jamestrotter/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
# PERL_MB_OPT="--install_base \"/Users/jamestrotter/perl5\""; export PERL_MB_OPT;
# PERL_MM_OPT="INSTALL_BASE=/Users/jamestrotter/perl5"; export PERL_MM_OPT;

export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# alias nvminit='export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

