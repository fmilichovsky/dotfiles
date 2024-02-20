# Initialize completion
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select=4
zmodload zsh/complist

# Initialize editing command line
autoload -U edit-command-line && zle -N edit-command-line

# Enable interactive comments (# on the command line)
setopt interactivecomments

# Nicer history
HISTSIZE=1048576
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory

# Time to wait for additional characters in a sequence
KEYTIMEOUT=1 # corresponds to 10ms

# Use vscode as the editor
export EDITOR=code

# Use vim specifically for k8s operations (e.g. k9s)
export KUBE_EDITOR=vim

# Disable virtual env requirements for python pip
export PIP_REQUIRE_VIRTUALENV=false

# Use incremental search
bindkey "^R" history-incremental-search-backward

# Disable shell builtins
disable r
