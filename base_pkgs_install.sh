#!/usr/bin/env sh
sudo apt-get -y install bash-completion stow htop locales
sudo dpkg-reconfigure locales
sudo dpkg-reconfigure console-setup
