BEGIN{
    print "\n*** Payroll Register by Ridhiman Dhindsa, Roll no.210101088 ***\n"
	print "employee_no dept pay_rate exempt hrs_worked base_pay overtime_pay"
}

{
    base_pay= $3*$5
    if(/N/) { overtime_pay=1.5*($5-40) }
    else{overtime_pay= "not_applicable"}
}
{print $0,"\t\t\t",base_pay,"\t\t",overtime_pay}

END{
    print "\n*** End of report. ***\n"
}