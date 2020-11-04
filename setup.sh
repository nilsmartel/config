#!/bin/bash

# cp zshrc $HOME/.zshrc
sed "s|{{WHICH_ZSH}}|$(which zsh)|g" \
    "s/{{TERM}}/${TERM}/g" \
    tmux.conf # > $HOME/.tmux.conf


