#!/bin/bash

#executes the commands that require sudo 
sudo sh scripts/ubuntu.sh

mkdir ~/Pictures/Wallpapers
cp desktopbg/desktopbg.png ~/Pictures/Wallpapers/
gsettings set org.gnome.desktop.background picture-uri ~/Pictures/Wallpapers/desktopbg.png
