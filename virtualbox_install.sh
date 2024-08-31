#!/usr/bin/env sh

wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --dearmor | sudo tee /usr/share/keyrings/oracle-virtualbox.gpg > /dev/null

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox.gpg] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/oracle-virtualbox.list > /dev/null

echo '\n\t*** Done ***\n\tRemember to add your user to vboxusers group:\n\tsudo usermod' $(whoami) '-aG vboxusers\n\n'
