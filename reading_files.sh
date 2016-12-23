#!/bin/bash
# This script is intended to show the usage of reading files

echo "Enter a filename to read: "

#Debugging start
set -x
read FILENAME

while read -r FRUIT; do
    set +x

    echo "Fruit: $FRUIT"

    set -x
done < "$FILENAME"

# Stop debugging
set +x

