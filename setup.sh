#!/bin/bash

echo "finding cargo"
if ! command -v cargo; then
    echo "installing cargo"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

echo "finding shell-string"
if ! command -v string; then
    echo "installing shell-string"
    cargo install shell-string
fi

string template <./zshrc-template >"$HOME/.zshrc"
string template <./tmux.conf-template >"$HOME/.tmux.conf"
