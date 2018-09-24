#!/bin/bash

echo $andstr

for file in `ls`
do
    if test -f $file && !([[ $file =~ "arrange" ]])
    then
        dir_name=`echo $file | cut -d . -f 1`
        echo "mkdir $dir_name $andstr mv $file $dir_name"
        mkdir $dir_name && mv $file $dir_name
    fi
done
