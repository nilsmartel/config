#!/bin/bash

# make main the default git branch
git config --global init.defaultBranch main
git config --global user.name = "Nils Martel"
git config --global user.email = "nilsmartel@yahoo.de"

# Install neovim (latest version)
brew install --HEAD neovim
# installing vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

brew install --HEAD tmux
brew install --HEAD zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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

echo
echo "less essential but still useful"

echo "finding ripgrep"
if ! command -v rg; then
    echo "installing ripgrep"
    cargo install ripgrep
fi

echo "finding bat"
if ! command -v bat; then
    echo "installing bat"
    cargo install bat
fi
