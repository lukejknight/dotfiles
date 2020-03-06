if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz promptinit
promptinit
prompt pure 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export LANG=en_US.UTF-8
export GIT_AUTO_FETCH_INTERVAL=1200
export JAVA_HOME=`/usr/libexec/java_home -v 13`

source ~/.aliases
source ~/.functions
