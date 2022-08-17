#Name: Ridhiman Kaur Dhindsa, Roll No.210101088
#This bash script should be executed in a Linux terminal.
#This is Answer 1 of Programming Assignment 1.

#!/bin/bash

echo
echo "*** Payroll register by Ridhiman Dhindsa, Roll No.210101088 ***"
echo
echo -e "employee_no\tdept\tpay_rate\texempt\thrs_worked\tbase_pay\tovertime_pay\ttotal_pay"


while read -r employee_no dept pay_rate exempt hrs_worked; do
    base_pay=`echo "scale=4; $pay_rate*$hrs_worked" | bc`
    
    if [[ $exempt =~ [A-O] ]];
    then
        overtime_pay=`echo "scale=4; 1.5 * $pay_rate * ($hrs_worked-40)" | bc`
    else
        overtime_pay=0
    fi

    total_pay=`echo "scale=4; $overtime_pay+$base_pay" | bc`

    echo -e "$employee_no\t\t$dept\t$pay_rate\t\t$exempt\t$hrs_worked\t\t$base_pay\t\t$overtime_pay\t\t$total_pay"
done <"employee.txt"

echo
echo "*** End of report ***"
echo
