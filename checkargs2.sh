#!/bin/bash

# If statement on one line to check CLI arguments passed through
: ${3?"Usage: $1 ARGUMENT $2 ARGUMENT $3 ARGUMENT"}

echo "I got all three!"
