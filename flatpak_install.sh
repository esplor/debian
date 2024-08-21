#!/usr/bin/env sh
sudo apt-get update
sudo apt-get -y install flatpak gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
