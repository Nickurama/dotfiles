#!/bin/bash

#dependencies:
# - slurp (to get coordinates from selection)
# - grim (to screenshot coordinates)
# - wl-clipboard (for copying to clipboard)

hyprpicker -r -z &
sleep 0.2
hyprpicker_pid=$!
grim -g "$(slurp)" - | wl-copy
kill "$hyprpicker_pid"
notify-send "screenshot taken!"
