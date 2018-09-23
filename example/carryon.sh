#!/bin/bash

#
# carryon
# A sample program to show the while-do-done construct
#
carryon=Y
while [ $carryon = Y ]
do
    echo -e "I do the job as long as you type Y:_\b\c"
    read carryon
done
echo "Job Done!"
exit 0
