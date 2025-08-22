#!/bin/sh

# install dotfiles
mkdir ~/.config/starship
git clone https://github.com/typecraft-dev/dotfiles.git
cp dotfiles/starship/.config/starship.toml ~/.config/starship.toml

# install yay
git clone
yay = git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# disable iwd
sudo systemctl stop iwd
sudo systemctl disabl iwd

# enable NetworkManager
sudo systemctl enable NetworkManager.service

# enable bluetooth
sudo systemctl enable bluetooth.service

# enable cups
sudo systemctl enable cups.service
