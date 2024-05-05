
#DEPENDENCIES
sudo pacman -S vim reflector git ufw

#PACMAN
sudo pacman -Syu
sudo vim /etc/pacman.conf
sudo reflector --latest 15 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy

#YAY
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#GRUB
sudo vim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

#UFW
sudo systemctl enable ufw.service
sudo systemctl start ufw.service

#PACKAGES
yay -S hyprland kitty sddm-git dunst xdg-desktop-portal-hyprland xdg-desktop-portal-gtk qt6-wayland qt5-wayland polkit-kde-agent hyprlock waybar wofi swww grimblast-git xwaylandvideobridge-git cliphist wl-clip-persist udiskie nwg-look qt5ct qt6ct\
network-manager-applet blueberry firefox python-pywalfox spotify spicetify-cli qimgv-light mpv pavucontrol thunar tumbler gvfs gvfs-mtp thunar-volman thunar-archive-plugin file-roller android-sdk-platform-tools android-file-transfer cava cmatrix\
pipes.sh cbonsai tty-clock neofetch zsh oh-my-zsh-git zsh-theme-powerlevel10k zsh-syntax-highlighting zsh-autosuggestions btop pywal-16-colors themix-full-git ttf-iosevka-nerd bibata-cursor-theme libreoffice-still vscodium-electron bottles gamemode\
mangohud gamescope pulseaudio-nextsink brightnessctl playerctl 

#DIRECTORIES
mkdir ~/screenshots
mkdir ~/recordings
mkdir ~/.config/spicetify/Themes/Pywal
mkdir ~/.config/dunst
mkdir ~/.config/cava
mkdir ~/.config/neofetch
mkdir ~/.config/btop
mkdir ~/.config/Thunar
mkdir ~/.config/xfce4
mkdir ~/.config/qimgv

#CONFIGS
cp -r ~/1/wallpapers ~/
cp -r ~/1/zsh/.p10k.zsh ~/
cp -r ~/1/zsh/.zshrc ~/
cp -r ~/1/firefox/user.js ~/.mozilla/firefox/ #default-release
cp -r ~/1/firefox/chrome ~/.mozilla/firefox/ #default-release
cp -r ~/1/btop/btop.conf ~/.config/btop
cp -r ~/1/cava/config ~/.config/cava
cp -r ~/1/dunst/dunstrc ~/.config/dunst
cp -r ~/1/hypr ~/.config/
cp -r ~/1/hypr ~/.config
cp -r ~/1/kitty/kitty.conf ~/.config/kitty
cp -r ~/1/neofetch/config.conf ~/.config/neofetch
cp -r ~/1/rofi ~/.config
cp -r ~/1/spicetify/color.ini ~/.config/spicetify/Themes/Pywal
cp -r ~/1/spicetify/user.css ~/.config/spicetify/Themes/Pywal
cp -r ~/1/spicetify/adblock.js ~/.config/spicetify/Extensions
cp -r ~/1/spicetify/config-xpui.ini ~/.config/spicetify
cp -r ~/1/qimgv/qimgv.conf ~/.config/qimgv
cp -r ~/1/templates ~/.config/wal
cp -r ~/1/thunar/helpers.rc ~/.config/xfce4
cp -r ~/1/thunar/uca.xml ~/.config/Thunar
cp -r ~/1/vscodium/settings.json ~/.config/VSCodium/User

#SCRIPTS
cd ~/.config/hypr/scripts
sudo chmod +x gamemode_off.sh gamemode_on.sh theme.sh

#SPOTIFY
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spicetify backup apply
spicetify config custom_apps lyrics-plus
spicetify apply

#ZSH
cd ~/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#SERVICES
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl enable sddm.service
sudo systemctl start sddm.service

#REBOOT
sudo reboot

#notes
#to-do list
#camera
#calendar
#calculator
#weather
#maps
#clock
#reddit
#youtube
#rumble
