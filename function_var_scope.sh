#!/bin/bash
# This script intends to show variable scope in functions

# Global variable declaration
GLOBALVAR="Globally Visible"

# Function definiton start

# Sample function for function variable scope
funcExample() {
  # local variable to the function
  LOCALVAR="Locally Visible"
  echo "From within the function, the variable is $LOCALVAR"
}

# Function definitions - stopped

# Script start

clear
echo "This step happens first..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (before the function call)"
echo "LOCALVAR variable = $LOCALVAR (before the function call)"
echo ""
echo ""
echo "Calling the function - funcExample()"
echo ""

funcExample

echo ""
echo "The function has been called..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (after the function call)"
echo "LOCALVAR variable = $LOCALVAR (after the function call)"
echo ""
echo "Script end"
