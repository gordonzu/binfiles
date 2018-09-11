#!/bin/bash

rsync -aP --exclude-from=/var/tmp/ignorelist /home/gordonzu/ /media/gordonzu/TI106139W0E/Users/back/
echo 'cron rsync job has run' >> /home/gordonzu/rsync_record 
date >> /home/gordonzu/rsync_record


