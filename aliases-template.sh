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
alias out=checkout

alias k="kubectl"

# Prefer nvim
alias vim=nvim

# Opening Files with goland IDE
alias goland='open -a GoLand'
alias cat='bat -p'

alias github='open -a Github\ Desktop'

alias npm-registry-github="npm set registry https://npm.pkg.github.com"
alias npm-registry-npm="npm set registry https://registry.npmjs.org/"
