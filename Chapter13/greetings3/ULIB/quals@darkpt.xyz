#!/bin/bash

#
# UNIX library
# ULIB: This program is the main driver for the UNIX library application
# program. It shows a brief startup message and then displays the main menu.
# It invokes the appropriate program according to the user selection.
#
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
export BOLD NORMAL
#
# show the title and a brief message before showing the main menu
#
tput clear
tput cup 5 15
echo "${BOLD}Super Duper UNIX Library"
tput cup 12 10
echo "${NORMAL}This is the UNIX library application"
tput cup 14 10; echo "Please enter any key to continue..._\b\c"
read answer
error_flag=0

display_main_menu(){
    tput clear
    tput cup 5 10
    echo "UNIX Library - ${BOLD}MAIN MENU${NORMAL}"
    tput cup 7 20; echo "0: ${BOLD}EXIT${NORMAL}"
    tput cup 9 20; echo "1: ${BOLD}EDIT${NORMAL}"
    tput cup 11 20; echo "2: ${BOLD}REPORTS${NORMAL}"
}

while true
do
    if [ $error_flag -eq 0 ]
    then
        display_main_menu
        error_flag=0
    fi
    tput cup 13 10; echo "Enter your choice>_\b\c"
    read choice
    #
    # case construct for checking the user selection
    #
    case $choice in
        0) tput clear; exit 0;;
        1) sh EDIT.sh;;
        2) sh REPORTS.sh;;
        * ) sh ERROR.sh 20 10
            tput cup 20 1; tput ed
            #  display_main_menu
            error_flag=1;;
    esac
done
exit 0
