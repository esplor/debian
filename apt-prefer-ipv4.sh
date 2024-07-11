SHELL='/usr/bin/env sh'
sudo $SHELL -c 'cat <<EOF> /etc/apt/apt.conf.d/90-prefer-ipv4.conf
Acquire::ForceIPv4 "true";
EOF'
