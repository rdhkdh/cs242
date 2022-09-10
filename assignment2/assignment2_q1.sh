#Name: Ridhiman Kaur Dhindsa, Roll No.210101088
#This bash script should be executed in a Linux terminal.
#This is Answer 1 of Programming Assignment 2.

#!/bin/bash

while read -r filename destn_dir; do        #destination directory
    cp -v /home/$USER/$filename /home/$USER/backup_folder/
done <"backup_files.txt"