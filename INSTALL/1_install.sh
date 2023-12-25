
sudo pacman -Syu
sudo cp -r ~/dots/pacman/pacman.conf /etc/pacman.conf
reflector --latest 15 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S kitty hyprland nvidia linux-headers qt5ct qt6ct libva libva-nvidia-driver-git xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-hyprland polkit-kde-agent qt5-wayland qt6-wayland sddm-git xwaylandvideobridge-bin 
sudo cp -r ~/dots/grub/grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp -r ~/dots/mkinitcpio/mkinitcpio.conf /etc/mkinitcpio.conf
sudo mkinitcpio --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img
sudo cp -r ~/dots/nvidia/nvidia.conf /etc/modprobe.d/nvidia.conf

sudo cp -r ~/dots/sddm/default.conf /usr/lib/sddm/sddm.conf.d/default.conf

sudo systemctl enable sddm ufw

sudo reboot
