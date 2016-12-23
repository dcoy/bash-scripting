#!/bin/bash
# This script is intended to show how a for-loop works in bash

echo "List all of the shell script contents of the directory"

SHELLSCRIPTS=$(ls *.sh)

for i in "$SHELLSCRIPTS"; do
    DISPLAY="$(cat $i)"
    echo "File: $SCRIPT - Contents: $DISPLAY"
done
