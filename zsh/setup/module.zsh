#!/usr/bin/env zsh
# Set up the necessary symlink for modules to work.

ln -s "../modules/conda-zsh-completion/_conda" "${ZSH_DIR}/functions/_conda"
ln -s "../modules/pure/async.zsh" "${ZSH_DIR}/functions/async"
ln -s "../modules/pure/pure.zsh" "${ZSH_DIR}/functions/prompt_pure_setup"
