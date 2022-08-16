#!/bin/bash

#basic bash script

echo "Hello world!"
echo -e "removing\tbackslash characters" #this is how we use tab etc. here

if [ 5 -gt 4 ];
then
    echo "5 is greater than 4"
    echo
else
    echo "4 is greater than 5"
    echo
fi
#remember to add the command 'chmod +x filename.sh' to provide permission