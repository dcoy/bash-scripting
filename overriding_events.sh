#!/bin/bash
# This script is intended to show how to override events with bash scripting
# by overriding/trapping the system exit and execute a custom function

# Global variable/default value declaration
TMPFILE="tempfile1.txt"
TMPFILE2="tempfile2.txt"

trap 'funcMyExit' EXIT

# Function declaration -- start
# Run this exit instead of default exit when called
funcMyExit() {
    echo "Exit intercepted..."
    echo "Cleaning up temp files..."
    rm -rf tempfile*.txt
    exit 255
}

# Function declaration -- end

# Script -- start

echo "Write something to tempfile for later use..." > $TMPFILE
echo "Write something to tempfile 2 for later use..." > $TMPFILE2

echo "Trying to copy the indicated file before processing..."
cp -rf $1 newFile.txt 2>/dev/null

if [ "$?" == "0" ]; then
    echo "Everything worked out fine."
else
    echo "Looks like it did not work out as intended."
    exit 1
fi

# Script -- end
