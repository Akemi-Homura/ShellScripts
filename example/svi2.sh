#!/bin/bash

# svi2
# save and invoke vi
# A sample programe to show the usage of the shell variables
# Version 2: adding the if-then statement
#
DIR=$PWD/keep
if [ $# = "1" ]
then
    echo invoke cp
    cp $1 $DIR
    vim $1
else
    echo "You must specify a file name. Try again."
fi
exit 0
