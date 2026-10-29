#!/bin/bash


#I remember when I installed ubuntu server, I was dealing with netplan.
#However, the desktop uses NetworkManager, so I went out my way to 
#explicitly tell the renderer to be NetworkManager.
#If you don't have Network Manager, you can try to install and see
#if it already is installed.
#ls etc/netplan/
sudo apt update && sudo apt upgrade -y

#Generally, it would be something like this, unless you are comfortable going root.
sudo apt install network-manager -y

#Comment out this part if you would rather install your own terminal and text editor
sudo apt install vim terminator -y

#For some reason, cockpit, the web UI for remote access does not want to play well, so I will find a way to try to generalize the install.

