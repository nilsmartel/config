
# Start up TMUX
if [ "$TMUX" = "" ]; then tmux; exit; fi
# ZSH_TMUX_AUTOSTART=true

# path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $random_theme
# see https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="kardan" # maybe [amuse, avit, cloud, kardan]
plugins=(git cargo ripgrep kubectl docker)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export LANG=de_DE.UTF-8

export GOPATH="$HOME/go"
export PATH="$HOME/.local/bin:$HOME/Scripts:$HOME/go/bin:$HOME/.gloo/bin:$HOME/.llvm/bin:$PATH"
export PATH="$HOME/Development/Systems/Fuchsia/jiri/fuchsia/.jiri_root/bin:$PATH"
export PATH=$PATH:$HOME/Applications
source $HOME/.cargo/env
source $HOME/.oh-my-zsh/aliases
source $HOME/.vulkanrc
export PATH=$HOME/.gloo/bin:$PATH

RUSTSRC='$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
source ~/.ghcup/env

autoload -U compinit
compinit

export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

alias help='echo no help today'

if [ -f $HOME/.secrets ]
then
    source $HOME/.secrets
fi

