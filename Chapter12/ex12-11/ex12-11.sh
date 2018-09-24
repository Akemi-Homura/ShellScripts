#!/bin/bash

#
# file_checker
# input filename and output file status,such as existence readable
#

if [[ $# = 1 ]]
then
    printf '%-10s: %s\n' filename $1 
    printf '%-10s: ' existence

    if test -e $1
    then
        echo T
    else
        echo F
    fi

    printf '%-10s: ' readable
    if test -r $1
    then
        echo T
    else
        echo F
    fi

    printf '%-10s: ' writable
    if test -w $1
    then
        echo T
    else
        echo F
    fi
else
    echo "You must specify a filename.Try again."
fi
