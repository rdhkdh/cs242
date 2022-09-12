#########################
# Generate Randon String
#########################
sub generate_random_string{
     my $length_of_randomstring = shift;
     my @chars=('a'..'z','A'..'Z','0'..'9');
     my $random_string;
 
     for(my $i = 0; $i < $length_of_randomstring; $i++){
     
       $random_string .= $chars[int(rand(58))];
  }
 
     return $random_string;
}