now=`date +%m-%d-%Y`
yesterday=`date --date='yesterday' +%m-%d-%Y`

tar cvfj bin_$now.tar.bz2 /home/xulu/bin
tar cvfj docs_$now.tar.bz2 /home/xulu/docs
tar cvfj chromium_$now.tar.bz2 /home/xulu/.config/chromium/Default/Bookmarks
tar cvfj dotvim_$now.tar.bz2 /home/xulu/.vim
tar cvfj dotvimfiles_$now.tar.bz2 /home/xulu/.*vimrc
tar cvfj dotbashfiles_$now.tar.bz2 /home/xulu/.bash*

mv *.tar.bz2 /home/xulu/backups/.
rm /home/xulu/backups/*$yesterday*


