#Name: Ridhiman Kaur Dhindsa, Roll No.210101088
#This perl script should be executed in a Linux terminal.
#This is Answer 2 of Programming Assignment 2.


#!/usr/bin/perl

print "*** Randomized String Generator by Ridhiman Kaur Dhindsa, Roll.No. 210101088 ***\n";
print "\n";

open(my $data, '<', $ARGV[0]) or die;   # opening text file entered as argument 0, then reading line by line.
   
while (my $line = <$data>) 
{
    chomp $line;
    my @characters = split "", $line;  #splitting each string into an array of characters

    my $random_string;
    my $prev_char="?";
    while (length($random_string) < $ARGV[2])   # argument 2 represents maximum length of string allowed.
	{
        my $rand_count= int(rand($ARGV[1]+1));      # argument 1 represents count, entered in the command line.
        my $y = $rand_count+length($random_string);
        if($y > $ARGV[2]) { $rand_count = $ARGV[2]-length($random_string); }

        
        my $rand_char= $characters[rand @characters];   # generating random character from array
        while($rand_char eq $prev_char) 
        { 
            $rand_char= $characters[rand @characters]; 
            $prev_char= $rand_char; 
        }     # ensuring that each random character produced is different from previous.

		$random_string.=( $rand_char x $rand_count ); #concatenating the character generated, a random number of times.

        
	}
    print "$random_string\n";

}

close($data);

print "\n";
print "*** End of Task ***\n";
