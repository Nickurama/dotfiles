#!/bin/bash

packages=""
add_package () {
	packages+=$1
	packages+=" "
}
install_packages () {
	sudo pacman -S $packages
}

aur_packages=""
add_aur_package () {
	aur_packages+=$1
	aur_packages+=" "
}
install_aur_packages () {
	yay -S --noconfirm --needed $aur_packages
}


add_package "qt6-base" # qt6 and tools are needed for qimgv
add_package "qt6-tools" # if this errors try with qt5
add_package "qt5-base" # qt6 and tools are needed for qimgv
add_package "qt5-tools" # if this errors try with qt5
add_aur_package "qimgv-git"
# add_aur_package "mpvpaper"
add_aur_package "swaylock-effects"
add_aur_package "wlogout"
add_aur_package "hyprpicker"
# add_aur_package "auto-cpufreq" # you then need to run "sudo auto-cpufreq --install"

add_aur_package "iscan" # printer scan
add_aur_package "iscan-plugin-network" # printer scan network

add_aur_package "qimgv"
add_aur_package "vesktop-bin"
##add_aur_package "spotify"

install_packages
install_aur_packages
