# Prerequisites

- [waybar](https://github.com/Alexays/Waybar)
- [hypr](https://github.com/hyprwm/Hyprland)
- [pywal](https://github.com/dylanaraps/pywal)
- [grim](https://sr.ht/~emersion/grim/)
- [wf-recorder](https://github.com/ammen99/wf-recorder)
- [slurp](https://github.com/emersion/slurp)
- [imagemagick](https://imagemagick.org/index.php)
- [mako](https://github.com/emersion/mako)
- [wallutils](https://github.com/xyproto/wallutils)
- [Dynamic Wallpapers](https://github.com/saint-13/Linux_Dynamic_Wallpapers) (Use Method 3 for all the wallpapers)
- [cowsay](https://github.com/piuccio/cowsay)
- [neovim](https://github.com/neovim/neovim)
- [lynx](https://lynx.invisible-island.net/)
- [Python](https://www.python.org/)
- [Pillow](https://pypi.org/project/Pillow/)
- [pdf2image](https://pypi.org/project/pdf2image/)
- [pytesseract](https://pypi.org/project/pytesseract/)
- [NetworkManager](https://networkmanager.dev/)
- [cweather](https://github.com/saint-13/Linux_Dynamic_Wallpapers)
- [acpi](https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/) (preinstalled in most distros)

Place your Open VPN Configs in folder 'protonOpenVPNConfigs' with 'passwd-file' in it
Add Connections by

```

YOUR_USERNAME=ENTER_YOUR_OPENVPN_USERNAME_HERE

files=$(ls ~/protonOpenVPNConfigs | grep -v 'passwd' | grep -v 'news')
# toBeDeleted=$(nmcli c show | grep udp | cut -d' ' -f1)
for i in $files
do
	shortName=$(echo "$i" | cut -d '.' -f 1-4)
	nmcli connection import type openvpn file "~/protonOpenVPNConfigs/$i"
	nmcli connection modify $shortName +vpn.data username=$YOUR_USERNAME
	# nmcli connection delete $i
done

```

Also, enter your home folder name in .config/waybar/config instead of "cyto"
