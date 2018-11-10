#!/bin/bash

#
# lock3 (lock version 3)
# This program locks keyboard, and you must type the
# specified password to unlock it.
# logic:
#   1- Ask the user to enter a password.
#   2- Lock the keyboard until the correct password is entered.
#
trap "" 2 3 4
stty -echo
if [ $# -gt 0 ]
then
    MESG="$@"
else
    MESG="THIS SYSTEM IS LOCKED"
fi
tput clear
tput cup 5 10; echo "ENTER YOUR PASSWORD> \c"
read pword_1
tput clear
tput cup 10 20; echo "$MESG"
pword_2=
until [ "$pword_1" = "$pword_2" ]
do
    read pword_2
done
stty echo
tput clear
exit 0
