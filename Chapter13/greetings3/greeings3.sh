#!/bin/bash

#
# greetings3
# greeting program version 3
# This version is using the case construct to check the hour of
# the day and to display the appropriate greetings.
#
bell=`tput bel`
echo $bell $bell
hour=`date +%H`
case $hour in
    0?|1[0-1]) echo "Good Morning";;
    1[2-7]) echo "Good Afternoon";;
    * ) echo "Good Evening";;
esac
echo
exit 0
