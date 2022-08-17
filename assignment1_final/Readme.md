# Programming Assignment 1
### **Name:** Ridhiman Kaur Dhindsa, **Roll No:** 210101088
   
**Date:** 18 August 2022  
**Description:** This file is a readme text for programming assignment 1.

## Question 1:
**Files used:** assignment1_q1.awk, inventory.txt  
**How to execute:**
1) Open the Linux terminal.
2) Type the command:  
``` awk -f assignment1_q1.awk inventory.txt ```
3) Press Enter.  

**Explanation:**  
First, printed column headings in shorthand: Part_No. (Part Number), Price, Qty_on_Hand (Quantity on Hand), Reorder_Point, Minimum_Order, Order_amount.  
The first 5 columns correspond to the data provided. The 6th column displays order amount if Quantity on Hand < Reorder Point (i.e, $3<$4). Else, 6th column displays 'not applicable'.

## Question 2:
**Files used:** assignment1_q2.sh, employee.txt  
**How to execute:**
1) Open the Linux terminal.
2) Type the command and press Enter:  
``` bash assignment1_q2.sh ```
3) If terminal displays the error: 'Permission denied', then type the command and press Enter:  
``` chmod +x assignment1_q2.sh ```
4) Now repeat step 2.  

**Explanation:**  
First, printed column headings in shorthand: employee_no (Employee Number), dept (Department), pay_rate, exempt, hrs_worked (Hours Worked), base_pay, overtime_pay, total_pay.  
Then, by reading the input text line by line using while loop and read command, calculated Base Pay = Pay Rate * Hours Worked. Using if statement and a regular expression to find lines with 'N' in them, we are able to choose non-exempt employees for Overtime Pay calculation. Overtime Pay= 1.5 * Pay Rate * Hours Worked. Overtime pay= 0 for exempt employees, and for those who worked <=40 hours.  
Used basic calculator ('bc' command) for float arithmetic in bash.
