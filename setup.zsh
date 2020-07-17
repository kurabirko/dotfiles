#!/usr/bin/env zsh

for loc in zsh homedotconf; do
    echo "\nSetting up $loc"
    source "${0:A:h}/$loc/bootstrap.zsh"
done