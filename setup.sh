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
cargoinstall() {
    echo "finding $1"
    if ! command -v $2; then
        echo "installing $1"
        cargo install $1
    fi
}

cargoinstall shell-string string
cargoinstall git-delta delta
cargoinstall ripgrep rg
cargoinstall bat bat
echo 'alias cat=bat' >> $HOME/.profile


string template <./zshrc-template >"$HOME/.zshrc"
string template <./tmux.conf-template >"$HOME/.tmux.conf"
string template <./aliases-template.sh >"$HOME/aliases.sh"
string template <./alacritty-template.yml >"$HOME/.alacritty.yml"
cp gitconfig $HOME/.gitconfig

cargoinstall helix

echo "installing language servers"
npm i -g vscode-langservers-extracted
