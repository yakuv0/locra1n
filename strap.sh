#! /binpack/bin/bash

mount -o rw,union,update /
> /.mount_rw
snappy -f / -r $(snappy -f / -l | tail -n 1) -t orig-fs || exit_on_error "snappy"
cd /var/root/strap
tar --preserve-permissions --overwrite -xvf strap.tar -C /
/bin/tar --lzma -xvf pkgstrap.tar.lzma -C /
source /etc/profile
/usr/libexec/cydia/finish.sh
/usr/libexec/cydia/move.sh
/usr/libexec/cydia/firmware.sh
apt-get clean
dpkg --configure -a
apt reinstall
dpkg --configure -a 
uicache -a

: << 'END'
read -p "upgrade y/n :: " upgrade

case "$upgrade" in
    y)apt full-upgrade;;
    n)exit;;
esac
END
