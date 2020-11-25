# sourcing ZSH quickly
alias ss="source ~/.zshrc"
alias reset="exec -l $SHELL"

# git related
alias clone="git clone"
alias commit="git commit -am"
alias add="git add"
alias stash="git stash"
alias branch="git branch"
alias checkout="git checkout"
alias pull="git pull"
alias fetch="git fetch"
alias push="git push"
alias st="git status"
alias stage="git stage"
alias merge="git merge"
alias gitignore="vim .gitignore && git stage .gitignore && git commit -m 'Update gitignore'"
alias out=checkout

alias dc="docker-compose"
alias k="kubectl"

# Prefer nvim
alias vim=nvim
# Handy shortcut to launch my favourite vim gui instead
alias vi=neovide

alias c=cargo
alias example='cargo run --example'

# Syntax Highlighting
alias yaml="bat -pl yaml"
alias json="bat -pl json"

alias list='exa -1'
alias tree='exa -T'
alias overview='exa -R -L 2'

# Opening Files with goland IDE
alias goland='open -a GoLand'
alias rust=evcxr
alias cat='bat -p'

alias python="{{which python3}}"

alias github='open -a Github\ Desktop'

alias npm-registry-github="npm set registry https://npm.pkg.github.com"
alias npm-registry-npm="npm set registry https://registry.npmjs.org/"

alias yeagi='rlwrap yaegi'
# I always have a type in the word "yaegi"
alias zaegi='rlwrap yaegi'
alias yeagi='rlwrap yaegi'

alias ubuntu='docker run -ti ubuntu bash'
alias alpine='docker run -ti alpine sh'
