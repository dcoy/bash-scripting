#!/bin/bash
# This script is intended to show the usage of
# implicit and explicit variable definition

# Implicitly declared integer variable
MYVAR=5
echo $MYVAR
echo "$(expr $MYVAR + 5)"

# How to determine 'what' a variable is
declare -p MYVAR # declare -- MYVAR="5"

MYVAR2="Name"
echo $MYVAR2

# Set variable as integer with -i
declare -i NEWVAR=10
echo $NEWVAR

# Declare read-only variable
declare -r READONLY="This is a string we cannot overwrite"
echo $READONLY
READONLY="This is me trying to redeclare the read-only variable"
