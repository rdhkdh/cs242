#arrays, printing in reverse order

BEGIN{
    print "printing in reverse order:\n"
    print"Name rate hours_worked"
}

{
    arr[NR] = $0 #assigns each record to an element of the array 'ar'
}

END{
    for(i=NR;i>=1;i--)
    {print arr[i]}
}