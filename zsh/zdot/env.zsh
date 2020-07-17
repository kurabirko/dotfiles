# This file will be symlinked to ${ZDOTDIR}/.zshrc

# export zsh directory as an environment variable
export ZSH_DIR="$HOME/.config/dotfiles/zsh"

# export PATH
local -a pathArray
pathArray=(
    "$HOME/.cargo/bin"
    "$HOME/.local/bin"
    $PATH
)
export PATH="${(j/:/)pathArray}"

# export fpath
fpath=(
    "$ZSH_DIR/functions"
    $fpath
)