#!/bin/bash
sudo chown $USER:$USER ~/.Xauthority ~/.ICEauthority
dconf reset -f /org/gnome/
mv ~/.config/gnome-session/ ~/.config/gnome-session.bak 2>/dev/null
ls /usr/share/xsessions/
sudo apt install --reinstall xfce4-session -y
sudo dpkg-reconfigure gdm3
sudo systemctl restart gdm