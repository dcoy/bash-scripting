#!/bin/bash
# This script is intended to show the usages of nested functions

# Global Variable
GENDER=$1

# Function definitions - start

# Create a human being
funcHuman() {
  ARMS=2
  LEGS=2

  echo "A human has $ARMS arms and $LEGS legs - but what gender are we?"

  funcMale() {
    BEARD=1

    echo "This man has $ARMS arms and $LEGS legs, with $BEARD beard."
    echo ""
  }

  funcFemale() {
    BEARD=0

    echo "This woman has $ARMS arms and $LEGS legs, with $BEARD beard."
    echo ""
  }
}

# Function definitions - stop

# Script start
clear
echo "Determining the characteristics of the gender $GENDER"
echo ""

if [ "$GENDER" == "male" ]; then
    funcHuman
    funcMale
else
    funcHuman
    funcFemale
fi

