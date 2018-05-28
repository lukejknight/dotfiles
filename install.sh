#!/bin/bash

if [ ! -d ~/.emacs-saves ]; then
  mkdir -p ~/.emacs-saves;
fi

ln -sfh ~/Projects/dotfiles/.emacs.d ~/.emacs.d

ln -sf ~/Projects/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/Projects/dotfiles/.bashrc ~/.bashrc
ln -sf ~/Projects/dotfiles/.bash_prompt ~/.bash_prompt

ln -sfh ~/Projects/dotfiles/.lein ~/.lein

curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
curl -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash

