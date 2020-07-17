#!/usr/bin/env zsh


mkdir -p "${ZDOTDIR:=${HOME}/.config/zsh}"
echo "Created \"$ZDOTDIR\""

for file in ${0:a:h}/zdot/*.zsh; do
    ln -fs "$file" "${ZDOTDIR}/.zsh${file:t:r}" 
done

cat <<EOF > $HOME/.zshenv
export ZDOTDIR="${HOME}/.config/zsh"
. '${ZDOTDIR}/.zshenv'
EOF
echo "Zsh installation complete"