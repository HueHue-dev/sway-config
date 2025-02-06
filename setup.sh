#!/bin/bash

green='\e[32m'
red='\0;31'
nc='\033[0m'
repoPath=$(pwd)

if [ ! -d "$repoPath" ]; then
  printf "${red}$repoPath does exist.${nc}"
  exit 1;
fi

echo "Installing dependencies"
sudo apt install alacritty light sway swaylock waybar wofi fonts-font-awesome pulseaudio pavucontrol xdg-desktop-portal-wlr flameshot sway-notification-center

echo "Creating config directories"
mkdir -p ~/.config/alacritty ~/.config/sway ~/.config/swaylock ~/.config/waybar ~/.config/wlogout ~/.config/wofi ~/.config/xdg-desktop-portal ~/.config/swaync/

echo "Creating symlinks..."
cd ~/.config/sway/
rm config
ln -s $repoPath/config/sway/config .

cd ~/.config/swaylock/
rm config
ln -s $repoPath/config/swaylock/config .

cd ~/.config/waybar/
rm config style.css
ln -s $repoPath/config/waybar/config .
ln -s $repoPath/config/waybar/style.css .

cd ~/.config/wlogout/
rm layout style.css
ln -s $repoPath/config/wlogout/layout .
ln -s $repoPath/config/wlogout/style.css .

cd ~/.config/wofi/
rm config style.css
ln -s $repoPath/config/wofi/config .
ln -s $repoPath/config/wofi/style.css .

cd ~/.config/alacritty/
rm alacritty.yml
ln -s $repoPath/config/alacritty/alacritty.yml .

cd /etc/sway/config.d/
sudo rm 50-systemd-user.conf
sudo ln -s $repoPath/etc/sway/config.d/50-systemd-user.conf .

cd ~/.config/xdg-desktop-portal/
sudo rm sway-portals.conf
ln -s $repoPath/config/xdg-desktop-portal/sway-portals.conf .

cd ~/.config/swaync/
rm config.json
rm style.css
ln -s $repoPath/config/swaync/config.json .
ln -s $repoPath/config/swaync/style.css .

echo "Reloading sway..."
swaymsg reload

echo -e "${green}Setup finished${nc}"
exit 0
