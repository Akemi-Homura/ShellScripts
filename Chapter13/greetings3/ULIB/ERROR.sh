#!/bin/bash

#
# ERROR: This program displays error message and waits for user
#     input to continus.It displays the message at hte specified
#     row and column.
#
tput cup $1 $2
echo "Wrong Input. Try again."
echo "Press any key to continue...>_\b\c"
read answer
exit 0
