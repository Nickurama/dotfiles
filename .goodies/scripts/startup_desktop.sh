#!/bin/bash

# set DP-1 as primary monitor
xrandr --output DP-1 --primary


# mount disks
sudo ntfs-3g /dev/sda1 /media/hdd1

sudo ntfs-3g /dev/sdb2 /media/hdd2
sudo mount /dev/sdb3 /media/hdd2_ext4

sudo ntfs-3g /dev/sdc4 /media/windows
sudo mount /dev/sdc5 /media/ubuntu
