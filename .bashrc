# PROMPT CONFIG
source ~/.bash_prompt

# COLOR COMMANDS
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -G'
alias grep='grep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias egrep='egrep --colour=auto'

# ALIASES
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

export EDITOR="vim"

if [ -f ~/.bash_functions ]; then
        . ~/.bash_functions
fi

# BASH_COMPLETION (TODO: implement based on whether /etc/ or /usr/local/etc)
BASH_COMPLETION_DIR=/usr/local/etc/bash_completion.d
if [ -d $BASH_COMPLETION_DIR ]; then
        for f in $BASH_COMPLETION_DIR/*; do LC_CTYPE=C source $f; done
fi
if [ -f ~/.git-completion.bash ]; then
        . ~/.git-completion.bash 
fi

# OTHER ALIASES
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

export PATH=$PATH:~/.local/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
