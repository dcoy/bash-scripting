#!/bin/bash
# This script intends to show the usage of 'trap' and signals

clear

trap 'echo " - Welp, sorry bro, press Q or q!"' SIGINT SIGTERM SIGTSTP

while [ $"CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]; do
    echo "MAIN MENU"
    echo "========="
    echo "1) Choice One"
    echo "2) Choice Two"
    echo "3) Choice Three"
    echo "Q) Quit/Exit"
    echo ""
    read CHOICE

    clear
done
