# This file will be symlinked to ${ZDOTDIR}/.zshrc

# Export color scheme
source "${ZSH_DIR}/config/color.zsh"

# History Configuration
# ---------------------
# https://gist.github.com/matthewmccullough/787142
HISTSIZE=1000                       # How many lines of history to keep in memory
HISTFILE="${ZDOTDIR}/.zsh_history"  # Where to save history to disk
SAVEHIST=1000                       # Number of history entries to save to disk
HISTDUP=erase                       # Erase duplicates in the history file
setopt appendhistory                # Append history to the history file (no overwriting)
setopt sharehistory                 # Share history across terminals
setopt incappendhistory             # Immediately append to the history file, not just when a term is killed

# cd without cd
setopt autocd

# Color for unix stuff
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Init aliases
source "${ZSH_DIR}/config/alias.zsh"

# Init prompt
source "${ZSH_DIR}/config/prompt.zsh"

# Source completion
source "${ZSH_DIR}/config/completion.zsh"

# source zsh-syntax-highlighting
source "${ZSH_DIR}/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Soruce fish-like autocompletion
source "${ZSH_DIR}/modules/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6272a4"

# Init conda
autoload -Uz conda