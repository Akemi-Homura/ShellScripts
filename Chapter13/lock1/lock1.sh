#!/bin/bash

#
# lock1 (lock version 1)
# This program locks keyboard, and you must type the
# specified password to unlock it.
# logic:
#       1- Ask the user to enter a password
#       2- Lock the keyboard until the correct password is entered.
#
clear
echo "\n\nENTER YOUR PASSWORD"
read pword_1
clear
echo "\n\nTHIS SYSTEM IS LOCKED..."
pword_2=
until [ "$pword_1" = "$pword_2" ]
do
    read pword_2
done
exit 0
