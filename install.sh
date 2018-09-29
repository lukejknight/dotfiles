#!/bin/bash

if [ ! -d ~/.emacs-saves ]; then
  mkdir -p ~/.emacs-saves;
fi

# zsh
ln -sf ~/Projects/dotfiles/.zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# emacs
ln -sfh ~/Projects/dotfiles/.emacs.d ~/.emacs.d

# lein
ln -sfh ~/Projects/dotfiles/.lein ~/.lein

# nvm
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
