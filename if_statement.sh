#!/bin/bash
# This script is intended to show the usage of the 'if'
# conditional statement

echo "================"
echo "Guess the number"
echo "================"
echo ""
echo "Enter a number between 1 and 5: "
read GUESS

if [ $GUESS -eq 3 ]
then
    echo "You guessed the correct number!"
fi

if [ $GUESS -eq 4 ]
then
    echo "You guessed the correct number!"
fi

