#Add a symbol link for the default installation wallpaper
rm /usr/share/xfce4/backdrops/xubuntu-wallpaper.png
ln -s /usr/share/xfce4/backdrops/Setup.png /usr/share/xfce4/backdrops/xubuntu-wallpaper.png
chmod 644 /usr/share/xfce4/backdrops/xubuntu-wallpaper.png
#Change boot name
patch /etc/grub.d/10_linux ./patches/grubname.patch
#patch files
patch /etc/pulse/daemon.conf ./patches/pulseaudio_latency.patch
#Ok so these ones are weird, for some reason these take priority over the regular xfce4 settings in the /skel/ folder, but ONLY on the LiveCD
#so if it exists, replace it with the /skel version
cp /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
chmod 644 /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
cp /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
chmod 644 /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
cp /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
chmod 644 /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
#Ignore xfce4-session.xml, that breaks the livecd if i recall
cp /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
chmod 644 /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
cp /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
chmod 644 /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
#Heh if the LiveCD loads these instead, how about we give it the Setup wallpaper just for this?
patch /etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ./patches/xfsetup_wallpaper.patch

#change default boot screen
update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/winedows/winedows.plymouth 100
#update-alternatives --install /usr/share/plymouth/themes/text.plymouth text.plymouth /usr/share/plymouth/themes/winedows-text/winedows-text.plymouth 100
rm /usr/share/plymouth/themes/default.plymouth
ln -s /usr/share/plymouth/themes/winedows/winedows.plymouth /usr/share/plymouth/themes/default.plymouth
#rm /usr/share/plymouth/themes/text.plymouth
#ln -s /usr/share/plymouth/themes/winedows-text/winedows-text.plymouth /usr/share/plymouth/themes/text.plymouth
rm /etc/alternatives/default.plymouth
ln -s /usr/share/plymouth/themes/winedows/winedows.plymouth /etc/alternatives/default.plymouth
#rm /etc/alternatives/text.plymouth
#ln -s /usr/share/plymouth/themes/winedows-text/winedows-text.plymouth /etc/alternatives/text.plymouth
update-initramfs -u

