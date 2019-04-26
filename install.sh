#!/usr/bin/env sh

cd ~/Downloads
PS1='$ '

# Update packages
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install zsh -y

# remove a game called chromium-bsu - shows up all the time in menu when launching chrome
sudo apt-get remove -y chromium-bsu chromium-bsu-data
sudo apt-get autoremove -y

git config --global user.name ${USER} && git config --global user.email "${USER}@gmail.com"

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# wget --content-disposition https://update.code.visualstudio.com/latest/linux-deb-x64/stable 
# sudo dpkg -i ~/Downloads/*.deb

# Setup NVM https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

. ~/.bashrc
nvm install 'lts/*'
npm install -g yarn prettier sort-package-json

# Setup ZSH https://ohmyz.sh/
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
