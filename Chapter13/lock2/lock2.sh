#!/bin/bash

#
# lock2 (lock version 2)
# This program locks keyboard, and you must type the
# specified password to unlock it.
# logic:
#   1- Ask the user to enter a password.
#   2- Lock the keyboard until the correct password is entere.
#
trap "" 2 3
stty -echo
tput clear
tput cup 5 10; echo "ENTER YOUR PASSWORD> \c"
read pword_1
tput clear
tput cup 10 20; echo "THIS SYSTEM IS LOCKED...."
pword_2=
until [ "$pword_1" = "$pword_2" ]
do
    read pword_2
done
stty echo
tput clear
exit 0
