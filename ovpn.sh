FILE = $1
sudo apt install network-manager-openvpn-gnome
sudo nmcli connection import type openvpn file $FILE
