# checkra1n no internet no problem
took a look at the checkra1n status recently which revealed issues in installation, upgrading and strapping due to repo's being offline and unmaintained, sharing the script written during my research on mobility in multimedia production (mip) within conflict territories, the script was written to prevent connectivity barriers from jailbreaking.

## requirements
- checkra1n
- ssh
- iproxy

## installation
- jailbreak with checkra1n
- ssh via usb:
  iproxy 4444 44
  
  scp -P4444 strap.sh strap.tar pkgstrap.tar.lzma root@localhost:~
  
  ssh -p4444 root@localhost
  
  chmod +x strap.sh
  
  ./strap.sh
  
the script has a commented block to upgrade packages, as for now the repo is offline-inactive.


