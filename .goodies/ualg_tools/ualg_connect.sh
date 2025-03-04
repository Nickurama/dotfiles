sudo systemctl restart xl2tpd.service
sudo ipsec restart
sleep 0.5
sudo ipsec up ualg

sudo chmod 777 /var/run/xl2tpd/l2tp-control
echo "c ualg" > /var/run/xl2tpd/l2tp-control

sleep 0.5
sudo route add 193.136.227.190 gw 192.168.0.1
sudo route add default dev ppp0
