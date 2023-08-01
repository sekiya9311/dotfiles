#!/bin/sh

cp .gitconfig ../
cp .p10k.zsh ../
cp .tigrc ../
cp .tmux.conf ../
cp .vimrc ../
cp .zshrc ../
cp -r .config ../

sudo apt update

sudo apt install zsh
sudo apt install neovim
sudo apt install tig
sudo apt install mosh
sudo git clone https://github.com/tfutils/tfenv.git ~/.tfenv
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

which zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp .gitconfig ../
cp .p10k.zsh ../
cp .tigrc ../
cp .tmux.conf ../
cp .vimrc ../
cp .zshrc ../
cp -r .config ../

