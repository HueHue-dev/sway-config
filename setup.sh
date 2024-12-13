sudo apt install alacritty light sway swaylock waybar wofi fonts-font-awesome pulseaudio pavucontrol

mkdir -p ~/.config/alacritty ~/.config/sway ~/.config/swaylock ~/.config/waybar ~/.config/wlogout ~/.config/wofi 

cd ~/.config/sway/
ln -s ./sway/config . 

cd ~/.config/wofi/
ln -s ./wofi/config .
ln -s ./wofi/style.css .

cd ~/.config/alacritty/
ls -s ./alacritty/alacritty.yml .

