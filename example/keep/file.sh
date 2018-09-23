#!/bin/bash

echo -e "Input file name: \c"
read FILE
if test -r "$FILE"
then
    echo "READABLE"
elif test -w "$FILE"
then
    echo "WRITABLE"
else
    echo "Read and Write Access Denied"
fi
