# Programming Assignment 2
### **Name:** Ridhiman Kaur Dhindsa, **Roll No.** 210101088

**Date:** 13 September 2022  
**Description:** This file is a readme text for programming assignment 2.

## Question 1:
**Files used:** assignment2_q1.sh, files_for_backup.txt, backup_folder  

**How to execute:**  
This script takes 2 arguments -  
Argument 1: Source File name (.txt), which contains the list of filenames to be backed up.  
Argument 2: Destination Directory, the folder in which backed up files wil be stored.  
**Steps:**
1) Create a destination directory: 'backup_folder' in your Home directory.
2) Transfer the sample files to be backed up, to Home directory. 
3) Open the Linux terminal in assignment 2 folder.
4) Type the command and press Enter:   
``` bash assignment2_q1.sh files_for_backup.txt backup_folder```
5) If terminal displays the error: 'Permission denied', then type the command and press Enter:  
``` chmod +x assignment2_q1.sh ```
6) Now repeat step 4. 

NOTE: *The names 'files_for_backup.txt' and 'backup_folder' are just given as examples. The user can keep any name for the Source File and Destination Directory. And backup any type of file, by creating an appropriate source file.*

**Explanation:**  
First we check whether 2 parameters are passed or not. If any parameter is missing, or more than 2 parameters are passed, error is displayed. If exactly 2 arguments are passed, we check whether they exist, and proceed. THe 'cp' command is used to copy the files in the list, to the destination directory. '-v' stands for verbose option, which prints to STDOUT what task is being carried out.

## Question 2:
**Files used:** assignment2_q2.pl, string_list.txt  

**How to execute:**  
This script takes 3 arguments -  
Argument 1: Source File name (.txt), which contains the list of characters which are allowed to be used.  
Argument 2: Count value, which is the maximum length of a substring containing the same character.   
Argument 3: Length value, which is the maximum length of the random string generated.  
**Steps:**   
1) Open the Linux terminal in assignment 2 folder.
2) Type the command and press Enter:   
``` perl assignment2_q2.pl string_list.txt 4 15```
<!-- 3) If terminal displays the error: 'Permission denied', then type the command and press Enter:  
``` chmod +x assignment2_q1.sh ```
4) Now repeat step 4.  -->

NOTE: *The file 'string_list.txt' is just given as a sample. The user can modify the Source File and values of Count and Length to obtain desired results.*

**Explanation:**  
In the code, ARGV[0] represents filename, ARGV[1] represents Count, ARGV[2] represents Length. First, we read the text file line by line. Each line represents a different test case, containing a list of allowed characters. We split this string into an array of characters. We use rand() function to generate a random float number which is converted to integer by int(). In the rand() function the range supplied is till Count+1 as the last number is excluded from range. Now, we check that by concatenating the random character a random number of times (< Count), the total length should not exceed 'Length'.  
After this, we check that the random character generated has to be different from the previous one. Otherwise, the 'Count' condition won't be satisfied. Finally, we concatenate the character generated, a random number of times (< Count).