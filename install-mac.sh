#!/bin/sh

cp .gitconfig ../
cp .tigrc ../
cp .tmux.conf ../
cp .vimrc ../
cp .zshrc ../
cp -r .config ../

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install zsh
brew install neovim
brew install tig
brew install mosh
brew install tmux
curl -sS https://starship.rs/install.sh | sh
brew install tfenv
brew install azure-cli
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

brew tap homebrew/cask-fonts
brew install font-jetbrains-mono
brew install font-jetbrains-mono-nerd-font

which zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

 cp .gitconfig ../
 cp .tigrc ../
 cp .tmux.conf ../
 cp .vimrc ../
 cp .zshrc ../
 cp -r .config ../

