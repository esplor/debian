SHELL='/usr/bin/env sh'

sudo $SHELL -c 'cat <<EOF> /etc/apt/sources.list
deb http://deb.debian.org/debian                bookworm                        main contrib non-free non-free-firmware
deb http://deb.debian.org/debian                bookworm-updates                main contrib non-free non-free-firmware
deb http://deb.debian.org/debian                bookworm-backports              main contrib non-free non-free-firmware
deb http://deb.debian.org/debian-security/      bookworm-security               main contrib non-free non-free-firmware

# *** Optional ***
#deb http://deb.debian.org/debian                bookworm-backports-sloppy       main contrib non-free non-free-firmware
#deb http://deb.debian.org/debian                bookworm-proposed-updates       main contrib non-free non-free-firmware
EOF'

sudo apt-get update && sudo apt-get -y install build-essential \
	libxkbcommon-dev lightdm lm-sensors alacritty stow \
	bat xserver-xorg xinit libpangocairo-1.0-0 \
	python3-pip python3-venv python3-xcffib python3-cairocffi

sudo python3 -m venv /opt/qtile --upgrade-deps
sudo /opt/qtile/bin/pip install qtile

sudo $SHELL -c 'cat <<EOF> /usr/share/xsessions/qtile.desktop
[Desktop Entry]
Name=Qtile
Comment=Qtile session
Exec=/opt/qtile/bin/qtile start
Type=Application
Keywords=wm;tiling
EOF'
