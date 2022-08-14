BEGIN { 
	print "Name Rate Hours" 
	print " " 	#for new line
}

{ pay= pay+ $2* $3 }

END{
	print NR " employees"
	print "total amount paid is= ", pay
	print "with average being= ", pay/NR
}