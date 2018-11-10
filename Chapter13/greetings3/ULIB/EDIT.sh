#!/bin/bash

#
# UNIX library
# EDIT: This program is the main driver for the EDIT program
#       It shows the EDIT menu and invokes the appropriate program
#       accroding to the user selection.
#
error_flag=0

display_edit_menu(){
    tput clear; tput cup 5 10
    echo "UNIX Livrary - ${BOLD}EDIT MENU${NORMAL}"
    tput cup 7 20
    echo "0: ${BOLD}RETURN${NORMAL} To the Main Menu"
    tput cup 9 20; echo "1: ${BOLD}ADD${NORMAL}"
    tput cup 11 20; echo "2: ${BOLD}UPDATE STATUS${NORMAL}"
    tput cup 13 20; echo "3: ${BOLD}DISPLAY${NORMAL}"
    tput cup 15 20; echo "4: ${BOLD}DELETE${NORMAL}"
}

while true
do
    if [ $error_flag -eq 0 ]
    then
        display_edit_menu;
    fi
    error_flag=0
    tput cup 17 10; echo "Enter your choice>_\b\c"
    read choice
    #
    # case construct for checking user selectoin.
    #
    case $choice in
        0) exit 0;;
        1) sh ADD.sh;;
        2) sh UPDATE.sh;;
        3) sh DISPLAY.sh;;
        4) sh DELETE.sh;;
        * ) sh ERROR.sh 20 10
            display_edit_menu
            error_flag=1;;
    esac
done
exit 0
