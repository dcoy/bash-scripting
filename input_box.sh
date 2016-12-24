#!/bin/bash
# This script intends to show the usage of the input box in bash scripts

# Global variable/default value declaration
INPUTBOX=${INPUTBOX=dialog}
TITLE="Defualt"
MESSAGE="Something to display"
XCOORD=10
YCOORD=20

# ============================= #
# Function declaration -- start #
# ============================= #

# Display input box
funcDisplayInputBox() {
    $INPUTBOX --title "$1" --inputbox "$2" "$3" "$4" 2>tmpfile.txt
}

# =========================== #
# Function declaration -- end #
# =========================== #

# Script start
funcDisplayInputBox "Display filename" "Which file in the current directory do you want to display?" "10" "20"

if [ "$(cat tmpfile.txt)" != "" ]; then
    echo "$(cat tmpfile.txt)"
else
    echo "Nothing to do."
fi

# Script end
