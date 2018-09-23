#!/bin/bash

DATE1=`date`
sleep 1
DATE2=`date`
if [ "$DATE1" = "$DATE2" ]
then
    echo "STOP!The computer clock is dead!"
else
    echo "Everything is fine."
fi
