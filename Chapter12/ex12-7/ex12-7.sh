#!/bin/bash

sum=0
index=0
array=($*)

let n=$#-1

while (( index < $# ))
do
    x=${array[$index]}
    echo "$x \c"
    let sum=sum+x
    if [ $index != $n ]
    then
        echo "+ \c"
    else
        echo "= \c"
    fi
    let index=index+1
done

echo $sum
