# checkra1n no internet no issue
locra1n a script with a configured strap for offline installation of the checkra1n jailbreak.

It was created during research on mobility within conflict territories (mip-mobility in production) to assist in the initiation of artistic and cultural projects.


## requirements
- checkra1n
- ssh
- iproxy

## download
cloning repo via git results in empty tar, download instead:
https://github.com/yakuv0/locra1n/archive/refs/heads/main.zip

## installation
- jailbreak with checkra1n
- ssh via usb:

  iproxy 4444 44
  
  scp -P4444 strap.sh strap.tar pkgstrap.tar.lzma root@localhost:~
  
  ssh -p4444 root@localhost
  
  chmod +x strap.sh
  
  ./strap.sh
  
the script has a commented block to upgrade packages, as for now the repo is offline-inactive.


