touch initrd-new.lz
cd initrd-ex/early
find . -print0 | cpio --null --create --format=newc > ~/Desktop/cdrom_bootscreen/initrd-new.lz
cd ..
cd early2
find kernel -print0 | cpio --null --create --format=newc >> ~/Desktop/cdrom_bootscreen/initrd-new.lz
cd ..
cd main
find . | cpio --create --format=newc | xz --format=lzma >> ~/Desktop/cdrom_bootscreen/initrd-new.lz