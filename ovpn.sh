FILE = $1
sudo apt install network-manager-openvpn-gnome -y
sudo nmcli connection import type openvpn file $FILE
