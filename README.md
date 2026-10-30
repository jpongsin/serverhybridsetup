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
See src folder for details

### DEB
I installed Ubuntu Server and made sure to have a static IP address. I picked the most normal and default configuration for certainty.
I deliberately connected my machine to wifi because I did not had an ethernet connecting at the time.

After that, I transitioned from netplan to NetworkManager. Then, I also installed some web UI like Cockpit, threw in some virtual machines to kinda get the feel of remote access.

One thing I wanted to settle about why I was able to access some household security while I'm away, is VPNs. I lookedup to VPN solutions which involved having Tailscale credentials. I do nothave any other alternatives yet.

Once I figure out how to recall the exact instructions, I may turn it into bash scripts. 
If you do wish to run them in different shells you only need to adjust the type of shell and you will be set for life.

The most difficult part of turning a bare server installation into a desktop was installing a desktop environment. Sometimes, it wrestles the network settings a lot, so perhaps what should be nicer is to handle the NetworkManager immediately after installing, and then just installing the desktop environment, login manager, and the settings you prefer.

### DNF
For Fedora you can use either the Everything or whichever flavor they offer. But we will use Fedora Server.
It is mostly the same as the deb counterpart, except after installation, you want to account for RPM Fusion. Which part you choose to enable is up to you depending on your goals.
Fedora Server comes with NetworkManager, so there is no need to overhaul. You also can get away with just installing parts of desktop environment (mine is GNOME but KDE is ok).

### AUDIO, WIRELESS, and PRINTING
However, we are not done here. The norm for most distros are PipeWire with some remnants of pulseaudio. When you do interact with the desktop environment, the settings will tell you that some parts are not available. CUPS is a must for installing printer resources. 

## VIRTUALIZATION
Mixed but workarounds are fine.

### LINUX and other OSes
They should work mostly the same as a Workstation version of an OS. I have replicated some parts of instructions personally on a virtual machine / VM. You will want to make sure that the VMs network settings are left default. Making a virtual machine through a web UI like Cockpit yields pretty mixed results: often, when I make a virtual machine, virt-manager is the first I would point toward.

### LEGACY OS
So far I got old Windows machine running. You mostly have to do a fresh install on it. You do have to own a license to be legit, but there's plenty of ways you can get the ISO, the installer... 
There's no telling if the virtual machine image will carry over to another new one. I tried to export from VirtualBox image to qcow2 and imported, but it did not work.

### GAMING
This is the aspect that drove me to a Linux server type.
Most of the time, the Debian types are well prepared for this stuff. I have seen Arch types, but Arch almost loses me that everything new always breaks what we depend on. For Fedora and OpenSUSE type, Fedora is almost a solid plug and play with some controller quirks to work out. More on that later.

I mostly game via game launchers and emulators (provided that you do indeed own the games), so pretty much if it's acting up, all of it can be resolved within their environment. However, if you are in the mood of patching, modding games, getting them to run via deb is more ideal for greater flexibiliy.
