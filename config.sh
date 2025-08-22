#!/bin/sh

# Get git repo for configuration
git clone https://github.com/xhack311/arch-linux-setup.git
cd arch-linux-setup

# user configuration
# fonts
mkdir ~/.local/share/fonts
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip
unzip Meslo.zip -d ~/.local/share/fonts/meslo
rm Meslo.zip

# install dotfiles
cd ~
mkdir ~/.config/starship
cp ~/dotfiles/starship/.config/starship.toml ~/.config/starship.toml
sed -i '$ a\eval $(starship init zsh)' ~/.config/.zshrc

# change from bash to zsh
chsh -s /usr/bin/zsh $USER

# install yay
git clone https://aur.archlinux.org/yay.git
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
