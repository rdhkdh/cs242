#Name: Ridhiman Kaur Dhindsa, Roll No.210101088
#This awk script should be executed in a Linux terminal.
#This is Answer 2 of Programming Assignment 1.

BEGIN{
	print "\n*** Inventory Report by Ridhiman Dhindsa, Roll no.210101088 ***\n"
	print "Part_No.\tPrice\tQty_on_Hand\tReorder_Point\tMinimum_Order\tOrder_amount"
}

{
	if($3<$4) { order_amt= $4+$5-$3}
	else{ order_amt= "not applicable" }
}
{print $1,"\t\t",$2,"\t",$3,"\t\t",$4,"\t\t",$5,"\t\t", order_amt}


END{
	print "\n*** End of report. ***\n"
}