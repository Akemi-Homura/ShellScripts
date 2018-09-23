#!/bin/bash

# svi2
# save and invoke vi
# A sample programe to show the usage of the shell variables
# Version 2: adding the if-then statement
#
DIR=$PWD/keep
if [ $#=1 ]
then
    cp $1 $DIR
fi
vim $1
exit 0
