#Theme
cp -a ./Chicago95/Theme/. /usr/share/themes/
cp -a ./Chicago95/Cursors/. /usr/share/icons/
cp -a ./Chicago95/Icons/. /usr/share/icons/
find /usr/share/themes/Chicago95/ -type d -exec chmod 755 {} +
find /usr/share/themes/Chicago95/ -type f -exec chmod 644 {} +
find /usr/share/icons/ -type d -exec chmod 755 {} +
find /usr/share/icons/ -type f -exec chmod 644 {} +
#sounds
cp -a ./Chicago95/sounds/Chicago95/ /usr/share/sounds/
find /usr/share/sounds/Chicago95/ -type d -exec chmod 755 {} +
find /usr/share/sounds/Chicago95/ -type f -exec chmod 644 {} +
#terminal
cp ./data/usr/share/xfce4/terminal/colorschemes/Chicago95.theme /usr/share/xfce4/terminal/colorschemes/Chicago95.theme
chmod 644 /usr/share/xfce4/terminal/colorschemes/Chicago95.theme
#boot screen
cp -a ./data/usr/share/plymouth/themes/. /usr/share/plymouth/themes/
find /usr/share/plymouth/themes/ -type d -exec chmod 755 {} +
find /usr/share/plymouth/themes/ -type f -exec chmod 644 {} +
#Skel directory
cp -a ./data/etc/skel/. /etc/skel/
find /etc/skel/ -type d -exec chmod 755 {} +
find /etc/skel/ -type f -exec chmod 644 {} +
#Some extras
mkdir /usr/share/games
mkdir /usr/share/games/doom
cp ./data/usr/share/games/doom/doom1.wad /usr/share/games/doom/doom1.wad
find /usr/share/games/doom/ -type d -exec chmod 755 {} +
find /usr/share/games/doom/ -type f -exec chmod 644 {} +
cp ./data/usr/share/icons/3dpinball.png /usr/share/icons/3dpinball.png
chmod 644 /usr/share/icons/3dpinball.png

#launchers
cp ./data/usr/share/applications/clonezilla.desktop /usr/share/applications/clonezilla.desktop
cp ./data/usr/share/applications/xcalibrate.desktop /usr/share/applications/xcalibrate.desktop
cp ./data/usr/share/applications/winecfg.desktop /usr/share/applications/winecfg.desktop
cp ./data/usr/share/applications/3dpinball.desktop /usr/share/applications/3dpinball.desktop
chmod 755 /usr/share/applications/clonezilla.desktop
chmod 755 /usr/share/applications/xcalibrate.desktop
chmod 755 /usr/share/applications/winecfg.desktop
chmod 755 /usr/share/applications/3dpinball.desktop
cp ./data/usr/bin/xcalibrate /usr/bin/xcalibrate
chmod 755 /usr/bin/xcalibrate
cp ./patches/30_winedows-default-settings.gschema.override /usr/share/glib-2.0/schemas/30_winedows-default-settings.gschema.override
chmod 644 /usr/share/glib-2.0/schemas/30_winedows-default-settings.gschema.override
#Lightdm
cp ./data/etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
chmod 644 /etc/lightdm/lightdm-gtk-greeter.conf
#fonts
cp ./data/etc/fonts/conf.d/99-ms-sans-serif.conf /etc/fonts/conf.d/99-ms-sans-serif.conf
chmod 644 /etc/fonts/conf.d/99-ms-sans-serif.conf
cp ./data/etc/fonts/conf.d/99-ms-sans-serif-bold.conf /etc/fonts/conf.d/99-ms-sans-serif-bold.conf
chmod 644 /etc/fonts/conf.d/99-ms-sans-serif-bold.conf
cp -a ./data/usr/share/fonts/truetype/. /usr/share/fonts/truetype/
find /usr/share/fonts/truetype/ms_sans_serif/ -type d -exec chmod 755 {} +
find /usr/share/fonts/truetype/ms_sans_serif/ -type f -exec chmod 644 {} +
find /usr/share/fonts/truetype/vga_font/ -type d -exec chmod 755 {} +
find /usr/share/fonts/truetype/vga_font/ -type f -exec chmod 644 {} +
