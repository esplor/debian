#!/usr/bin/env sh
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo tee - /etc/apt/trusted.gpg.d/google-key.pub
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/trusted.gpg.d/google-key.pub] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update && sudo apt install google-chrome-stable
