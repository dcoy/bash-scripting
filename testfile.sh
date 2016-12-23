#!/bin/bash
# Tests for existence of indicated filename

FILENAME=$1
echo "Testing for the existence of a file called $FILENAME"

if [ -a $FILENAME ]
then
    echo "File $FILENAME does exist."
fi

if [ ! -a $FILENAME ]
then
    echo "File $FILENAME does not exist."
fi

echo ""
# Testing multiple expressions in single if statement
FILENAME2=$2
echo "Testing for file $FILENAME2 and readability."
if [ -f $FILENAME2 ] && [ -r $FILENAME2 ]
then
    echo "File $FILENAME2 exists and is readable."
fi


if [ ! -f $FILENAME2 ]
then
    echo "File $FILENAME2 does not exist."
fi
