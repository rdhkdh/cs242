BEGIN{
	print "\n*** Inventory Report by Ridhiman Dhindsa, Roll no.210101088 ***\n"
	print "Part_No. Price Qty_on_Hand Reorder_Point Minimum_Order Order_amount"
}

{
	if($3<$4) { order_amt= $4+$5-$3}
	else{ order_amt= "order_amt_not_applicable" }
}
{print $0, "\t", order_amt}


END{
	#print"\torder amount:"
	# for(i=1;i<=NR;i++)
	# {
	# 	printf("%d\t%d\n",i,order_amt)
	# }
	print "\n*** End of report. ***\n"
}