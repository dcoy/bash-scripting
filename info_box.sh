#!/bin/bash
# This script is intended to show the usage of the info box with ncurses

# Global variable/default value declaration
INFOBOX=${INFOBOX=dialog}
TITLE="Default"
MESSAGE="Something to say"
XCOORD=10
YCOORD=20

# Function declarations - start

# Display the info box and message
funcDisplayInfoBox() {
    $INFOBOX -- title "$1" --infobox "$2" "$3" "$4"
    sleep "$5"
}

# Function declarations - stop

# Script start

if [ "$1" == "shutdown" ]; then
    funcDisplayInfoBox "WARNING!" "We are SHUTTING DOWN the system..." "11" "21" "5"
    echo "Shutting down!"
else
    funcDisplayInfoBox "Information..." "You are not doing anything fun..." "11" "21" "5"
    echo "Not doing anything..."
fi

# Script end
