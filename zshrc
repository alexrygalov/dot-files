# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sammy"

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
source ~/.iterm.zsh

# Disable auto-correct
unsetopt correct_all

# Load up the GitHubs
#source /opt/boxen/env.sh

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

# Autocomplete ssh hosts
#if [ -e $HOME/.ssh/known_hosts ] ; then hosts=(${${${(f)"$(<$HOME/.ssh/known_hosts)"}%%\ *}%%,*})  zstyle ':completion:*:hosts' hosts $hosts fi

# Random quote from fucking-greate-advice
 /usr/bin/printf "$(echo -e `curl -s http://fucking-great-advice.ru/api/random | 
 awk -F \" '{print $8}'` | sed 's/\&nbsp;/ /g')"\\n

# Options for Ruby
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# iow timesheets

export CVS_RSH=ssh
export CVSROOT=:ext:iponweb:/var/cvs

# Add RVM to PATH for scripting

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

alias rake='noglob rake'

export VAGRANT_DEFAULT_PROVIDER=parallels


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
plugins=(git)

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8


#NVM
export NVM_DIR="/Users/arygalov/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#GAM Alias
alias gam="python ~/gam/gam.py"