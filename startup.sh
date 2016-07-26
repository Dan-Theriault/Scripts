#!/bin/sh

# Display
redshift &

# Settings
gnome-settings-daemon &
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# Networking
# nm-applet &
# VPN starting moved to /etc/NetworkManager/dispatcher.d/99vpn

# Input
synclient VertScrollDelta=-110 HorizScrollDelta=-110
synclient TapButton1=1 TapButton2=3 TapButton3=2 #tap to click
synclient CoastingSpeed=0 #no coasting
setxkbmap -option compose:ralt

# Audio
pacmd load-module module-switch-on-connect

# PATH
export PATH=$HOME/bin:/usr/local/bin:$HOME/Android/Sdk/platform-tools:/usr/sbin:/sbin:$PATH

