#!/bin/sh

CURRENT=$(cd $(dirname $0); pwd)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install zsh
brew install neovim
brew install tig
brew install fd
brew install mosh
brew install tmux
brew install ncurses
/usr/local/opt/ncurses/bin/infocmp tmux-256color > ~/tmux-256color.info
tic -xe tmux-256color ~/tmux-256color.info
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

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -sf ${CURRENT}/.gitconfig $HOME/.gitconfig
ln -sf ${CURRENT}/.tigrc $HOME/.tigrc
ln -sf ${CURRENT}/.tmux.conf $HOME/.tmux.conf
ln -sf ${CURRENT}/.zshrc $HOME/.zshrc
if [ ! -e $HOME/.config ]; then mkdir $HOME/.config; fi
if [ ! -e $HOME/.config/nvim ]; then mkdir $HOME/.config/nvim; fi
ln -sf ${CURRENT}/.config/starship.toml $HOME/.config/starship.toml
ln -sf ${CURRENT}/.config/alacritty $HOME/.config
ln -sf ${CURRENT}/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf ${CURRENT}/.config/nvim/lua $HOME/.config/nvim

