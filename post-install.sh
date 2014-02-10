#!/bin/bash
REPOPATH="https://raw2.github.com/omgmog/archarm-usb-hp-chromebook-11/master/"

# Update pacman and install some important things
pacman -Syy
pacman -S mate xorg-server xorg-xinit xorg-server-utils xterm wget alsa-utils xf86-video-armsoc-chromium
echo "exec mame-session" > ~/.xinitrc

# Add xorg.conf entries for screen and touchpad
cd /etc/X11/xorg.conf.d/
wget ${REPOPATH}10-monitor.conf
wget ${REPOPATH}50-touchpad.conf