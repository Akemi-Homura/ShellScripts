#!/bin/bash

sum=0
index=0
n=$#
array=($@)

until (( index >= n ))
do
    x=${array[$index]}
    echo "$x \c"
    let sum=sum+x
    if (( $index != $# - 1 ))
    then
        echo "+ \c"
    else
        echo "= \c"
    fi
    let index=index+1
done

echo $sum
