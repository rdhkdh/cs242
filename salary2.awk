#if condition, concatenation of strings, use of $0

BEGIN{
	print"Name hourly wage hours worked\n"
}

{print}
$2>maxrate {maxrate= $2; maxemp=$1}  		#no variable declaration required 
{ emplist= emplist $1 " "} 				#concatenation
{last_record =$0} 				#assigning the last record (after loop) to variable 'last'


END{
	print " "
	print "highest paid employee is: " maxemp ", with an hourly wage of= " maxrate
	print emplist
	print "the last employee is: " last_record
}