#!/bin/bash

#
# svi4
# save and invoke vi
# A sample program to use the test command and file test operators
# Version 4: This version checks for the existence of the file
#
DIR=$PWD/keep
if test $# = 1
then
    if test -f $!
    then
        cp $1 $DIR
        vim $1
    else
        echo "File not Found.Try again."
    fi
else
    echo "You must specify a filename.Try again."
fi
exit 0
