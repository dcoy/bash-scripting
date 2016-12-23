#!/bin/bash
# This script is intended to use conditional statements- if/then/else
# and nested if statements

clear

echo "Enter a number between 1 and 3:"
read VALUE

if [ "$VALUE" -eq "1" ] 2>/dev/null; then
    echo "You entered #1."
elif [ "$VALUE" -eq "2" ] 2>/dev/null; then
    echo "You entered #2."
elif [ "$VALUE" -eq "3" ] 2>/dev/null; then
    echo "You entered #3."
else
    echo "You didn't enter a number between 1 and 3."
fi
