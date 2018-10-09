#!/bin/bash

if [ ! -d ~/.emacs-saves ]; then
  mkdir -p ~/.emacs-saves;
fi

# zsh
ln -sf ~/Projects/dotfiles/.zshrc ~/.zshrc
ln -sf ~/Projects/dotfiles/.zpreztorc ~/.zpreztorc

# emacs
ln -sfh ~/Projects/dotfiles/.emacs.d ~/.emacs.d

# lein
ln -sfh ~/Projects/dotfiles/.lein ~/.lein

# nvm
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
