#!/bin/bash

cp zshrc $HOME/.zshrc
sed -e "s|{{WHICH_ZSH}}|$(which zsh)|g" \
    -e "s/{{TERM}}/${TERM}/g" \
    tmux.conf > $HOME/.tmux.conf


