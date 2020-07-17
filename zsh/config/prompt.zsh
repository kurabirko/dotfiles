#!/usr/bin/env zsh
zstyle :prompt:pure:execution_time      color $_ZSH_COLOR_SCHEME[yellow]
zstyle :prompt:pure:git:arrow           color $_ZSH_COLOR_SCHEME[blue]
zstyle :prompt:pure:git:branch          color $_ZSH_COLOR_SCHEME[comment]
zstyle :prompt:pure:git:branch:cached   color $_ZSH_COLOR_SCHEME[currentLine]
zstyle :prompt:pure:git:dirty           color $_ZSH_COLOR_SCHEME[cp]
zstyle :prompt:pure:host                color $_ZSH_COLOR_SCHEME[comment]
zstyle :prompt:pure:path                color $_ZSH_COLOR_SCHEME[blue]
zstyle :prompt:pure:prompt:error        color $_ZSH_COLOR_SCHEME[red]
zstyle :prompt:pure:prompt:success      color $_ZSH_COLOR_SCHEME[pink]
zstyle :prompt:pure:user                color $_ZSH_COLOR_SCHEME[comment]
zstyle :prompt:pure:user:root           color $_ZSH_COLOR_SCHEME[foreground]
zstyle :prompt:pure:virtualenv          color $_ZSH_COLOR_SCHEME[comment]

if [[ $UID -eq 0 ]]; then
    PURE_PROMPT_SYMBOL='#'
else 
    PURE_PROMPT_SYMBOL='$'
fi

autoload -U promptinit; promptinit
prompt pure