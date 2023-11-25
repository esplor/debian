SHELL='/usr/bin/env sh'

sudo $SHELL -c 'cat <<EOF> /etc/apt/sources.list
deb http://deb.debian.org/debian                bookworm                        main contrib non-free non-free-firmware
deb http://deb.debian.org/debian                bookworm-updates                main contrib non-free non-free-firmware
deb http://deb.debian.org/debian-security/      bookworm-security               main contrib non-free non-free-firmware

# *** Optional ***
#deb http://deb.debian.org/debian                bookworm-backports              main contrib non-free non-free-firmware
#deb http://deb.debian.org/debian                bookworm-backports-sloppy       main contrib non-free non-free-firmware
#deb http://deb.debian.org/debian                bookworm-proposed-updates       main contrib non-free non-free-firmware
EOF'
