#!/usr/bin/perl

use warnings;
use strict;

my $str = "hellohello";
my @split_str = split(//,$str);

for(my $i=0; $i<= $#split_str; ++$i)
{
    print "$split_str[$i] ";
}

print "\n";

foreach my $x (@split_str)
{
    print "$x ";
}