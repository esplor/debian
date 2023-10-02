#!/usr/bin/env sh
wget -O /tmp/latest-vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install /tmp/latest-vscode.deb
rm /tmp/latest-vscode.deb