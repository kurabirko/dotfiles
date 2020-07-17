#!/usr/bin/env zsh

# Two color schemes so fark
# - Dracula    https://draculatheme.com
# - Ayu Mirage https://github.com/ayu-theme

typeset -A dracula_scheme=(
    background  "#282a36"
    currentLine "#44475a"
    foreground  "#f8f8f2"
    comment     "#6272a4"
    blue        "#8be9fd"
    green       "#50fa7b"
    orange      "#ffb86c"
    pink        "#ff79c6"
    red         "#ff5555"
    yellow      "#f1fa8c"
    cp          "#bd93f9"
)

typeset -A ayu_scheme=(
    background  "#1F2430"
    foreground  "#CBCCC6"
    currentLine "#FFCC66"
    comment     "#5C6773"
    blue        "#73D0FF"
    green       "#95E6CB"
    orange      "#FFA759"
    pink        "#D4BFFF"
    red         "#f28779"
    yellow      "#FFD580"
    cp          "#95e6cb"

)

typeset -A _ZSH_COLOR_SCHEME
set -A _ZSH_COLOR_SCHEME ${(kv)dracula_scheme}
export _ZSH_COLOR_SCHEME