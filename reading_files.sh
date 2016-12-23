#!/bin/bash
# This script is intended to show the usage of reading files

echo "Enter a filename to read: "
read FILENAME

while read -r FRUIT; do
    echo "Fruit: $FRUIT"
done < "$FILENAME"
