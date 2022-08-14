#validation check such as for division by 0. Done using if-else.

BEGIN{
	print "name rate hours_worked"
}

{print}
$2>6.00 {n=n+1}

END{
	print " "
	if(n>0) { print n " employees have rate greater than 6.00\n" }
	else{ print "no employee with rate greater than 6.00\n" }
}
