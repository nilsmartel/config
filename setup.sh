#!/bin/bash

echo "finding cargo"
if ! command -v cargo; then
    echo "installing cargo"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
fi

echo "finding shell-string"
if ! command -v string; then
    echo "installing shell-string"
    cargo install shell-string
fi

string template <./zshrc-template >"$HOME/.zshrc"
string template <./tmux.conf-template >"$HOME/.tmux.conf"
string template <./aliases-template.sh >"$HOME/aliases.sh"
mkdir -p $HOME/.config/alacritty
string template <./alacritty-template.yml >"$HOME/.config/alacritty/alacritty.yml"
