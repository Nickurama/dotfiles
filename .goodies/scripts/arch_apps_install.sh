#!/bin/bash

#WANING: THIS ISN'T COMPLETE AND DOESN'T HAVE: firefox, dolphin, discord, ...

packages=""
add_package () {
	packages+=$1 packages+=" "
}
install_packages () {
	sudo pacman -S $packages
}

add_package "fastfetch"
add_package "htop"
add_package "wget"
add_package "zip"
add_package "unzip"
add_package "maven"
add_package "npm"

add_package "dolphin"
add_package "dolphin-plugins"
add_package "bluez-obex" # enables bluetooth for dolphin
add_package "ffmpegthumbs" # for dolphin thumbnails
add_package "libreoffice-fresh"
add_package "kclock"
add_package "kdeconnect"
add_package "spectacle"
add_package "mpv"
add_package "strawberry"
add_package "thunderbird"
# add_package "audacity"
add_package "wireshark-qt"
# add_package "lutris"
add_package "task"
add_package "okular"
# add_package "obs-studio"
add_package "ark"
add_package "rsync"
add_package "noto-fonts-cjk"
add_package "fcitx5-im"
# add_package "gnome-calendar"
add_package "calcurse"
add_package "partitionmanager"
add_package "net-tools"
add_package "nmap"

install_packages
