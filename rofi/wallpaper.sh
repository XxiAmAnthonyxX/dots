
# Set some variables
wall_dir="${HOME}/dots/wallpapers/"
cacheDir="${HOME}/.cache/jp/${theme}"
rofi_command="rofi -x11 -dmenu -theme ${HOME}/.config/rofi/wallpaper.rasi -theme-str ${rofi_override}"

# Create cache dir if not exists
if [ ! -d "${cacheDir}" ] ; then
        mkdir -p "${cacheDir}"
    fi

# Convert images in directory and save to cache dir
for imagen in "$wall_dir"/*.{jpg,jpeg,png,webp}; do
	if [ -f "$imagen" ]; then
		nombre_archivo=$(basename "$imagen")
			if [ ! -f "${cacheDir}/${nombre_archivo}" ] ; then
				convert -strip "$imagen" -thumbnail 2560x1440^ -gravity center -extent 2560x1440 "${cacheDir}/${nombre_archivo}"
			fi
    fi
done

# Select a picture with rofi
wall_selection=$(find "${wall_dir}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | sort | while read -r A ; do  echo -en "$A\x00icon\x1f""${cacheDir}"/"$A\n" ; done | $rofi_command)

~/.config/hypr/scripts/theme.sh "$wall_selection"

exit 0
