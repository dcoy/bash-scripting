#!/bin/bash
# This script intends to show how to organize scripts to use functions


# Global or script variables
CMDLINE=$1

echo "The script has started!"

# # # # # # # # # # # # # # # # #
# Function definitions -- start #
# # # # # # # # # # # # # # # # #

# Displays a message
funcExample() {
  echo "This is an example function."
}

# Display another message
funcExample2(){
  echo "This is another example"
}

# Beginning the script
echo "This is the start..."

funcExample
funcExample2
