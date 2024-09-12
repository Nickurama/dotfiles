#!/bin/bash

# means the user is using hyprland
if [ -n $(printenv HYPRLAND_INSTANCE_SIGNATURE) ]
then
	# launches fcitx daemon
	fcitx5 -d &
	GTK_IM_MODULE=fcitx
	QT_IM_MODULE=fcitx
	XMODIFIERS=@im=fcitx
fi
