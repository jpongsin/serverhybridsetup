#!/bin/bash


#update, refresh
sudo dnf update

#install desktop environment
sudo dnf install firefox lxqt-panel qterminal pcmanfm-qt screengrab qalculate qpdfview featherpad lximage-qt breeze-gtk breeze-icon-theme plasma-breeze-qt6 plasma-breeze-qt5 sddm -y

#go to desktop environment
sudo systemctl enable sddm
sudo systemctl set-default graphical.target

#reboot
sudo reboot

#after this you can configure gpu and rpm fusion
