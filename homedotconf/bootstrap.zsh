#!/bin/zsh

for file in ${0:A:h}/*; do
    if [[ ! $file = ${0:A} ]]; then
        echo "moving \"${file:t}\" to user home"
        ln -sf $file "${HOME}/.${file:t}"
    fi
done