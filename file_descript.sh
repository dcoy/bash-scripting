#!/bin/bash
# This script intends to show the usage of assigning descriptors to a file
# for reference -- read/write to file using file descriptor

echo "Enter a filename to read: "
read FILENAME

# '>' denotes 'write', '<' denotes 'read', '<>' denotes 'read/write'
exec 5<>$FILENAME

while read -r FRUIT; do
    echo "Fruit: $FRUIT"
done <&5

echo "This file was read on: $(date) by $USER" >&5

# Close out '5' connections
exec 5>&-
