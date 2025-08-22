#!/bin/sh

# change to root
sudo su

# change from bash to zsh
chsh -s /bin/zsh

# install dotfiles
cd ~
mkdir ~/.config/starship
git clone https://github.com/typecraft-dev/dotfiles.git
cp ~/dotfiles/starship/.config/starship.toml ~/.config/starship.toml
sed -i '$ a\eval $(starship init bash)'

# install yay
git clone
yay = git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# disable iwd
sudo systemctl stop iwd
sudo systemctl disable iwd

# enable NetworkManager
sudo systemctl enable NetworkManager.service

# enable bluetooth
sudo systemctl enable bluetooth.service

# enable cups
sudo systemctl enable cups.service
