#!/bin/bash
# This script intends to show how to build a menu system in bash scripts

# Global variable/default value declaration
MENUBOX=${MENUBOX=dialog}


# ============================= #
# Function declaration -- start #
# ============================= #

# Function to display a simple menu
funcDisplayMenuBox() {
    $MENUBOX --title "[ M A I N  M E N U ]" --menu "Use UP/DOWN arrows to move and select or the number of your choice and ENTER/RETURN" 15 45 4 1 "Display 'Hello world'" 2 "Display 'Goodbye world'" 3 "Display 'Nothing'" X "Exit" 2>choice.txt
}

# =========================== #
# Function declaration -- end #
# =========================== #

# Script start
funcDisplayMenuBox

case "$(cat choice.txt)" in
    1) echo "Hello world!";;
    2) echo "Goodbye world!";;
    3) echo "Nothing";;
    X) echo "Exit";;
esac

# Script end
