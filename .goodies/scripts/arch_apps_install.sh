#!/bin/bash

#WANING: THIS ISN'T COMPLETE AND DOESN'T HAVE: firefox, dolphin, discord, ...

packages=""
add_package () {
	packages+=$1 packages+=" "
}
install_packages () {
	sudo pacman -S $packages
}

add_package "libreoffice-fresh"
add_package "kclock"

echo $packages
install_packages
