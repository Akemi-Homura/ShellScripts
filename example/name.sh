#!/bin/bash

#
# name
# Read a name from keyboard
# A sample program to use the shell parameter substitutions
#
echo -e "Enter your name: \c"
read name
echo ${name:?"You must Enter your name"}
echo "Thank you. That's all."
exit 0
