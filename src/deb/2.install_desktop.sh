#!/bin/bash
#tested on ubuntu server

#make sure you set to renderer:NetworkManager.
sudo netplan apply

#install lxqt, lightdm
sudo apt install lxqt-core -y
sudo apt install lightdm lightdm-gtk-greeter cups gvfs gvfs-backends gvfs-fuse breeze-icon-theme lxqt-plugin lxqt-menu-data -y
sudo systemctl enable lightdm -y

#install drivers
ubuntu-drivers device
sudo ubuntu-drivers install
sudo apt install bluetooth bluez bluez-tools rfkill -y
sudo systemctl enable bluetooth

#audio
sudo apt install pipewire pipewire-pulse pipewire-jack pipewire-alsa libspa-0.2-bluetooth wireplumber pulseaudio-utils
sudo systemctl enable pipewire.socket
sudo systemctl enable pipewire-pulse.socket
sudo systemctl enable wireplumber.service

#start
sudo systemctl start lightdm bluetooth pipewire pipewire-pulse wireplumber




