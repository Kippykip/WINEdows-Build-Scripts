#midi fixes
rm /usr/share/sounds/sf2/default-GM.sf2
ln -s /usr/share/sounds/sf2/TimGM6mb.sf2 /usr/share/sounds/sf2/default-GM.sf2
chmod 644 /usr/share/sounds/sf2/default-GM.sf2
#change start menu name to WINEdows
cp ./patches/branding_wine_aliased.png /usr/share/themes/Chicago95/gtk-3.0/assets/branding_wine_aliased.png
chmod 644 /usr/share/themes/Chicago95/gtk-3.0/assets/branding_wine_aliased.png
patch /usr/share/themes/Chicago95/gtk-3.0/apps/whiskermenu.css ./patches/whiskername.patch
#default cursor fixes
ln -s /usr/share/icons/Chicago95\ Standard\ Cursors/cursors /usr/share/icons/Chicago95/cursors
cp ./patches/cursor.theme /usr/share/icons/Chicago95/cursor.theme
chmod 644 /usr/share/icons/Chicago95/cursor.theme
rm /etc/alternatives/x-cursor-theme
ln -s /usr/share/icons/Chicago95/cursor.theme /etc/alternatives/x-cursor-theme

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

#Permission fix here
chmod 755 /etc/skel/Desktop/WINEdows\ Forum.desktop

#Patch GDebi .desktop from not showing the password prompt unless terminal = true
patch /usr/share/applications/gdebi.desktop ./patches/gdebi_rootfix.patch

update-icon-caches /usr/share/icons/*
glib-compile-schemas /usr/share/glib-2.0/schemas
fc-cache -f -v