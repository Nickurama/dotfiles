#!/bin/bash

# date=$(date +"%Y/%m/%d %H:%M:%S")
date=$(date +"%H:%M:%S")
battery=$(cat /sys/class/power_supply/BAT0/capacity)
# wattage=$(awk '{print $1*1e-6 " W"}' /sys/class/power_supply/BAT0/power_now)
wattage=$(awk '{print $1=sprintf("%.2f", $1*1e-6)}' /sys/class/power_supply/BAT0/power_now)

echo "$date | $battery%  $wattage W |"
