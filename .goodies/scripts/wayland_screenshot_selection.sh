#!/bin/bash

#dependencies:
# - slurp (to get coordinates from selection)
# - grim (to screenshot coordinates)
# - wl-clipboard (for copying to clipboard)

grim -g "$(slurp)" - | wl-copy
