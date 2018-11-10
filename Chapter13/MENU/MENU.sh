#!/bin/bash

#
# MENU
# A sample program to demonstrate the use of the case construct.
#
echo
echo "0: Exit"
echo "1: Show Date and Time"
echo "2: List my HOME directory"
echo "3: Display Calendar"
echo "Enter your choices: \c"
read option
case $option in
    0) echo Good bye;;
    1) date;;
    2) ls $HOME;;
    3) cal;;
    * ) echo "Invalid input. Good bye.";;
esac
echo
exit 0
