export ZSH="/Users/luke/.oh-my-zsh"
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"

plugins=(
  autojump
  aws
  colored-man-pages
  fasd
  git
  git-auto-fetch
  iterm2
  nvm
  postgres
  pyenv
  rand-quote
  tmux
  tmuxinator
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export GIT_AUTO_FETCH_INTERVAL=1200

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
