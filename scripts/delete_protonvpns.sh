#!/bin/bash

files=$(ls ~/protonOpenVPNConfigs | grep -v 'passwd' | grep -v 'news')
# toBeDeleted=$(nmcli c show | grep udp | cut -d' ' -f1)
for i in $files
do
	shortName=$(echo "$i" | cut -d '.' -f 1-4)
	# i atp is like 'jp-free-01.protonvpn.net.udp.ovpn'
	i=$(echo "$i" | rev | cut -c 6- | rev)
	# i atp is like 'jp-free-01.protonvpn.net.udp'
	echo "deleting network => $i"
	nmcli connection delete $i
done
