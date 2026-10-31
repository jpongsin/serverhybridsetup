#!/bin/bash
#tested on ubuntu server

#Update and upgrade your programs, services, etc before doing anything else.
sudo apt update && sudo apt upgrade -y

#Generally, it would be something like this, unless you are comfortable going root.
sudo apt install network-manager -y

#Comment out this part if you would rather install your own terminal and text editor
sudo apt install vim terminator -y

#do not let the boot stall because it waits for networkd
sudo systemctl disable systemd-networkd wait.service
sudo systemctl mask systemd-networkd-wait-online.service
sudo systemctl enable NetworkManager-wait-online.service

#if you are connected to wifi uncomment this:
#set wifi power safe to 2 for desktop-like performance
#cd /etc/NetworkManager
#cd conf.d
#ls /etc/NetworkManager/conf.d

#go to netplan and see what you can do?
#use your text editor and set renderer: NetworkManager
cd /etc/netplan
ls /etc/netplan



