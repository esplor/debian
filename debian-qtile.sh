sudo apt-get install git build-essential python3-venv \
	libxkbcommon-dev lightdm lm-sensors alacritty \
	stow locales bat

sudo python3 -m venv /opt/qtile --upgrade-deps
sudo /opt/qtile/bin/pip install --no-cache-dir cairocffi
sudo /opt/qtile/bin/pip install qtile

sudo bash -c 'cat <<EOF> /usr/share/xsessions/qtile.desktop
[Desktop Entry]
Name=Qtile
Comment=Qtile session
Exec=/opt/qtile/bin/qtile start
Type=Application
Keywords=wm;tiling
EOF'
