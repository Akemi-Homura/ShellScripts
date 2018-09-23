#!/bin/bash

# largest
# A sample program using the test command
# This program accepts three numbers and shows the largest of them
#
echo -e "Enter three numbers and I will show you the largest of them>> \c"
read num1 num2 num3
if [ "$num1" -gt "$num2" -a "$num1" -gt "$num3" ]
then
    ans=$num1
elif [ "$num2" -gt "$num1" -a "$num2" -gt "$num3" ]
then
    ans=$num2
else
    ans=$num3
fi
echo "The largest number is : $ans"
echo "Done! :-)"
exit 0
