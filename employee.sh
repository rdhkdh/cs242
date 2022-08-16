#!/bin/bash

echo "employee_no dept pay_rate exempt hrs_worked base_pay overtime_pay"

file1="employee.txt"

# while read -r line; do
#     echo -e "$line"
# done <$file1

while read -r employee_no dept pay_rate exempt hrs_worked; do
    (( base_pay= $pay_rate * $hrs_worked ))
    (( total_pay= total_pay + $base_pay ))

    if [exempt==N && hrs_worked>=40];
    then
        (( overtime_pay = 1.5 * (hrs_worked-40) ))
    else
        overtime_pay= "not applicable"
    fi

    echo "$employee_no $dept $pay_rate $exempt $hrs_worked $base_pay $overtime_pay"
done <"employee.txt"

echo
echo "total pay is= $total_pay"
echo
echo "End of report"
