repoPath="$1"

if [ ! -d "$repoPath" ]; then
  echo "$repoPath does exist."
  exit 1;
fi


sudo apt install alacritty light sway swaylock waybar wofi fonts-font-awesome pulseaudio pavucontrol xdg-desktop-portal-wlr

mkdir -p ~/.config/alacritty ~/.config/sway ~/.config/swaylock ~/.config/waybar ~/.config/wlogout ~/.config/wofi 

cd ~/.config/sway/
ln -s $repoPath/.config/sway/config . 

cd ~/.config/swaylock/
ln -s $repoPath/.config/swaylock/config .

cd ~/.config/waybar/
ln -s $repoPath/.config/waybar/config .
ln -s $repoPath/.config/waybar/style.css .

cd ~/.config/wlogout/
ln -s $repoPath/.config/wlogout/layout .
ln -s $repoPath/.config/wlogout/style.css .

cd ~/.config/wofi/
ln -s $repoPath/.config/wofi/config .
ln -s $repoPath/.config/wofi/style.css .

cd ~/.config/alacritty/
ln -s $repoPath/.config/alacritty/alacritty.yml .

cd /etc/sway/config.d/
sudo ln -s $repoPath/etc/sway/config.d/50-systemd-user.conf .

if [ ! -d "/usr/share/xdg-desktop-portal/" ]; then
  exit 1
fi

ln -s $repoPath/usr/share/xdg-desktop-portal/sway-portals.conf .