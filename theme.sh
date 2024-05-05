
# PICK WALLPAPER
wallpaper=$(ls -1 ~/wallpapers | grep ".jpg" | wofi --dmenu)

# GENERATE COLOR SCHEME
wal -n -e --cols16 -q -i ~/dots/wallpapers/$wallpaper

# SET BACKGROUND
swww init
swww img ~/dots/wallpapers/$wallpaper
rm -rf $HOME/.cache/swww

# CONFIGS
# CLI
# EXTENTIONS
# GTK THEME
# GTK ICONS
# GTK 4.0

CONFIG = dunst hyprlock waybar wofi qimgv-light
CLI = kitty cava cmatrix pipes.sh cbonsai tty-clock neofetch zsh btop 
EXTENTIONS = vscodium-electron firefox spotify
GTK 3.0/2.0 = nwg-look network-manager-applet blueberry pavucontrol thunar libreoffice-still themix-full-git 
GTK 4.0 = bottles
