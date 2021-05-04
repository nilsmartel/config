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

echo "finding git-delta"
if ! command -v delta; then
    echo "installing git-delta"
    cargo install git-delta
fi

string template <./zshrc-template >"$HOME/.zshrc"
string template <./tmux.conf-template >"$HOME/.tmux.conf"
string template <./aliases-template.sh >"$HOME/aliases.sh"
string template <./alacritty-template.yml >"$HOME/.alacritty.yml"
cp gitconfig $HOME/.gitconfig
