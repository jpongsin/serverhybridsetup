Just started experimenting with remote access. 
So I started out with Ubuntu Server, but any other kind of Linux distro is OK.
I looked at options for remote access. I wanted a Web UI so I can access my workstation-server hybrid. I considered Proxmox, but considering that I use both for remote access and as an end user, a Linux distro tailored for server was a good starting point.

Within a local network, it was no problem accessing it via
either an alias or IP addresses, with codes like 9090.

But then, I kinda needed some quick VPN solution to try to secure it when I'm away. I was inspired by that one time when I had an app for household security and I tried to get a grasp at how it worked. For this server that's mostly just passing files for printing, media, running and compiling and testing, here's the following instructions I did.

Why I did this instead of just installing the desktop app and add the features, I wanted finer control and something deliberate to put on, rather than overwhelming with unnecessary apps.

INSTRUCTIONS
I installed Ubuntu Server and made sure to have a static IP address. I picked the most normal and default configuration for certainty.

Because I used a default configuration I let the yaml file be processed. Before I install the desktop I had to setup a Web UI, some virtual machines. I didn't bother with ethernet, only used wifis.

Yes, you do need Tailscale credentials. I do not have any other alternatives yet

LEGACY OS
