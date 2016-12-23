#!/bin/bash
# This script is intended to show the usage of a case statement

clear

echo "  MAIN MENU"
echo "==============="
echo "1) Choice One"
echo "2) Choice Two"
echo "3) Choice Three"
echo ""
echo "Enter choice:"
read MENUCHOICE

case $MENUCHOICE in
    1)
        echo "You chose option #1";;
    2)
        echo "You chose option #2";;
    3)
        echo "You chose option #3";;
    *)
        echo "You chose poorly";;
esac

