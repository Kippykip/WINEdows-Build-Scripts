#ubiquity slideshow
rm -rfv /usr/share/ubiquity-slideshow/{*,.*}
mkdir /usr/share/ubiquity-slideshow/
cp -a ./data/usr/share/ubiquity-slideshow/. /usr/share/ubiquity-slideshow/
find /usr/share/ubiquity-slideshow/ -type d -exec chmod 755 {} +
find /usr/share/ubiquity-slideshow/ -type f -exec chmod 644 {} +
#pinball
cp ./data/usr/bin/3dpinball_x64 /usr/bin/3dpinball
chmod 755 /usr/bin/3dpinball
#winecfg launcher
#cp ./data/usr/share/applications/winecfg.desktop /usr/share/applications/winecfg.desktop
#chmod 755 /usr/share/applications/winecfg.desktop