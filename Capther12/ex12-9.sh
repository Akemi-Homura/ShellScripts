#!/bin/bash

# largest
# A sample program using the test command
# This program accepts three numbers and shows the largest of them
#
isdigit(){
    if [[ $1 = *[!0-9]* ]]
    then
        echo $1 is not a number
        exit 0
    fi
}

ans=$1

for x in $@
do
    isdigit $x
    if (( ans < x ))
    then
        ans=$x
    fi
done

echo "The largest number is : $ans"
echo "Done! :-)"
exit 0
