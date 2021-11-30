#xubuntu wallpapers
apt -y remove xubuntu-artwork xubuntu-community-wallpapers xubuntu-community-wallpapers-bionic xubuntu-wallpapers
rm -rfv /usr/share/xfce4/backdrops/{*,.*}
mkdir /usr/share/xfce4/backdrops/
cp -a ./data/usr/share/xfce4/backdrops/. /usr/share/xfce4/backdrops/
find /usr/share/xfce4/backdrops/ -type d -exec chmod 755 {} +
find /usr/share/xfce4/backdrops/ -type f -exec chmod 644 {} +
#ubiquity slideshow
rm -rfv /usr/share/ubiquity-slideshow/{*,.*}
mkdir /usr/share/ubiquity-slideshow/
cp -a ./data/usr/share/ubiquity-slideshow/. /usr/share/ubiquity-slideshow/
find /usr/share/ubiquity-slideshow/ -type d -exec chmod 755 {} +
find /usr/share/ubiquity-slideshow/ -type f -exec chmod 644 {} +
cp ./data/usr/bin/3dpinball_x64 /usr/bin/3dpinball
chmod 755 /usr/bin/3dpinball