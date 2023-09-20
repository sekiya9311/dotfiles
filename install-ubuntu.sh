#!/bin/sh

CURRENT=$(cd $(dirname $0); pwd)

sudo apt update

sudo apt install zsh
sudo apt install zip
sudo apt install unzip
sudo apt install neovim
sudo apt install tig
sudo apt install fd-find
sudo apt install mosh
sudo apt install exa
curl -sS https://starship.rs/install.sh | sh
sudo git clone https://github.com/tfutils/tfenv.git ~/.tfenv
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

which zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

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

