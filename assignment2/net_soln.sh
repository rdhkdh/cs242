#!/bin/bash

#####
# This is a script given to users on a machine when they want to back 
# up their work to a specific backup directory (/home/$USER/work_backup)
# 
# The script requires two parameters - the first is where the log file 
# will be and the second is what directory will be backed up.
#####



if [ -z "$1" ] || [ -z "$2" ]; then
	echo "You have failed to pass a parameter."
	echo "Reminder that all required files will be copied to /home/\$USER/work/work_backup."
	echo "USAGE: ./backup.sh LOGFILE DIRECTORY-TO-BACKUP"
	exit 255;
fi


MYLOG=$1
BACKUP_FROM=$2

function ctrlc {
	rm -rf /home/$USER/work/work_backup
	rm -f $MYLOG
	echo "Received Ctrl+C"
	exit 255
}

trap ctrlc SIGINT

echo "Timestamp before work is done $(date +"%D %T")" >> $MYLOG

echo "Creating backup directory" >> $MYLOG
if ! (mkdir /home/$USER/work/work_backup 2> /dev/null)
then
	echo "Directory already existed." >> $MYLOG
fi

echo "Copying Files" >> $MYLOG
cp -v $BACKUP_FROM/* /home/$USER/work/work_backup/ >> $MYLOG
echo "Finished Copying Files" >> $MYLOG
echo "Timestamp after work is done $(date +"%D %T")" >> $MYLOG