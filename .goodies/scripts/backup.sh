#!/bin/bash

backup_location=$1

if [ -z $backup_location ]
then
	echo "you need to specify the location to place the backup in!"
	exit 1
fi

date=$(date '+%d-%m-%Y')
last_char="${backup_location: -1}"
if [ $last_char = '/' ]
then
	backup_location="${backup_location:0: -1}"
fi
backup_location="${backup_location}/${date}"

echo "$backup_location"

sudo rsync -aAXHv --exclude='/dev/*' --exclude='/proc/*' --exclude='/sys/*' --exclude='/tmp/*' --exclude='/run/*' --exclude='/mnt/*' --exclude='/media/*' --exclude='/lost+found/*' / "$backup_location"

