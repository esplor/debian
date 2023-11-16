# debian
Collection of debian scripts

# GDM tap to click

```sh
sudo apt-get -y install dbus-x11

sudo -u Debian-gdm -s /bin/bash
export $(dbus-launch)
GSETTINGS_BACKEND=dconf gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
```
