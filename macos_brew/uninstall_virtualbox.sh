#hope so you use appcleaner
brew update
brew cleanup
#################################
brew cask rm virtualbox --force
brew cask rm vagrant --force
brew cask rm vagrant-manager --force
#################################
rm -rf /Applications/Vagrant* /Applications/VirtualBox
sudo rm -f /usr/bin/vagrant /usr/local/bin/vagrant
sudo rm -rf /opt/vagrant /opt/homebrew-cask/Caskroom/va* /opt/homebrew-cask/Caskroom/virtualbox
rm -rf ~/.vagrant* ~/.docker ~/Virtual*
rm -rf /usr/local/Caskroom/virtualbox && rm -rf /Applications/VirtualBox.app/
sudo pkgutil --forget com.vagrant.vagrant
