#!/bin/bash

#
# check_syntax
# A sample program to show the output of shell -n option
#
echo "$0: checking the program syntax"
if [ $# -gt 0 ]
then
    echo "Number of the command line arguments: $#"
else
    echo "No command line arguments"
fi
echo "Byte!"
exit 0
