#!/bin/bash

# add group "wireshark"
sudo groupadd wireshark

# add user to group wireshark
sudo usermod -aG wirehsark #USER
# or?: sudo gpasswd -a $USER wireshark

# give wireshark permissions
sudo chgrp wirehsark /usr/sbin/dumpcap
sudo chmod o-rx /usr/sbin/dumpcap

# set certain permissions
sudo setcap cap_net_raw,cap_net_admin+eip /usr/sbin/dumpcap
