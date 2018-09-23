#!/bin/bash

#
# counter1
# Counter: Counts from 1-9 using while loop
#
count=1
while [ $count -lt 10 ]
do
    echo $count
    count=`expr $count + 1`
done
echo "End :-)"
exit 0
