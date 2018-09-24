#!/bin/bash

sum=0
index=1

for x in $@
do
    echo "$x \c"
    let sum=sum+x
    if [ $index != $# ]
    then
        echo "+ \c"
    else
        echo "= \c"
    fi
    let index=index+1
done

echo $sum
