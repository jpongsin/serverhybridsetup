#!/bin/bash

#distros like ubuntu server often are installed with netplan.
#while effective for a headless server, they often collide with desktop environment.
#for convenience, we reconciled with immediately configuring NetworkManager
#before doing anything else.
#If you don't have Network Manager, you can try to install and see
#if it already is installed.

#You should have already installed a Linux server distro
#and assign a wifi to have a static IP address. This is to ensure that the network of this device is consistent, and pave the way for abstracting it with a readable name.

#Update and upgrade your programs, services, etc before doing anything else.
sudo apt update && sudo apt upgrade -y

#Generally, it would be something like this, unless you are comfortable going root.
sudo apt install network-manager -y

#Comment out this part if you would rather install your own terminal and text editor
sudo apt install vim terminator -y

#If your distro was not installed with netplan
#Also comment out this part. This will take you to the directory where you will be able to edit the configuration.
cd etc/netplan/
ls
#For some reason, cockpit, the web UI for remote access does not want to play well, so I will find a way to try to generalize the install.

