
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
sudo mkdir ~/screenshots
sudo mkdir ~/recordings
sudo mkdir ~/.config/spicetify/Themes/Pywal
sudo mkdir ~/.config/dunst
sudo mkdir ~/.config/cava
sudo mkdir ~/.config/neofetch
sudo mkdir ~/.config/btop
sudo mkdir ~/.config/Thunar
sudo mkdir ~/.config/xfce4
sudo mkdir ~/.config/qimgv

#CONFIGS
sudo cp -r ~/1/wallpapers ~/
sudo cp -r ~/1/zsh/.p10k.zsh ~/
sudo cp -r ~/1/zsh/.zshrc ~/
sudo cp -r ~/1/firefox/user.js ~/.mozilla/firefox/ #default-release
sudo cp -r ~/1/firefox/chrome ~/.mozilla/firefox/ #default-release
sudo cp -r ~/1/btop/btop.conf ~/.config/btop
sudo cp -r ~/1/cava/config ~/.config/cava
sudo cp -r ~/1/dunst/dunstrc ~/.config/dunst
sudo cp -r ~/1/hypr ~/.config/
sudo cp -r ~/1/hypr ~/.config
sudo cp -r ~/1/kitty/kitty.conf ~/.config/kitty
sudo cp -r ~/1/neofetch/config.conf ~/.config/neofetch
sudo cp -r ~/1/rofi ~/.config
sudo cp -r ~/1/spicetify/color.ini ~/.config/spicetify/Themes/Pywal
sudo cp -r ~/1/spicetify/user.css ~/.config/spicetify/Themes/Pywal
sudo cp -r ~/1/spicetify/adblock.js ~/.config/spicetify/Extensions
sudo cp -r ~/1/spicetify/config-xpui.ini ~/.config/spicetify
sudo cp -r ~/1/qimgv/qimgv.conf ~/.config/qimgv
sudo cp -r ~/1/templates ~/.config/wal
sudo cp -r ~/1/thunar/helpers.rc ~/.config/xfce4
sudo cp -r ~/1/thunar/uca.xml ~/.config/Thunar
sudo cp -r ~/1/vscodium/settings.json ~/.config/VSCodium/User

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
