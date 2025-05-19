#!/bin/bash
cd ~
apt-get install -y ninja-build gettext cmake curl build-essential git sudo
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ~
git clone https://github.com/chrisramfon/MyLazyVim.git
mkdir ~/.config/nvim
cp MyLazyVim/* .config/nvim/
