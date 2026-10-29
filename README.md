Just started experimenting with remote access. 
So I started out with Ubuntu Server, but any other kind of Linux distro is OK.
I looked at options for remote access. I wanted a Web UI so I can access my workstation-server hybrid. I considered Proxmox, but considering that I use both for remote access and as an end user, a Linux distro tailored for server was a good starting point.

Within a local network, it was no problem accessing it via
either an alias or IP addresses, with codes like 9090.

But then, I kinda needed some quick VPN solution to try to secure it when I'm away. I was inspired by that one time when I had an app for household security and I tried to get a grasp at how it worked. For this server that's mostly just passing files for printing, media, running and compiling and testing, here's the following instructions I did.

Why I did this instead of just installing the desktop app and add the features, I wanted finer control and something deliberate to put on, rather than overwhelming with unnecessary apps. And it kinda paid off! A lean desktop setup with just the basics, some app....

INSTRUCTIONS
I installed Ubuntu Server and made sure to have a static IP address. I picked the most normal and default configuration for certainty.

Because I used a default configuration I let the yaml file be processed. Before I install the desktop I had to setup a Web UI, some virtual machines. I didn't bother with ethernet, only used wifis. My target machine was not connected to the ethernet.

Yes, you do need Tailscale credentials. I do not have any other alternatives yet.

Once I figure out how to recall the exact instructions, I may compile these commands and turn it into bash scripts. If you do wish to run them in different shells you only need to adjust the type of shell and you will be set for life.

The most difficult part of turning a bare server installation into a desktop was installing a desktop environment. Sometimes, it wrestles the network settings a lot, so perhaps what should be nicer is to handle the NetworkManager immediately after installing, and then just installing the desktop environment, login manager, and the settings you prefer.

LEGACY OS
So far I got old Windows machine running. You mostly have to do a fresh install on it. There's no telling if the virtual machine image will carry over to another new one. I tried to export from VirtualBox image to qcow2 and imported, but it did not work.

GAMING
This is the aspect that drove me to a Linux server type.
Most of the time, the Debian types are well prepared for this stuff. I have seen Arch types, but Arch almost loses me that everything new always breaks what we depend on. For Fedora and OpenSUSE type, Fedora is almost a solid plug and play with some controller quirks to work out. More on that later.
