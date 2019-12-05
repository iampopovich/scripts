#!bin/bash
#stage: deinstallation
sudo apt purge libreoffice-* -y
sudo apt purge gnome-sudok* -y
sudo apt purge gnome-mines* -y
sudo apt purge aisler* -y
sudo apt purge firefox* -y
sudo apt purge thunderbird* -y
sudo apt purge transmission-* -y
sudo apt purge gnome-software* -y
sudo apt autoremove
sudo apt autoclean

sudo apt install curl -y

#stage: sublime installation
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

#stage: nodejs installation
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

#stage: repository installation
sudo apt update 
sudo apt upgrade -y
sudo apt install mc -y
sudo apt install chromium-browser -y
sudo apt install git -y
sudo apt install screenfetch -y
sudo apt install nodejs -y
sudo apt install sublime-text -y
sudo apt install sublime-merge -y
