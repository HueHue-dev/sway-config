repoPath="$1"

if [ ! -d "$repoPath" ]; then
  echo "$repoPath does exist."
  exit 1;
fi


sudo apt install alacritty light sway swaylock waybar wofi fonts-font-awesome pulseaudio pavucontrol

mkdir -p ~/.config/alacritty ~/.config/sway ~/.config/swaylock ~/.config/waybar ~/.config/wlogout ~/.config/wofi 

cd ~/.config/sway/
ln -s $repoPath/sway/config . 

cd ~/.config/swaylock/
ln -s $repoPath/swaylock/config .

cd ~/.config/waybar/
ln -s $repoPath/waybar/config .
ln -s $repoPath/waybar/style.css

cd ~/.config/wlogout/
ln -s $repoPath/wlogout/layout .
ln -s $repoPath/wlogout/style.css .

cd ~/.config/wofi/
ln -s $repoPath/wofi/config .
ln -s $repoPath/wofi/style.css .

cd ~/.config/alacritty/
ln -s $repoPath/alacritty/alacritty.yml .
 
