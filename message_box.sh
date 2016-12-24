#!/bin/bash
# This script is intended to show a message box for confirmation in bash scripts

# Global variable/default value declaration
MSGBOX=${MSGBOX=dialog}
TITLE="Default"
MESSAGE="Some message"
XCOORD=10
YCOORD=20

# ============================ #
# Function declaration - start #
# ============================ #

# Dispaly the message box with message
funcDisplayMessageBox() {
    $MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
}

# ========================== #
# Function declaration - end #
# ========================== #

# Script - start
if [ "$1" == "shutdown" ]; then
    funcDisplayMessageBox "WARNING!" "Please press OK when you are ready to shut down the system" "10" "20"
    echo "Shutting down NOW!"
else
    funcDisplayMessageBox "Boring..." "you are not asking for anything fun..." "10" "20"
    echo "Not doing anything, back to regular scripting..."
fi
# Script - end
