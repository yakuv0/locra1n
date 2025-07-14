#! /binpack/bin/bash
mount -o rw,union,update /
> /.mount_rw
snappy -f / -r $(snappy -f / -l | tail -n 1) -t orig-fs || exit_on_error "snappy"
cd /var/root/modinstl
tar --preserve-permissions --overwrite -xvf strap.tar -C /
/bin/tar --lzma -xvf pkgstrap.tar.lzma -C /
source /etc/profile
/usr/libexec/cydia/finish.sh
/usr/libexec/cydia/move.sh
/usr/libexec/cydia/firmware.sh
#/usr/libexec/firmware.sh
apt-get clean
#apt-get update 
dpkg --configure -a
apt reinstall
#apt-get upgrade -y
#apt full-upgrade -y
dpkg --configure -a 
dpkg -i /var/root/modinstl/gawk_4.2.1-1_iphoneos-arm.deb
uicache -a

read -p "upgrade y/n :: " upgrade

case "$upgrade" in
    y)apt full-upgrade;;
    n)exit;;
esac
