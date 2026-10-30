# serverhybridsetup
It's some notes, scripts, and routine instructions to setting up a machine that just won't fit in a box.

## Intro
I just started experimenting with remote access. 
I am familiar with some Linux distros, but sometimes I want to pull the curtains and just see what happens if I just started with nothing and added more.

So I started out with Ubuntu Server, but any other kind of Linux distro is OK.
I looked at options for remote access. I wanted a Web UI so I can access my workstation-server hybrid. I considered Proxmox, but considering that I use both for remote access and as an end user, a Linux distro tailored for server was a good starting point.

Within a local network, it was no problem accessing it via
either an alias or IP addresses, with codes like 9090.

But then, I kinda needed some quick VPN solution to try to secure it when I'm away. I was inspired by that one time when I had an app for household security and I tried to get a grasp at how it worked. For this server that's mostly just passing files for printing, media, running and compiling and testing, here's the following instructions I did.

Why I did this instead of just installing the desktop app and add the features, I wanted finer control and something deliberate to put on, rather than overwhelming with unnecessary apps. And it kinda paid off! A lean desktop setup with just the basics, some apps.

## INSTRUCTIONS
The most common overlap is that you need an interactive terminal emulator, a text editor like vim etc so that when you stumble upon a problem, you will have these tools to troubleshoot and solve.

### DEB
I installed Ubuntu Server and made sure to have a static IP address. 
I picked the most normal and default configuration for certainty. If you accidentally picked minimal, go to root and run deminimize.

I deliberately connected my machine to wifi because I did not had an ethernet connecting at the time. Also, it's a hybrid setup: you want the wireless flavor of gaming and the remote flavor of the server.

After that, I transitioned from netplan to NetworkManager with a text editor.

Then, I also installed some web UI like Cockpit, threw in some virtual machines to kinda get the feel of remote access.

To access the machines away from home, Tailscale will do the job fine: refer to their website for instructions and all of the security stuff. There are some good alternatives, but that's for another time.

The bash scripts are provided in src. If you do wish to run them in different shells you only need to adjust the type of shell and you will be set for life.

The most difficult part of turning a bare server installation into a desktop was installing a desktop environment. Sometimes, it wrestles the network settings a lot, so perhaps what should be nicer is to handle the NetworkManager immediately after installing, and then just installing the desktop environment, login manager, and the settings you prefer. Fortunately, I have not experienced much for the Fedora counterpart.

### DNF
For Fedora you can use either the Everything or whichever flavor they offer. But we will use Fedora Server.
It is similar to the deb counterpart, except after installation, you want to account for RPM Fusion. Which part you choose to enable is up to you depending on your goals.
Fedora Server comes with NetworkManager, so there is no need to overhaul. You also can get away with just installing parts of desktop environment. (further details in src)

### AUDIO, WIRELESS, and PRINTING
PipeWire, with some PulseAudio elements if you are running Debian/Ubuntu, and CUPS are a must for installing audio printer resources. You may also install bluetooth elements if your goals require one.

## VIRTUALIZATION
### LINUX and other OSes
They should work mostly the same as a Workstation version of an OS. Leave virtual machine's network settings default unless an intricate network setup is required for your goals. For fine tuning, look to virt-manager.

### LEGACY OS
Getting a Windows machine running on a customized Linux setup is good, but again may require virt-manager to fine tune some details, or virsh or similar text editing strategies. A fresh install of an older Windows machine is preferred as you are dealing with drivers made for an OS that does not get much support. Also, there are plenty of ways to acquire the Windows license and disk image...

## GAMING
This part inspired me to look toward a hybrid setup. Everywhere I've tried with most Linux distros, they're OK, but only Fedora and Debian/Ubuntu hit the right spot of stability. As Arch more or less dominates this part of gaming, they are very good for keeping things brand new, but using it in the long term has caused some dependencies to break, which is not ideal when you are trying to set up with a workstation or a laptop in mind. They will mostly show game launchers, which presents itself as a deb or rpm file, or something sandboxed. For fine control, the earlier is preferred.
