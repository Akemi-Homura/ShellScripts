#!/bin/bash

#
# uno
# Let me kown if xyz is on the system
#
until who | grep "$1" > /dev/null
do
    sleep 30
done
echo -e "\07\07$1 is on the system"
exit 0
