#!/bin/sh
#echo "Upgrading current applications"
#apt -y update
#apt -y upgrade

echo "Downloading some requirements"
apt -y install git
git clone https://github.com/grassmunk/Chicago95.git

#echo "Add extra repositories"
#dpkg --add-architecture i386
#wget -nc https://dl.winehq.org/wine-builds/winehq.key
#apt-key add winehq.key
#add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
#add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
#add-apt-repository ppa:xubuntu-dev/extras
#add-apt-repository ppa:kisak/kisak-mesa
#apt -y update

#echo "Add common apps"
#./addapp_common.sh

#echo "Add apps specific for Xubuntu"
#./addapp_xubuntu.sh

echo "Remove unneeded apps specific for Xubuntu"
./delapp_xubuntu.sh

echo "Add WINEdows files"
./copy_common.sh

echo "Add WINEdows files specific for Xubuntu"
./copy_xubuntu.sh

echo "Execute common patches"
./patches_common.sh

echo "Execute patches specific for Xubuntu"
./patches_xubuntu.sh

echo "Remove unneeded packages"
apt -y autoremove

echo "Done! Now cleanup this directory before release :^)"