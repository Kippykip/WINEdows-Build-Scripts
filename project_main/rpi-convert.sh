#!/bin/sh
echo "Upgrading current applications"
apt -y update
apt -y upgrade

echo "Installing essential applications"
apt -y install lightdm-gtk-greeter-settings gnome-system-tools
apt -y install git
apt -y install xfce4-taskmanager xfce4-whiskermenu-plugin xfce4-screenshooter
apt -y install mesa-utils libgles2-mesa libgles2-mesa-dev
apt -y install network-manager network-manager-gnome
#Fixes the networkmanager button in XFCE4 not working
apt -y purge openresolv dhcpcd5
apt -y install gvfs-backends samba-common
apt -y install synaptic

apt -y install system-config-printer xscreensaver onboard
apt -y install chromium thunderbird libwidevinecdm0
apt -y install mousepad xarchiver
apt -y install bluetooth pi-bluetooth bluez blueman
apt -y install parole
apt -y install libreoffice
apt -y install simple-scan
apt -y install gigolo
apt -y install ristretto imagemagick
apt -y install gimp
apt -y install gnome-mines
apt -y install gucharmap
apt -y install engrampa thunar-archive-plugin
apt -y install python3-tk python3-numpy xinput
apt -y install mate-calc menulibre gnome-font-viewer
#apt -y remove light-locker
apt -y remove software-properties-gtk

#Pi specifics
apt -y install flatpak
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.kde.krita
apt -y install unrar-free
apt -y install libdvdnav4 libdvdread8 
apt -y install ntp

#pinball
cp ./data/usr/bin/3dpinball_armhf /usr/bin/3dpinball
chmod 755 /usr/bin/3dpinball

#NOTES
#remember to copy /etc/lightdm/lightdm.conf.d/10-winedows.conf
#delete keyrings from /local/ then when keyrings pop up, mash enter
#edit chromium to allow gpu decoding
history -c

#XUBUNTU SUPPORT!!!
#Download ubuntu server 20.04 and setup wifi, then do this:
sudo apt install xubuntu-desktop^
#https://www.dedoimedo.com/computers/rpi4-ubuntu-mate-hw-video-acceleration.html
sudo apt-get install libgles2-mesa libgles2-mesa-dev xorg-dev pi-bluetooth
#oh yeah dont forget the /rpi/boot directory
#sudo echo deb http://archive.raspberrypi.org/debian/ bullseye main | sudo tee /etc/apt/sources.list.d/raspberrypi.list
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7FA3303E
sudo apt-get update
#to activate boot screen, add this to /boot/cmdline.txt or whatever
#quiet splash plymouth.ignore-serial-consoles vt.global_cursor_default=0


sudo apt install -t bullseye chromium-browser




