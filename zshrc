# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Disable weekly update checks
#DISABLE_AUTO_UPDATE="true"

# Disable auto-setting of terminal title
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? Plugins can be found in:
#   ~/.oh-my-zsh/plugins/*
#
# Custom plugins may be added to:
#   ~/.oh-my-zsh/custom/plugins/
#
# Example format:
#   plugins=(rails git textmate ruby)
plugins=(git rbenv)

source $ZSH/oh-my-zsh.sh
# source ~/.iterm.zsh

# Disable auto-correct
unsetopt correct_all

# Always work in a tmux session if tmux is installed
#if which tmux 2>&1 >/dev/null; then
#  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#    tmux attach -t hack || tmux new -s hack; exit
#  fi
#fi

# Sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'
alias -g vg='vagrant'

# Show uptime
uptime

# Random quote from fucking-greate-advice
 /usr/bin/printf "$(echo -e `curl -s http://fucking-great-advice.ru/api/random | 
 awk -F \" '{print $6}'` | sed 's/\&nbsp;/ /g')"\\n

# Add RVM to PATH for scripting

PATH=$PATH:$HOME/.rvm/bin

export VAGRANT_DEFAULT_PROVIDER=virtualbox

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="mm/dd/yyyy"
HISTFILE=~/.zsh_history
HISTSIZE=5000000
SAVEHIST=5000000
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git docker kubectl)

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# NVM
export NVM_DIR="/Users/arygalov/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# GAM Alias
alias gam="/Users/alexrygalov/bin/gam/gam"
# vim Alias
alias vi="/usr/local/bin/vim"
# Docker aliases
alias doeckr="docker"
alias docekr="docker"
alias dockr="docker"

# Homebrew update alias
alias brewup="brew update && brew upgrade && brew cleanup"

export PATH="/usr/local/bin:/opt/puppetlabs/bin/:/usr/local/sbin:$PATH"


alias wttr="curl wttr.in"
# gma project aliases

alias bsfgam="/Users/ar/GAM/bsf_gam/gam"
alias seagam="/Users/ar/GAM/sea_gam/gam"
alias eumegam="/Users/ar/GAM/eume_gam/gam"
alias amsgam="/Users/ar/GAM/ams_gam/gam"

# fun weather alias:
alias weather="curl http://wttr.in" 
# Fix ssh agent for macOS 10.12
# ssh-add -A 2>/dev/null;
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export ANSIBLE_NOCOWS=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export GOPATH=$HOME/go

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ar/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ar/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ar/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ar/google-cloud-sdk/completion.zsh.inc'; fi
