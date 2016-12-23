#!/bin/bash
# Tests for existence of indicated filename

FILENAME="mytext.txt"
echo "Testing for the existence of a file called $FILENAME"

if [ -a $FILENAME ]
then
    echo "File $FILENAME does exist."
fi

