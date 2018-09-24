#!/bin/bash

# largest
# A sample program using the test command
# This program accepts three numbers and shows the largest of them
#
echo "Enter three numbers and I will show you the largest of them>> \c"

isdigit(){
    if [[ $1 = *[!0-9]* ]]
    then
        echo $1 is not a number
        exit 0
    fi
}

read num1 num2 num3

isdigit $num1
isdigit $num2
isdigit $num3

if [ "$num1" -lt "$num2" -a "$num1" -lt "$num3" ]
then
    ans=$num1
elif [ "$num2" -lt "$num1" -a "$num2" -lt "$num3" ]
then
    ans=$num2
else
    ans=$num3
fi
echo "The largest number is : $ans"
echo "Done! :-)"
exit 0
