#!/bin/bash
# This script is intended to show the usage of a while-loop

echo "Enter the number of times to display the 'hello world' message:"
read DISPLAYNUMBER

COUNT=1

while [ $COUNT -le $DISPLAYNUMBER ]; do
    echo "Hello world - $COUNT"
    COUNT="$(expr $COUNT + 1)"
done
