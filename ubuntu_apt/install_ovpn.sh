sudo apt install -y network-manager-openvpn-gnome
sudo nmcli connection import type openvpn file $1
