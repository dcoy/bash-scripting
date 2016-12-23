#!/bin/bash
# This script is intended to show how to process a file with delimiters
# IFS = Internal Field Separator

echo "Enter filename to parse: "
read FILENAME

echo "Enter the delimiter: "
read DELIM

IFS=$DELIM

while read -r CPU MEMORY DISK; do
    echo "CPU: $CPU"
    echo "Memory: $MEMORY"
    echo "Disk: $DISK"
done <"$FILENAME"

unset IFS
