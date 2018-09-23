#!/bin/zsh

#
# greeetings
# greetings program version 1
# A sample program using the if-then-elif construct
# This program displays greetings according to the time of the day
#

hour=`date +%H`
if [ "$hour" -lt "12" ]
then
    echo "GOOD MORING"
elif [ $hour -lt 18 ]
then
    echo "GOOD AFTERNOON"
else
    echo "GOOD EVENING"
fi
exit
