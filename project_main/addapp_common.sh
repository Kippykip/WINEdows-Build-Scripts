#These packages usually want prompts, so get these done first
apt -y install libdvd-pkg
dpkg-reconfigure libdvd-pkg
apt -y install ttf-mscorefonts-installer

#The rest should be fine
apt -y install gnome-session-canberra sox libcanberra-gtk3-module libcanberra-gtk-module
apt -y install git
apt -y install gparted
apt -y install clonezilla
apt -y install aisleriot
apt -y install fluidsynth
apt -y remove fluid-soundfont-gm
apt -y install timgm6mb-soundfont
apt -y install ghex
apt -y install qdirstat
apt -y install qbittorrent
apt -y install kolourpaint
apt -y install chocolate-doom
apt -y install handbrake
apt -y install audacity
apt -y install gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly
#Exfat support
apt -y install hfsutils hfsprogs exfat-fuse exfat-utils reiser4progs f2fs-tools udftools
apt -y install gdebi
apt -y install samba
apt -y install python3-tk python3-numpy
apt -y install jstest-gtk
apt -y install cmake build-essential
apt -y install libsdl2-dev libsdl2-mixer-dev
apt -y install regexxer
apt -y install k3b
apt -y install gnome-multi-writer gnome-disk-utility
apt -y install filezilla
apt -y install krita
apt -y install libdvdnav4 libdvdread7