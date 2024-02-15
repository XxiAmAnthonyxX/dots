
killall dunst
killall kitty
killall spotify

selected=$(ls -1 ~/dots/wallpapers | grep "png" | rofi -dmenu -replace -config ~/.config/rofi/config-wallpaper.rasi)

swww init
swww img ~/dots/wallpapers/$selected
rm -rf $HOME/.cache/swww

theme=$(ls -1 ~/.themes | grep "oomox" | rofi -dmenu -replace -config ~/.config/rofi/config-wallpaper.rasi)
icons=$(ls -1 ~/.icons | grep "oomox" | rofi -dmenu -replace -config ~/.config/rofi/config-wallpaper.rasi)

gsettings set org.gnome.desktop.interface gtk-theme "$theme"
gsettings set org.gnome.desktop.interface icon-theme "$icons"

wal -c
wal -i ~/dots/wallpapers/$selected

cp ~/dots/wallpapers/$selected ~/.cache/current_wallpaper.jpg

pywalfox update

cp -r $HOME/.cache/wal/colors-cava $HOME/.config/cava
cd $HOME/.config/cava
mv colors-cava config

cp -r $HOME/.cache/wal/colors-spicetify.ini $HOME/.config/spicetify/Themes/Pywal
cd $HOME/.config/spicetify/Themes/Pywal
mv colors-spicetify.ini color.ini
spicetify apply

cp -r $HOME/.cache/wal/colors-dunst $HOME/.config/dunst
cd $HOME/.config/dunst
mv colors-dunst dunstrc

cp -r $HOME/.cache/wal/colors-swaylock $HOME/.config/swaylock
cd $HOME/.config/swaylock
mv colors-swaylock config

cp -r $HOME/.cache/wal/colors-qimgv $HOME/.config/qimgv
cd $HOME/.config/qimgv
mv colors-qimgv theme.conf