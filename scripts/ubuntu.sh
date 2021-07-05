#!/bin/bash


#ppa adding and installing prerequisites
add-apt-repository ppa:appimagelauncher-team/stable -y
apt install -y apt-transport-https curl software-properties-common wget
add-apt-repository ppa:obsproject/obs-studio -y
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
add-apt-repository universe -y
add-apt-repository multiverse -y
add-apt-repository restricted -y
add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsute main' -y
dpkg --add-architecture i386

#more repo adding and key adding
wget -nc https://dl.winehq.org/wine-builds/winehq.key
apt-key add winehq.key
curl -sL -o/tmp/multimc.deb https://files.multimc.org/downloads/multimc_1.5-1.deb
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
curl -sL -o/tmp/discord.deb https://dl.discordapp.net/apps/linux/0.0.15/discord-0.0.15.deb
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget https://extensions.gnome.org/extension-data/emoji-selectormaestroschan.fr.v20.shell-extension.zip
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y

#installing apps
apt update
dpkg --install /tmp/discord.deb
dpkg --install /tmp/multimc.deb
apt install -y appimagelauncher code qbittorrent virtualbox libqt5concurrent5 gparted neofetch git ranger steam ffmpeg obs-studio v4l2loopback-dkms lutris mpv brave-browser handbrake gnome-tweaks webcamoid openjdk-16-jre-headless spotify-client
apt install -y --install-recommends winehq-stable
