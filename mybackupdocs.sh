now=`date +%m-%d-%Y`
yesterday=`date --date='yesterday' +%m-%d-%Y`

tar cvfj etc_$now.tar.bz2 /etc
tar cvfj documents_$now.tar.bz2 /home/xulu/Documents

mv *$now.tar.bz2 /home/xulu/backups/.
rm /home/xulu/backups/*$yesterday*


