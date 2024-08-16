#!/bin/bash

pacmd load-module module-null-sink sink_name=Virtual
# pacmd load-module module-loopback sink=Virtual
pacmd load-module module-loopback source="alsa_input.usb-HP__Inc_HyperX_SoloCast-00.analog-stereo" sink=Virtual
pacmd load-module module-combine-sink slaves=Virtual,"alsa_output.usb-HP__Inc_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo"
#pulsemixer
