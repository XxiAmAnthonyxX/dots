
mkdir ~/recordings
mkdir ~/screenshots
mkdir ~/.config/spicetify/Themes/Pywal
mkdir ~/.config/dunst
mkdir ~/.config/cava
mkdir ~/.config/neofetch
mkdir ~/.config/swaylock
mkdir ~/.config/btop
mkdir ~/.config/Thunar
mkdir ~/.config/xfce4
mkdir ~/.config/qimgv

cp -r ~/dots/btop/btop.conf ~/.config/btop
cp -r ~/dots/cava/config ~/.config/cava
cp -r ~/dots/dunst/dunstrc ~/.config/dunst
cp -r ~/dots/firefox/user.js ~/.mozilla/firefox/ #default-release
cp -r ~/dots/firefox/chrome ~/.mozilla/firefox/ #default-release
cp -r ~/dots/hypr ~/.config
cp -r ~/dots/kitty/kitty.conf ~/.config/kitty
cp -r ~/dots/neofetch/config.conf ~/.config/neofetch
cp -r ~/dots/rofi ~/.config
cp -r ~/dots/spicetify/color.ini ~/.config/spicetify/Themes/Pywal
cp -r ~/dots/spicetify/user.css ~/.config/spicetify/Themes/Pywal
cp -r ~/dots/spicetify/adblock.js ~/.config/spicetify/Extensions
cp -r ~/dots/spicetify/config-xpui.ini ~/.config/spicetify
cp -r ~/dots/swaylock/config ~/.config/swaylock
cp -r ~/dots/qimgv/qimgv.conf ~/.config/qimgv
cp -r ~/dots/templates ~/.config/wal
cp -r ~/dots/thunar/helpers.rc ~/.config/xfce4
cp -r ~/dots/thunar/uca.xml ~/.config/Thunar
cp -r ~/dots/zsh/.p10k.zsh ~/
cp -r ~/dots/zsh/.zshrc ~/
cp -r ~/dots/vesktop/quickCss.css ~/.config/vesktop/settings
cp -r ~/dots/vscodium/

ln -s ~/.cache/wal/colors-discord.css ~/.config/vesktop/themes/pywal-vencord.theme.css

sudo systemctl enable NetworkManager.service

sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spicetify backup apply

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#sudo reboot
