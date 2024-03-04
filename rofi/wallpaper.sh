

wall_dir="${HOME}/dots/wallpapers/"
cacheDir="${HOME}/.cache/jp/${theme}"
rofi_command="rofi -x11 -dmenu -theme ${HOME}/.config/rofi/wallpaper.rasi -theme-str ${rofi_override}"

if [ ! -d "${cacheDir}" ] ; then
        mkdir -p "${cacheDir}"
    fi

for imagen in "$wall_dir"/*.{jpg,jpeg,png,webp}; do
	if [ -f "$imagen" ]; then
		nombre_archivo=$(basename "$imagen")
			if [ ! -f "${cacheDir}/${nombre_archivo}" ] ; then
				convert -strip "$imagen" -thumbnail 2560x1440^ -gravity center -extent 2560x1440 "${cacheDir}/${nombre_archivo}"
			fi
    fi
done

wall_selection=$(find "${wall_dir}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | sort | while read -r A ; do  echo -en "$A\x00icon\x1f""${cacheDir}"/"$A\n" ; done | $rofi_command)

killall dunst
#pkill -USR2 cava

swww init
swww img ~/dots/wallpapers/$wall_selection
rm -rf $HOME/.cache/swww

#for file in *.jpg; do base=$( basename  ${file} .jpg); convert -resize 25% $file ${base}.png; done

#theme=$(ls -1 ~/.themes | grep "oomox" | rofi -dmenu -replace -config ~/.config/rofi/config-wallpaper.rasi)
#icons=$(ls -1 ~/.icons | grep "oomox" | rofi -dmenu -replace -config ~/.config/rofi/config-wallpaper.rasi)

#gsettings set org.gnome.desktop.interface gtk-theme "$theme"
#gsettings set org.gnome.desktop.interface icon-theme "$icons"

wal -c
wal -i ~/dots/wallpapers/$wall_selection

cp ~/dots/wallpapers/$wall_selection ~/.cache/current_wallpaper.rasi

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

nwg-look
