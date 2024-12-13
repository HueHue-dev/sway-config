# Sway Config Files

## Setup
### Manually
```bash
sudo apt install alacritty light sway swaylock waybar wofi fonts-font-awesome pulseaudio pavucontrol
cd ~/.config/sway/
ln -s {path to repo}/sway/config . 
cd ~/.config/wofi/
ln -s {path to repo}/wofi/config .
ln -s {path to repo}/wofi/style.css .
cd ~/.config/alacritty/
ls -s {path to repo}/alacritty/alacritty.yml .
```
### Via Script
```bash
chmod +x setup.sh
sudo ./setup.sh
```

