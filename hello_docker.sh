#!bin/bash
#stage: deinstallation
sudo apt purge libreoffice-* -y
sudo apt purge gnome-sudok* -y
sudo apt purge gnome-mines* -y
sudo apt purge gnome-mahjong* -y
sudo apt purge aisler* -y
sudo apt purge firefox* -y
sudo apt purge thunderbird* -y
sudo apt purge transmission-* -y
sudo apt purge gnome-software* -y
sudo apt purge shotwell* -y
sudo apt purge onboard* -y
sudo apt purge xterm* -y
sudo apt purge gedit -y
sudo apt purge -y gnome-todo
sudo apt purge -y remmina*


#sudo apt purge unity-scope-firefoxbookmarks -y
#sudo apt purge unity-scope-tomboy -y
#sudo apt purge unity-scope-gdrive -y
#sudo apt purge unity-scope-video-remote -y
#sudo apt purge unity-scope-home -y
#sudo apt purge unity-scope-virtualbox -y
#sudo apt purge unity-scope-manpages -y
#sudo apt purge unity-scope-yelp -y
#sudo apt purge unity-scope-openclipart -y
#sudo apt purge unity-scope-zotero -y
#sudo apt purge unity-scope-texdoc -y
#sudo apt purge unity-scope-calculator -y
#sudo apt purge unity-scope-chromiumbookmarks -y
#sudo apt purge unity-scope-colourlovers -y
#sudo apt purge unity-scope-devhelp -y

sudo apt autoremove
sudo apt autoclean

sudo apt install curl -y

#stage: sublime installation
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

#stage: nodejs installation
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
rm nodesource_setup.sh

#stage: dbeaveristallaion
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list

#stage: repository installation
sudo apt update 
sudo apt upgrade -y
sudo apt install ffmpeg -y
sudo apt install mc -y
sudo apt install chromium-browser -y

sudo apt install screenfetch -y
sudo apt install nodejs -y
sudo apt install sublime-text -y
sudo apt install sublime-merge -y
sudo apt install freerdp-x11 -y
sudo apt instal dbeaver-ce -y
sudo apt install p7zip -y
sudo apt install unrar -y
sudo apt install lmms -y

#stage: git installation
sudo apt install git -y
git config --global user.name Alex
git config --global user.email iampopovich@gmail.com

#stage: python3 installation
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo apt install python3-venv

#update for 18.04 lts nevermind
gsettings set org.gnome.desktop.peripherals.touchpad click-method areas
