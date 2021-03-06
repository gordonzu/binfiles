#!/bin/bash

now=`date +%m-%d-%Y`
yesterday=`date --date='yesterday' +%m-%d-%Y`

#tar cvfj apps_$now.tar.bz3 /media/xulu/Data/backup/ubuntu/apps
#tar cvfj docs_$now.tar.bz2 /media/xulu/Data/backup/ubuntu/docs
#tar cvfj dotrvmfiles_$now.tar.bz2 /home/xulu/.rvm
tar cvfj bin_$now.tar.bz2 /home/xulu/bin
tar cvfj apps_$now.tar.bz2 /home/xulu/apps
tar cvfj docs_$now.tar.bz2 /home/xulu/docs
tar cvfj chromium_$now.tar.bz2 /home/xulu/.config/chromium/Default/Bookmarks
tar cvfj dotvim_$now.tar.bz2 /home/xulu/.vim
tar cvfj dotvimfiles_$now.tar.bz2 /home/xulu/.*vimrc
tar cvfj dotbashfiles_$now.tar.bz2 /home/xulu/.bash*
tar cvfj dotsourcesdfiles_$now.tar.bz2 /etc/apt/sources.list.d

dpkg --get-selections > /media/xulu/Data/Dropbox/package.list
cp /etc/apt/sources.list /media/xulu/Data/Dropbox/sources.list
apt-key exportall > /media/xulu/Data/Dropbox/repo.keys
mv *.tar.bz2 /media/xulu/Data/Dropbox/.

#rsync -ravz --progress --exclude 'Dropbox' /home/xulu/ /media/gordonz/Data/backup
#tar cvfj dothomefiles_$now.tar.bz2 --exclude='*.bz2' --exclude='.local/share/Trash' --exclude='backups' --exclude='.rvm' --exclude='Dropbox' --exclude='.cache' --exclude='j' --exclude='.dropbox*' /home/xulu

#rm -rf /home/xulu/backups/*.bz2
##  Reinstall now


