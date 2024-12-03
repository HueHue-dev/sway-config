sudo apt install alacritty light sway swayidle swaylock waybar wofi fonts-font-awesome

mkdir -p ~/.config/sway ~/.config/waybar ~/.config/wofi

cd ~/.config/sway/
ln -s ./sway/config . 

cd ~/.config/wofi/
ln -s ./wofi/config .
ln -s ./wofi/style.css .

cd ~/.config/alacritty/
ls -s ./alacritty/alacritty.yml .

