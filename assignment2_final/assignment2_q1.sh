#Name: Ridhiman Kaur Dhindsa, Roll No.210101088
#This bash script should be executed in a Linux terminal.
#This is Answer 1 of Programming Assignment 2.

#!/bin/bash

#checking if each parameter is passed or not

if [ -z "$1" ]; 
then
	echo "You have failed to pass argument 1: Source File name."
	exit 255; #process exited with failure
fi

if [ -z "$2" ]; 
then
	echo "You have failed to pass argument2: Destination Directory name."
	exit 255; 
fi

if (($# >= 3));
then
    echo "ERROR: Too many parameters passed."
    exit 255;
fi
#checking if parameters passed, exist or not

if [ -f "$1" ]; 
then
    echo
    echo "VERIFICATION COMPLETE: Source File passed as argument exists." 
else
    echo "ERROR: Source File does not exist."
    exit 255; 
fi

if [ -d "/home/$USER/$2" ]; 
then
    echo "VERIFICATION COMPLETE: Destination Directory passed as argument exists."
    echo 
else
    echo "ERROR: Destination Directory does not exist."
    exit 255; 
fi

#Carrying out backup process once verification is complete:

while read -r filename; do        
    cp -v /home/$USER/$filename /home/$USER/$2/${filename%.*}.bak  #backup_folder -destination directory
    echo
    echo "Created backup for $filename"
    echo
done <"$1" #files_for_backup.txt -list of files for backup
echo "Timestamp after completion: $(date +"%D %T")"
echo "*** End of backup procedure ***"
