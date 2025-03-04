1. install "strongswan" and "xl2tpd"
2. file /etc/ipsec.conf

"
conn %default
	ikelifetime=60m
	keylife=20m
	rekeymargin=3m
	keyingtries=1
	keyexchange=ikev1
	authby=secret
	ike=aes128-sha1-modp1024,3des-sha1-modp1024!
	esp=aes128-sha1-modp1024,3des-sha1-modp1024!

conn ualg
	keyexchange=ikev1
	authby=secret
	left=%defaultroute
	leftsubnet=0.0.0.0/0
	leftprotoport=17/1701
	right=193.136.227.190
	rightsubnet=0.0.0.0/0
	rightprotoport=17/1701
	type=transport
	auto=add
"

3. file /etc/ipsec.secrets

"
: PSK "UalgVpn01"
"

4. file /etc/xl2tpd/xl2tpd.conf

"
[lac ualg]
lns = 193.136.227.190
ppp debug = yes
pppoptfile = /etc/ppp/options.l2tpd.client
length bit = yes
"

5. file /etc/ppp/options.l2tpd.client

"
ipcp-accept-local
ipcp-accept-remote
refuse-eap
require-chap
noccp
noauth
mtu 1280
mru 1280
noipdefault
defaultroute
usepeerdns
connect-delay 5000
name a79858@ualg.pt
password B2V!VnV!
"

6. run connect the script
