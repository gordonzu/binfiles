#!/bin/bash

unset PATH	

ID=/usr/bin/id;
ECHO=/bin/echo;

MOUNT=/bin/mount;
RM=/bin/rm;
MV=/bin/mv;
CP=/bin/cp;
TOUCH=/bin/touch;

RSYNC=/usr/bin/rsync;


MOUNT_DEVICE=/dev/sdb1;
SNAPSHOT_RW=/media/gordonzu/DATA/snapshot;
MEGA=/home/gordonzu/MEGA/snapshot;
EXCLUDES=/usr/local/etc/backup_exclude;


if (( `$ID -u` != 0 )); then { $ECHO "Sorry, must be root.  Exiting..."; exit; } fi

$RSYNC								\
	-av --delete --delete-excluded				\
	--exclude-from="$EXCLUDES"				\
	$SNAPSHOT_RW/home/hourly.0/home/gordonzu/src/scala/play/products $MEGA ;


