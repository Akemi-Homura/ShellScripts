#!/bin/bash

#
# slp
# super line printer
# A smaple program to show the for_in_done construct
#

echo -e "Enter the name of the file(s)>> \c"
read filename
for FILE in $filename
do
    echo -e "\nFile name: $FILE\nPrinted:`date`" >> pfile
done
echo "\n\07Job done"
exit 0
