#!/bin/bash

#
# check_test
# A sample program using the test command
#
echo "Are you OK?"
echo -e "Input Y for yes and N for no: \c"
read answer
if test "$answer" = Y
then
    echo "Glad to hear that!"
else
    echo "Go home!"
fi
exit 0
