#!/bin/bash


#
#
# REQUIRES networkmanager-openvpn
#
#
files=$(ls ~/protonOpenVPNConfigs | grep -v 'passwd' | grep -v 'news')
# toBeDeleted=$(nmcli c show | grep udp | cut -d' ' -f1)
for i in $files
do
	shortName=$(echo "$i" | cut -d '.' -f 1-4)
	nmcli connection import type openvpn file "/home/cyto/protonOpenVPNConfigs/$i"
	nmcli connection modify $shortName +vpn.data username=$PROTONVPN_USERNAME
	# nmcli connection delete $i
done
