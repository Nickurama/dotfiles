#!/bin/bash

#WANING: THIS ISN'T COMPLETE AND DOESN'T HAVE: firefox, dolphin, discord, ...

packages=""
add_package () {
	packages+=$1 packages+=" "
}
install_packages () {
	sudo pacman -S $packages
}

add_package "lxsession"
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
dd_package "net-tools"
add_package "nmap"

#hyprland stuff
add_package "wl-clipboard"
add_package "hyprpaper"
add_package "waybar"
add_package "xdg-desktop-portal-hyprland"
add_package "slurp"
add_package "grim"
add_package "pavucontrol"
add_package "swayidle"
add_package "ttf-roboto-mono"
add_package "dunst"
add_package "wireplumber"
add_package "blueberry"
add_package "gnome-bluetooth-3.0"
add_package "rclone"
add_package "lxsession"
add_package "ranger"
add_package "thunar"
add_package "imagemagick" # dependency some software has for imaging things
add_package "btop"

# breeze theme for gtk
add_package "breeze"
add_package "breeze-gtk"
add_package "breeze-icons"
add_package "breeze5"

add_package "kdialog"
add_package "qt5ct"

install_packages
