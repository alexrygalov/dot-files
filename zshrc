# Path to your oh-my-zsh installation.
export ZSH="/Users/arygalov/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#
ZSH_THEME="spaceship"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
HIST_STAMPS="mm/dd/yyyy"
HISTFILE=~/.zsh_history
HISTSIZE=5000000
SAVEHIST=5000000

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    docker
    kubectl
    terraform
    aws
    poetry
    terragrunt
    )

source $ZSH/oh-my-zsh.sh

# Java Home
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

function gam() { "/Users/arygalov/bin/gam/gam" "$@" ; }

# Vagrant
alias vg='vagrant'

# Python
alias python=python3

# Terraform
alias tf='terraform'
alias tg='terragrunt'

# Homebrew update alias
alias brewup="brew update && brew upgrade && brew cleanup"

# jrnl disable logging
setopt HIST_IGNORE_SPACE
alias jrnl=" jrnl"

# fun weather alias
alias weather="curl http://wttr.in"

# direnv
eval "$(direnv hook zsh)"

# PATH ~/bin folder
export PATH=$PATH:~/bin

# spaceship promt
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
