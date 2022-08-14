#calculating compound interest
BEGIN{
    print "prncpl_amt rate_of_intrst yrs" 
}

{print}
{
    i=1; x=$1;
    while(i<=$3) {
        x= x+(x* $2)
        printf ("%d\t%8.2f\n",i,x) #when using format specifiers, use printf() instead of print
        i=i+1
    }

}

